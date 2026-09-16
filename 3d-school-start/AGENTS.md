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
- **Lesson Duration**: Each lesson is **120 minutes** (2 hours).

## Language Rules
- **Course Content**: All lesson plans, course concepts, activities, presentations, and quizzes must be created in **Romanian**.

## Specific Lesson Guidelines & Workflow
1. **The Mandatory 3-File Lesson Bundle**: Every lesson directory (`lesson-XX/`) must contain:
   - `README.md`: Complete teacher's master plan (120 min), including the timeline, live demo guide, student workflow, and the Kahoot quiz.
   - `presentation.md`: Slide-by-slide blueprint (8–12 fun, engaging slides) with Canva Master Prompt, speaker notes, image placeholders, and 1 text-only practical briefing slide.
   - `presentation_summary.md`: Continuous narrative prompt for AI slide generators with header directives and pure didactic text without inline image prompts.
2. **Essential Questions**: Each lesson must have **3 or more essential questions** defining the session's core objectives.
3. **Standard 8-Step Lesson Flow (120 min)**: Unless explicitly specified as an exception, every lesson follows this roadmap:
   1. **Colectarea modelelor din lecția anterioară** (Collect models printed from previous lesson).
   2. **Pregătirea și pornirea imprimării 3D** (Prepare files and start 3D printing for current session).
   3. **Descoperirea noii teme & Vizionarea prezentării** (Discover new topic and view presentation, 15–20 min).
   4. **Pauză scurtă & Prezență** (Short break and attendance).
   5. **Demonstrația profesorului** (Teacher demonstrates model creation live in Tinkercad).
   6. **Lucru individual la propriul proiect** (Students model their 3D project).
   7. **Joc Quiz Kahoot / Evaluare interactivă** (10–15 engaging questions testing presentation concepts).
   8. **Colectarea obiectelor imprimate & Fotografie de grup** (Collect printed objects and group photo).
4. **Print Workflow**: Starting from Lesson 02 onwards, models designed in Lesson $N-1$ are printed during Lesson $N$ (Step 2) and collected at Step 8. Models designed in Lesson $N$ (Step 6) are queued for Lesson $N+1$.
5. **Rich Narrative & Essay Format**: All lesson `README.md` files must be written in a warm, detailed, essay-like format without bare bullet points or ASCII art.
6. **Mandatory 3-Part Layout for `README.md`**:
   1. *General Info*: Metadata (including `- **Cod Lecție**: 3DS2.<N>`), 3+ essential questions, and clean bulleted *Resurse & Linkuri Utile*:
      ```markdown
      ### 🔗 Resurse & Linkuri Utile
      - **Prezentare**: <URL>
      - **Kahoot**: <URL>
      ```
   2. *Minute-by-Minute Table*: 120-minute operational roadmap upfront.
   3. *Explicit Step-by-Step Elaboration*: Sequential deep pedagogical script, live demo commands, practical tasks, Kahoot quiz, and wrap-up.
7. **Interactive Kahoot Quiz Standards (Step 7)**:
   - 10 to 15 questions, exactly 4 answer options (`A, B, C, D`), witty distractors, balanced text lengths (correct answer never longest), immediate pedagogical explanation for each question.
8. **Presentation Rules (`presentation.md` & `presentation_summary.md`)**:
   - Strictly theoretical & conceptual. Never contains multi-slide CAD tutorials.
   - Practical work is condensed into **one single slide/card with NO images**, containing only a concise text checklist for teacher orientation.
   - For AI generators (`presentation_summary.md`), images are required for theoretical concepts, in abstract style only (2D cartoon / flat vector / watercolor), with a mature color palette. No inline image advice in the text.








