# 3D School Start - Course Agent Rules

This file complements the global repository [`AGENTS.md`](../AGENTS.md) with rules specific to the **3D School Start** course.

## Course Context & Architecture
- **Course Name**: 3D School Start
- **Course Code**: **3DS2** (3D School Level 2 – Start)
- **Lesson Code Format**: **`3DS2.<N>`** (e.g. Lesson 00 is **`3DS2.0`**, Lesson 01 is **`3DS2.1`**, Lesson 02 is **`3DS2.2`**).
- **Target Age Group**: **10-12 years old** (Core fact - tone, explanations, and project complexity must be tailored specifically for ages 10-12).
- **Course Modules**: 4 major modules overall:
  1. **Laboratorul Creativ** (Module 1)
  2. **Fabrica de jucării** (Module 2)
  3. **Descoperă Orașul** (Module 3)
  4. **Descoperă Natura** (Module 4)
- **Hardware & Software Stack**:
  - **3D Printers**: Bambu Lab A1 (and sometimes A2L or A1 Combo).
  - **Slicing Software**: Bambu Studio (for plate layout, layer calibration, and sending print jobs).
  - **3D Modeling Software**: Tinkercad Classroom.
- **Lesson Duration**: Each lesson is **120 minutes** (2 hours).

## Language Rules
- **Course Content**: All lesson plans, course concepts, activities, presentations, and quizzes must be created in **Romanian**.

## Specific Lesson Guidelines & Workflow
1. **The Mandatory 4-File Lesson Bundle**: Every lesson directory (`lesson-XX/`) must contain:
   - `README.md`: Complete teacher's master plan (120 min), including the timeline, live demo guide, student workflow, and wrap-up (referencing `quiz.md` for Step 7).
   - `presentation.md`: Slide-by-slide blueprint (8–12 fun, engaging slides) with Canva Master Prompt, speaker notes, image placeholders, and 1 text-only practical briefing slide.
   - `presentation_summary.md`: Continuous narrative prompt for AI slide generators with header directives and pure didactic text without inline image prompts.
   - `quiz.md`: Complete interactive Kahoot quiz file containing 10–15 questions, 4 options, balanced answer lengths, and pedagogical explanations.
2. **Essential Questions**: Each lesson must have **3 or more essential questions** defining the session's core objectives.
3. **Standard 8-Step Lesson Flow (120 min)**: Unless explicitly specified as an exception, every lesson follows this roadmap:
   1. **Colectarea modelelor din lecția anterioară** (Collect models printed from previous lesson).
   2. **Pregătirea și pornirea imprimării 3D** (Prepare files and start 3D printing for current session).
   3. **Descoperirea noii teme & Vizionarea prezentării** (Discover new topic and view presentation, 15–20 min).
   4. **Pauză scurtă & Prezență** (Short break and attendance).
   5. **Demonstrația profesorului** (Teacher demonstrates model creation live in Tinkercad).
   6. **Lucru individual la propriul proiect** (Students model their 3D project).
   7. **Joc Quiz Kahoot / Evaluare interactivă** (10–15 engaging questions testing presentation concepts; detailed in `quiz.md`).
   8. **Colectarea obiectelor imprimate & Fotografie de grup** (Collect printed objects and group photo).
4. **Print Workflow**: Starting from Lesson 02 onwards, models designed in Lesson $N-1$ are printed during Lesson $N$ (Step 2) and collected at Step 8. Models designed in Lesson $N$ (Step 6) are queued for Lesson $N+1$.
5. **Clear, Practical & Age-Appropriate Style**: All lesson `README.md` files must be written in a clear, accessible, and structured instructional format. Strictly avoid overly artistic language, literary metaphors, and excessive epithets. Keep explanations concrete, engaging, and directly comprehensible for 10–12 year olds without exaggeration.
6. **Mandatory 4-Part Layout for `README.md`**:
   1. *General Info*: Metadata (including `- **Cod Lecție**: 3DS2.<N>`), 3+ essential questions, and clean bulleted *Resurse & Linkuri Utile* (strictly for external URLs, never local `file:///...` links):
      ```markdown
      ### 🔗 Resurse & Linkuri Utile
      - **Prezentare**: <URL>
      - **Kahoot**: <URL>
      ```
   2. *Teacher Preparation Checklist (`Pregătirea Lecției (Checklist Profesor)`)*: Detailed operational prep before class (Tinkercad Classroom class code, student nicknames generated, 3D printers pre-heated/calibrated, filament loaded, icebreaker props & materials ready).
   3. *Minute-by-Minute Table*: 120-minute operational roadmap upfront.
   4. *Explicit Step-by-Step Elaboration*: Sequential deep pedagogical script, live demo commands, practical tasks, Kahoot quiz briefing (referencing `quiz.md`), and wrap-up.
7. **Interactive Kahoot Quiz Standards (`quiz.md`)**:
   - Resides in a dedicated `quiz.md` file (never embedded inline in `README.md` or `presentation.md`).
   - 10 to 15 questions, exactly 4 answer options (`A, B, C, D`), balanced lengths, immediate pedagogical explanation for each question.
   - **Ultra-Short Answers (Max 1–3 Words)**: Each answer option must contain **strictly up to 1–3 words** for rapid reading during fast Kahoot rounds.
   - **100% Pure Theoretical Focus**: Strictly tests theoretical concepts from the presentation (zero questions about the practical CAD project).
8. **Presentation Rules (`presentation.md`, `presentation_interactive.md`, `presentation_summary.md`)**:
   - Strictly 100% theoretical & conceptual (history, mechanics, physics, materials, safety).
   - **Zero Practical Project Content**: Never include practical modeling steps, project instructions, or project checklists in presentations. The practical project workflow belongs strictly in `README.md`.
   - For AI generators (`presentation_summary.md`), narrative text covers pure theory with abstract style visuals (2D cartoon / flat vector) and a mature color palette.
   - For interactive lecture (`presentation_interactive.md`), format with 3–4 numbered sentences per slide for students to read out loud.
9. **Risks Files Policy (`risks.md`)**:
   - Risk analysis and pre-mortem documents are strictly for **human review and analysis**.
   - Agents must never automatically apply tweaks or modify lesson bundle documents based on `risks.md`; all adjustments are made at the sole discretion of the author.








