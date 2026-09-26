# 3D School Pro - Course Agent Rules

This file complements the global repository [`AGENTS.md`](../AGENTS.md) with rules specific to the **3D School Pro** course.

## Course Context & Architecture
- **Course Name**: 3D School Pro
- **Target Age Group**: **12-14 years old** (Core fact - tone, technical depth, explanations, and project complexity must be tailored specifically for ages 12-14).
- **Course Modules**: 4 major modules overall:
  1. **3D Design & Engineering** (Module 1)
  2. **Product Design** (Module 2)
  3. **Architect & Urbanism** (Module 3)
  4. **Character Design** (Module 4)
- **Hardware & Software Stack**:
  - **3D Printers**: Bambu Lab A1 (and sometimes A2L or A1 Combo).
  - **Slicing Software**: Bambu Studio.
- **Lesson Duration**: Each lesson is **120 minutes** (2 hours).

## Language Rules & Bilingual Technical Terminology
- **Course Content**: All lesson plans, course concepts, activities, presentations, and quizzes must be created in **Romanian**.
- **Bilingual Terminology in Presentations**: Always provide the standard English term in parentheses whenever introducing technical, specialized, or uncommon 3D printing/CAD terms in presentations (e.g. `curbarea straturilor (warping)`, `duză (nozzle)`, `debit de extrudare (flow rate)`, `retragere filament (retraction)`, `fante de toleranță (clearance fit)`).

## The Mandatory Lesson Bundle
Every lesson directory (`lesson-XX/`) must contain these core files:
1. `README.md`: Complete teacher's master plan (120 min), including the timeline, live demo guide, student workflow, and wrap-up (referencing `quiz.md` for Step 7).
2. `presentation.md`: Slide-by-slide blueprint (8–10 fun, engaging slides) with Canva Master Prompt, speaker notes, image placeholders, and 1 text-only practical briefing slide.
3. `presentation_interactive.md`: Interactive reading slide-by-slide blueprint formatted with 3–4 numbered sentences per slide for students to take turns reading out loud from the screen/board, accompanied by teacher guidance notes and Canva Master Prompt.
4. `presentation_summary.md`: Continuous narrative prompt for autonomous AI slide engines (Gamma, Canva AI, Tome) with strict header directives and pure didactic text without inline image prompts.
5. `quiz.md`: Complete interactive Kahoot quiz file containing 10–15 questions, 4 options (strictly 1–3 words each), balanced answer lengths, and pedagogical explanations.

## Specific Lesson Guidelines
1. **Essential Questions**: Each lesson must have **3 or more essential questions** that define the lesson objectives.
2. **Standard 8-Step Lesson Flow (120 min)**: Unless explicitly specified as an exception, every lesson plan must follow this 8-step timeline:
   1. **Colectarea modelelor din lecția anterioară** (Collect models printed from previous lesson).
   2. **Pregătirea și pornirea imprimării 3D** (Prepare files and start 3D printing for current session).
   3. **Descoperirea noii teme & Vizionarea prezentării** (Discover new topic and view presentation).
   4. **Pauză scurtă & Prezență** (Short break and attendance).
   5. **Demonstrația profesorului** (Teacher demonstrates model creation step-by-step).
   6. **Lucru individual la propriul proiect** (Students work on their 3D project).
   7. **Joc Quiz / Evaluare interactivă** (Interactive quiz game on the topic studied).
   8. **Colectarea obiectelor imprimate & Fotografie de grup** (Collect printed objects and group photo).
3. **Print Workflow**: Almost every lesson results in a 3D printed object. Starting from Lesson 02 onwards, models designed during Lesson $N-1$ are prepared and started on the 3D printer at the beginning of Lesson $N$ (Step 2), print throughout the 120-minute session, and are collected by students at the end of Lesson $N$ (Step 8). Models designed during Lesson $N$ (Step 6) are saved to be printed during Lesson $N+1$.
4. **Rich, Elaborate & Human Style**: The `README.md` for each lesson must be written in a comprehensive, elaborate, essay-like format. Explanations must be warm, deeply informative, human, and engaging, guiding both the instructor and students through the narrative of the 3D domain.
