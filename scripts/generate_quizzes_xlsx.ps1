Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

function Escape-Xml([string]$text) {
    if ([string]::IsNullOrEmpty($text)) { return "" }
    return [System.Security.SecurityElement]::Escape($text)
}

function Build-KahootXlsx([string]$filePath, [array]$questions) {
    $parentDir = Split-Path -Parent $filePath
    if (-not (Test-Path $parentDir)) {
        New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
    }
    if (Test-Path $filePath) {
        Remove-Item $filePath -Force
    }

    $contentTypes = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>
  <Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>
  <Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>
</Types>
'@

    $packageRels = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>
</Relationships>
'@

    $workbookRels = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/>
  <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
</Relationships>
'@

    $workbook = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <sheets>
    <sheet name="Kahoot" sheetId="1" r:id="rId1"/>
  </sheets>
</workbook>
'@

    $styles = @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <fonts count="1">
    <font><name val="Calibri"/><sz val="11"/></font>
  </fonts>
  <fills count="2">
    <fill><patternFill patternType="none"/></fill>
    <fill><patternFill patternType="gray125"/></fill>
  </fills>
  <borders count="1">
    <border><left/><right/><top/><bottom/><diagonal/></border>
  </borders>
  <cellStyleXfs count="1">
    <xf numFmtId="0" fontId="0" fillId="0" borderId="0"/>
  </cellStyleXfs>
  <cellXfs count="1">
    <xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0"/>
  </cellXfs>
</styleSheet>
'@

    $headers = @("Question", "Answer 1", "Answer 2", "Answer 3", "Answer 4", "Time limit (sec)", "Correct answer(s)")
    $colLetters = @('A', 'B', 'C', 'D', 'E', 'F', 'G')

    $rowsXml = [System.Collections.Generic.List[string]]::new()
    $headerCells = ""
    for ($i = 0; $i -lt $headers.Count; $i++) {
        $cellVal = Escape-Xml $headers[$i]
        $headerCells += "<c r=""$($colLetters[$i])1"" t=""inlineStr""><is><t>$cellVal</t></is></c>"
    }
    $rowsXml.Add("<row r=""1"">$headerCells</row>")

    $rIdx = 2
    foreach ($q in $questions) {
        $rowCells = ""
        # Question (max 120 chars)
        $qText = $q.question
        if ($qText.Length -gt 120) { $qText = $qText.Substring(0, 120) }
        $qEscaped = Escape-Xml $qText
        $rowCells += "<c r=""A$rIdx"" t=""inlineStr""><is><t>$qEscaped</t></is></c>"

        # Answers 1-4 (max 75 chars)
        for ($aIdx = 0; $aIdx -lt 4; $aIdx++) {
            $ans = if ($aIdx -lt $q.answers.Count) { $q.answers[$aIdx] } else { "" }
            if ($ans.Length -gt 75) { $ans = $ans.Substring(0, 75) }
            $ansEscaped = Escape-Xml $ans
            $colL = $colLetters[$aIdx + 1]
            $rowCells += "<c r=""$colL$rIdx"" t=""inlineStr""><is><t>$ansEscaped</t></is></c>"
        }

        # Time limit
        $tLim = if ($q.time_limit) { $q.time_limit } else { 20 }
        $rowCells += "<c r=""F$rIdx""><v>$tLim</v></c>"

        # Correct answer(s)
        $cVal = Escape-Xml $q.correct
        $rowCells += "<c r=""G$rIdx"" t=""inlineStr""><is><t>$cVal</t></is></c>"

        $rowsXml.Add("<row r=""$rIdx"">$rowCells</row>")
        $rIdx++
    }

    $allRows = $rowsXml -join ""
    $worksheet = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <sheetData>
    $allRows
  </sheetData>
</worksheet>
"@

    $fileStream = [System.IO.File]::Create($filePath)
    $zipArchive = [System.IO.Compression.ZipArchive]::new($fileStream, [System.IO.Compression.ZipArchiveMode]::Create)

    $entries = @{
        "[Content_Types].xml" = $contentTypes
        "_rels/.rels" = $packageRels
        "xl/_rels/workbook.xml.rels" = $workbookRels
        "xl/workbook.xml" = $workbook
        "xl/styles.xml" = $styles
        "xl/worksheets/sheet1.xml" = $worksheet
    }

    foreach ($entryName in $entries.Keys) {
        $entry = $zipArchive.CreateEntry($entryName, [System.IO.Compression.CompressionLevel]::Optimal)
        $entryStream = $entry.Open()
        $writer = [System.IO.StreamWriter]::new($entryStream, [System.Text.Encoding]::UTF8)
        $writer.Write($entries[$entryName])
        $writer.Flush()
        $writer.Dispose()
        $entryStream.Dispose()
    }

    $zipArchive.Dispose()
    $fileStream.Dispose()
}

function Parse-QuizMd([string]$content) {
    $questions = [System.Collections.Generic.List[PSObject]]::new()
    $blocks = $content -split '(?m)^#{3,4}\s+Întrebarea\s+\d+[:\s]*'

    for ($b = 1; $b -lt $blocks.Count; $b++) {
        $block = $blocks[$b]
        $lines = ($block -split '\r?\n') | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne "" }
        if ($lines.Count -eq 0) { continue }

        $answers = [System.Collections.Generic.List[string]]::new()
        $correctIndices = [System.Collections.Generic.List[string]]::new()

        $idx = 0
        $qParts = [System.Collections.Generic.List[string]]::new()
        while ($idx -lt $lines.Count) {
            $line = $lines[$idx]
            if ($line -match '^[-*]\s*([A-D]\)|\[[ xX]\])' -or $line -match '^[A-D]\)') {
                break
            }
            $cleaned = $line -replace '^\*+|\*+$', ''
            $cleaned = $cleaned.Trim()
            if ($cleaned -and -not $cleaned.StartsWith('>')) {
                $qParts.Add($cleaned)
            }
            $idx++
        }

        $qText = ($qParts -join " ") -replace '\*\*(.*?)\*\*', '$1'
        $qText = $qText.Trim()

        while ($idx -lt $lines.Count) {
            $line = $lines[$idx]
            if ($line.StartsWith('>') -or $line.StartsWith('---')) {
                break
            }

            $isCorrect = $false
            if ($line -match '\*\([Cc]orect\)\*' -or $line -match '\[[xX]\]') {
                $isCorrect = $true
            }

            $cleanOpt = $line -replace '^\s*[-*]\s*(\[[ xX]\]\s*)?', ''
            $cleanOpt = $cleanOpt -replace '^[A-D]\)\s*', ''
            $cleanOpt = $cleanOpt -replace '\s*\*\([Cc]orect\)\*', ''
            $cleanOpt = $cleanOpt -replace '^\*+|\*+$', ''
            $cleanOpt = $cleanOpt.Trim()

            if ($cleanOpt) {
                $answers.Add($cleanOpt)
                if ($isCorrect) {
                    $correctIndices.Add([string]$answers.Count)
                }
            }
            $idx++
        }

        if ($qText -and $answers.Count -ge 2) {
            while ($answers.Count -lt 4) {
                $answers.Add("")
            }
            $correctStr = if ($correctIndices.Count -gt 0) { $correctIndices -join ", " } else { "1" }
            $questions.Add([PSCustomObject]@{
                question = $qText
                answers = $answers
                time_limit = 20
                correct = $correctStr
            })
        }
    }
    return $questions
}

function Parse-ReadmeQuiz([string]$content) {
    if ($content -match '(?s)##\s*5\.\s*Mini-Quiz.*?\n(.*)') {
        return Parse-QuizMd $matches[1]
    }
    return @()
}

$rootDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$targetPaths = @(
    "robot-factory-creation\lesson-11",
    "robot-factory-evolution\lesson-11",
    "databases\lesson-09"
)

foreach ($rel in $targetPaths) {
    $fullDir = Join-Path $rootDir $rel
    $quizMd = Join-Path $fullDir "quiz.md"
    $readmeMd = Join-Path $fullDir "README.md"
    $quizXlsx = Join-Path $fullDir "quiz.xlsx"

    if (Test-Path $quizMd) {
        $content = Get-Content $quizMd -Raw -Encoding UTF8
        $questions = Parse-QuizMd $content
        if ($questions.Count -gt 0) {
            Build-KahootXlsx $quizXlsx $questions
            Write-Host "Generated $quizXlsx with $($questions.Count) questions from quiz.md"
        }
    } elseif (Test-Path $readmeMd) {
        $content = Get-Content $readmeMd -Raw -Encoding UTF8
        $questions = Parse-ReadmeQuiz $content
        if ($questions.Count -gt 0) {
            Build-KahootXlsx $quizXlsx $questions
            Write-Host "Generated $quizXlsx with $($questions.Count) questions from README.md Section 5"
        }
    }
}
