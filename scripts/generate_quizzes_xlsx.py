import os
import re
import zipfile
import xml.sax.saxutils as saxutils

def escape(text):
    return saxutils.escape(str(text))

def build_xlsx(file_path, questions):
    """
    Writes a valid Kahoot spreadsheet .xlsx ready for direct import.
    """
    os.makedirs(os.path.dirname(os.path.abspath(file_path)), exist_ok=True)
    
    content_types = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>
  <Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>
  <Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>
</Types>"""

    package_rels = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>
</Relationships>"""

    workbook_rels = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/>
  <Relationship Id="rId2" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
</Relationships>"""

    workbook = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <sheets>
    <sheet name="Kahoot" sheetId="1" r:id="rId1"/>
  </sheets>
</workbook>"""

    styles = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
</styleSheet>"""

    headers = [
        "Question",
        "Answer 1",
        "Answer 2",
        "Answer 3",
        "Answer 4",
        "Time limit (sec)",
        "Correct answer(s)"
    ]
    col_letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    
    rows_xml = []
    header_cells = "".join(f'<c r="{col_letters[i]}1" t="inlineStr"><is><t>{escape(headers[i])}</t></is></c>' for i in range(len(headers)))
    rows_xml.append(f'<row r="1">{header_cells}</row>')
    
    for r_idx, q in enumerate(questions, start=2):
        row_cells = []
        # Question (max 120 chars)
        q_text = q["question"][:120]
        row_cells.append(f'<c r="A{r_idx}" t="inlineStr"><is><t>{escape(q_text)}</t></is></c>')
        
        # Answers 1-4 (max 75 chars)
        for a_idx in range(4):
            ans = q["answers"][a_idx][:75] if a_idx < len(q["answers"]) else ""
            row_cells.append(f'<c r="{col_letters[a_idx+1]}{r_idx}" t="inlineStr"><is><t>{escape(ans)}</t></is></c>')
            
        time_lim = int(q.get("time_limit", 20))
        row_cells.append(f'<c r="F{r_idx}"><v>{time_lim}</v></c>')
        
        correct_val = str(q.get("correct", "1"))
        row_cells.append(f'<c r="G{r_idx}" t="inlineStr"><is><t>{escape(correct_val)}</t></is></c>')
        
        rows_xml.append(f'<row r="{r_idx}">{"".join(row_cells)}</row>')
        
    worksheet = f"""<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <sheetData>
    {"".join(rows_xml)}
  </sheetData>
</worksheet>"""

    with zipfile.ZipFile(file_path, 'w', compression=zipfile.ZIP_DEFLATED) as z:
        z.writestr('[Content_Types].xml', content_types)
        z.writestr('_rels/.rels', package_rels)
        z.writestr('xl/_rels/workbook.xml.rels', workbook_rels)
        z.writestr('xl/workbook.xml', workbook)
        z.writestr('xl/styles.xml', styles)
        z.writestr('xl/worksheets/sheet1.xml', worksheet)

def parse_quiz_md(content):
    """
    Parses standard quiz.md format
    """
    questions = []
    blocks = re.split(r'\n#{3,4}\s+Întrebarea\s+\d+[:\s]*', content)
    for block in blocks[1:]:
        lines = [line.strip() for line in block.split('\n') if line.strip()]
        if not lines:
            continue
            
        answers = []
        correct_indices = []
        
        idx = 0
        q_parts = []
        while idx < len(lines):
            line = lines[idx]
            if re.match(r'^[-*]\s*([A-D]\)|\[[ xX]\])', line) or re.match(r'^[A-D]\)', line):
                break
            cleaned = re.sub(r'^\*+|\*+$', '', line).strip()
            if cleaned and not cleaned.startswith('>'):
                q_parts.append(cleaned)
            idx += 1
            
        q_text = " ".join(q_parts)
        q_text = re.sub(r'\*\*(.*?)\*\*', r'\1', q_text).strip()
        
        while idx < len(lines):
            line = lines[idx]
            if line.startswith('>') or line.startswith('---'):
                break
            
            m_correct_tag = False
            if '*(Corect)*' in line or '*(corect)*' in line or '[x]' in line.lower():
                m_correct_tag = True
                
            clean_opt = re.sub(r'^\s*[-*]\s*(\[[ xX]\]\s*)?', '', line)
            clean_opt = re.sub(r'^[A-D]\)\s*', '', clean_opt)
            clean_opt = re.sub(r'\s*\*\([Cc]orect\)\*', '', clean_opt)
            clean_opt = re.sub(r'^\*+|\*+$', '', clean_opt).strip()
            
            if clean_opt:
                answers.append(clean_opt)
                if m_correct_tag:
                    correct_indices.append(str(len(answers)))
            idx += 1
            
        if q_text and len(answers) >= 2:
            while len(answers) < 4:
                answers.append("")
            correct_str = ", ".join(correct_indices) if correct_indices else "1"
            questions.append({
                "question": q_text,
                "answers": answers[:4],
                "time_limit": 20,
                "correct": correct_str
            })
            
    return questions

def parse_readme_quiz(content):
    """
    Parses quiz from Section 5 in databases README.md
    """
    sec5_match = re.search(r'##\s*5\.\s*Mini-Quiz.*?\n(.*)', content, re.DOTALL)
    if not sec5_match:
        return []
    sec5_text = sec5_match.group(1)
    return parse_quiz_md(sec5_text)

def generate_all_quizzes(root_dir=None):
    if not root_dir:
        root_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        
    generated = []
    
    for root, dirs, files in os.walk(root_dir):
        if '.git' in root:
            continue
            
        if 'quiz.md' in files:
            md_path = os.path.join(root, 'quiz.md')
            xlsx_path = os.path.join(root, 'quiz.xlsx')
            try:
                with open(md_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                questions = parse_quiz_md(content)
                if questions:
                    build_xlsx(xlsx_path, questions)
                    generated.append((xlsx_path, len(questions)))
            except Exception as e:
                print(f"ERROR on {md_path}: {e}")
                
        elif 'databases' in root and 'README.md' in files and re.search(r'lesson-\d+', root):
            md_path = os.path.join(root, 'README.md')
            xlsx_path = os.path.join(root, 'quiz.xlsx')
            try:
                with open(md_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                if '## 5. Mini-Quiz' in content:
                    questions = parse_readme_quiz(content)
                    if questions:
                        build_xlsx(xlsx_path, questions)
                        generated.append((xlsx_path, len(questions)))
            except Exception as e:
                print(f"ERROR on {md_path}: {e}")
                
    return generated

if __name__ == '__main__':
    results = generate_all_quizzes()
    print(f"Successfully generated {len(results)} Kahoot spreadsheet files.")
