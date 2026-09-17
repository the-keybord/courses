# Agent Rules & Guidelines

This file contains instructions and guidelines for AI agents working in this repository.

## Repository Overview
- **Purpose**: Repository containing curricula, lesson plans, and course materials designed for kids' courses across various educational domains.

---

## Core Guidelines for Agents

### 1. Target Audience & Content Design
- All curricula and lesson materials in this repository are designed for **kids' courses** across different domains (e.g., programming, science, creative arts, logic, etc.).
- Content, explanations, and instructions must be clear, engaging, structured, and age-appropriate for children.

### 2. Directory Structure & Mandatory 4-File Lesson Bundle
- **Isolated Course Directories**: Each course has its own dedicated directory.
- **Separate Lesson Directories**: Within a course directory, each lesson has its own dedicated folder (e.g., `lesson-00/`, `lesson-01/`, `lesson-02/`).
- **The Mandatory 4-File Bundle**: Every lesson directory must contain exactly these four core files:
  1. `README.md`: Complete teacher's master document (operational timeline, deep narrative theory, step-by-step demo guide, student workflow, and wrap-up; references `quiz.md` for the quiz step).
  2. `presentation.md`: Clearly structured slide-by-slide blueprint (typically 8–12 fun and engaging slides), including Canva AI Master Prompt, slide content, speaker notes, image placeholders for real photos, and a single text-only practical briefing slide.
  3. `presentation_summary.md`: Continuous narrative prompt for autonomous AI presentation engines (Gamma, Canva AI, Tome) with strict header directives upfront, rich continuous narrative text without inline image prompts, and a single practical briefing checklist.
  4. `quiz.md`: Complete interactive Kahoot quiz file containing all questions, 4 options, balanced answer lengths, and pedagogical explanations.

### 3. Course Master File & Single Source of Truth (SSOT)
- **Course Master Hub**: Each course directory contains **one master file** (`README.md`) serving as the course hub (vision, target age, prerequisites, learning objectives, and lesson overviews).
- **Lesson `README.md` as Definitive Source of Truth**:
  - Within each lesson folder, `README.md` is the primary, authoritative master document for that entire lesson.
  - Any manual edits made by the instructor/maintainer in `README.md` represent **official, authoritative changes**.
  - All derivative files (`presentation.md`, `presentation_summary.md`, and `quiz.md`) derive strictly from `README.md` and must be updated to maintain total consistency with it.

### 4. Course & Lesson Identification Codes
- **Standardized Identification System**: Every course and individual lesson uses a precise identifier code across all document titles and metadata.
- **3D School Course Family (`3DS`)**:
  - **Level 1 (`3DS1`)**: `3d-school-junior` (Ages 7–9).
  - **Level 2 (`3DS2`)**: `3d-school-start` (Ages 10–12).
  - **Level 3 (`3DS3`)**: `3d-school-pro` (Ages 12–14).
- **Lesson Code Formula**: `<CourseCode>.<LessonNumber>`
  - Examples for `3d-school-start`: Lesson 00 is `3DS2.0`, Lesson 01 is `3DS2.1`, Lesson 02 is `3DS2.2`, etc.
  - Examples for `3d-school-junior`: Lesson 00 is `3DS1.0`, Lesson 01 is `3DS1.1`, etc.
  - Examples for `3d-school-pro`: Lesson 00 is `3DS3.0`, Lesson 01 is `3DS3.1`, etc.
- **Code Placement**:
  - In the main document title: `# Lecția 00 [3DS2.0]: Titlu Lecție`
  - In Section 1 Metadata: `- **Cod Lecție**: 3DS2.0`
  - In presentation file titles: `# Prezentare: Lecția 00 [3DS2.0] – Titlu Lecție`

### 5. Hardware & Slicing Software Ecosystem (3D School Family)
- **Standard 3D Printers**: Across all 3D School courses (`3d-school-junior`, `3d-school-start`, `3d-school-pro`), classrooms use **Bambu Lab A1** printers, and sometimes **A2L** or **A1 Combo** (with AMS lite).
- **Official Slicing Software**: The slicing software used by instructors for file preparation, slicing, multi-model plate distribution, and print queue management is strictly **Bambu Studio**.
- **CAD Software**: **Tinkercad** (via Tinkercad Classroom) is the primary 3D modeling environment for Junior and Start courses.

### 6. Course-Specific Agent Rules & Module Specifications
- **Hierarchical Inheritance**: Global guidelines are defined here in the root `AGENTS.md`.
- **Course-Level `AGENTS.md`**: Individual course directories contain their own `AGENTS.md` file complementing the global rules with course-specific workflows.
- **Course Modules Specification**:
  - **`3d-school-start`** (`3DS2`): 4 modules — `Laboratorul Creativ`, `Fabrica de jucării`, `Descoperă Orașul`, `Descoperă Natura`.
  - **`3d-school-pro`** (`3DS3`): 4 modules — `3D Design & Engineering`, `Product Design`, `Architect & Urbanism`, `Character Design`.
  - **`3d-school-junior`** (`3DS1`): No modules — each lesson is an independent topic/theme focusing on simple modeling and real-world encyclopedia discoveries.
  - **`robot-factory-evolution`**: Free-relate hands-on format — focused on RF 2.0 hardware rebuild, BLE control transition, sensor integration, team identity, and the Orbit Odyssey challenge.

### 7. Language Guidelines
- **Course Materials**: All student-facing content, lesson plans, presentations, quizzes, worksheets, and teacher scripts must be written in **Romanian**.
- **Agent Communication & Meta**: Agent rules, commit messages, code comments, and chat conversations with the user are conducted in **English**.

### 8. Lesson Content & Writing Style (Storytelling & Essay Format)
- **Elaborate Narrative Style**: All lesson `README.md` files must be written in a rich, elaborate, essay-like narrative format.
- **Deep Explanations & Storytelling**: Avoid sparse summaries or bare bullet points. Explanations must be warm, human, highly detailed, and structured like an engaging story or immersive educational essay tailored to children.
- **Explicit & Comprehensive**: Theoretical concepts, step-by-step teacher guides, and student practical tasks must be explicitly detailed so instructors can deliver the lesson seamlessly.

### 9. Formatting Restrictions: No ASCII Art Diagrams or Pseudo-Tables
- **Strict Prohibition of ASCII Art**: Never generate ASCII art diagrams, ASCII drawings, ASCII circuit schematics, ASCII room layouts, or ASCII pseudo-box tables inside lesson documents.
- **Literal Prose Explanations**: Present all concepts, lesson plans, pedagogical flows, and technical instructions in **literal prose as an essay** and clean descriptive text.

### 10. Mandatory Lesson Document Structure (`README.md` Layout)
Every lesson plan must be structured cleanly and logically without splitting content:
1. **Section 1: General Lesson Information & Essential Questions**:
   - Metadata: **Cod Lecție** (e.g. `3DS2.0`), age group, total duration (120 min), module, practical project, and 3+ essential learning questions.
   - **Resource & Material Links Block**: Reserved strictly for external web links (URLs such as Google Drive slides, Kahoot live game, external documentation); **never** include local workspace files here. Formatted cleanly as:
     ```markdown
     ### 🔗 Resurse & Linkuri Utile
     - **Prezentare**: <URL>
     - **Kahoot**: <URL>
     - **Alte Materiale**: <URL> (optional)
     ```
2. **Section 2: Teacher Preparation Checklist (`Pregătirea Lecției (Checklist Profesor)`)**:
   - Placed directly before the timeline table.
   - Actionable checklist specifying everything that must be set up before students enter the room:
     - **Software & Digital Accounts**: e.g., Tinkercad Classroom created, class code active, student nicknames generated/printed for instant login, presentation and Kahoot tabs opened, Bambu Studio ready.
     - **Hardware & 3D Printers**: e.g., Bambu Lab A1 / A2L / A1 Combo powered on, filaments loaded, print bed clean and leveled, Bambu Studio configured.
     - **Physical Classroom Materials**: e.g., icebreaker mystery items, tactile samples, keyrings, calipers, badges, or attendance sheets.
3. **Section 3: Lesson Plan Minute-by-Minute (Timeline Table)**:
   - Placed after preparation as the master operational roadmap for the 120-minute session.
   - Summarizes time blocks, step numbers, and concise stage descriptions.
4. **Section 4: Explicit & Comprehensive Elaboration of Each Step**:
   - Sequential, essay-like narrative detail for each timeline stage:
     - Icebreaker / model collection.
     - Theoretical narrative and presentation delivery.
     - Step-by-step teacher demonstration with exact software parameters and navigation shortcuts.
     - Student practical workflow.
     - Interactive Kahoot quiz (Step 7) — concise operational instructions, platform link, and explicit reference pointing to `quiz.md` (the full question bank, choices, and explanations reside in `quiz.md`).
     - Wrap-up, clean-up, and group activities.

### 11. Interactive Kahoot Quizzes Standards (`quiz.md`)
- **Dedicated File (`quiz.md`)**: All quiz questions, answer choices, correct markings, and pedagogical explanations must reside in a separate, dedicated `quiz.md` file within each lesson directory. Quizzes are **never** embedded directly in `README.md` (which links/refers to `quiz.md`) or in presentation files (to prevent spoilers).
- **Document Title & Code**: Starts with `# Quiz Kahoot: Lecția XX [<Cod>] – Titlu Lecție`, followed by concise metadata (Cod Lecție, Număr întrebări, Platformă recomandată: Kahoot).
- **Platform & Placement**: Crafted specifically for **Kahoot** (or fast-paced classroom quiz tools), played at the end of class (typically Step 7 of the standard 8-step flow).
- **Direct Alignment with Presentation**: Questions directly test and reinforce the concepts, stories, history, and technologies taught in the presentation and live demo.
- **Question Volume**: Typically **10 to 15 questions** per lesson.
- **Strict 4-Option Structure**: Every question features exactly **4 choices** (`A)`, `B)`, `C)`, `D)`).
- **Answer Correctness (Single vs Multi-Select)**: By default, 1 correct answer. Occasionally and rarely, 2 correct answers (both marked as `*(Corect)*`) to test attentiveness.
- **Style & Tone of Distractors**: Witty, engaging, and plausible. Combine realistic technical distractors with humorous options that keep kids amused.
- **Length Balancing (Anti-Longest Answer Bias)**: **Never make the correct answer the longest choice!** Keep options balanced in length, or make incorrect distractors longer than the correct answer.
- **Pedagogical Explanations**: Followed by a concise explanation block (`> **Explicație**: ...`) for immediate on-screen teacher reinforcement.
- **Exclusion from Presentations & Main README**: Quizzes are strictly omitted from presentation files to prevent spoilers, and kept out of `README.md` to preserve clean lesson flow documentation.

### 12. Presentation Blueprint Specification (`presentation.md`)
- **Role & Scope**: Slide-by-slide blueprint for manually creating or refining a fun, engaging slide deck (typically **8–12 slides**, ~15–20 min presentation time).
- **Theoretical Fidelity**: Preserves 100% of theoretical, historical, and conceptual knowledge from `README.md`.
- **Canva AI Master Prompt Block**: Begins with a copy-paste ready prompt specifying:
  - Format: Educational Presentation (16:9).
  - Target Audience: Age group (e.g., `Copii 10–12 ani`) and tone (friendly, curious, high-tech).
  - Goal & Scope: Core topic, history, technology, and practical mission.
  - Visual Style: Clean, modern, mature color palette (deep blue/slate/teal/amber), structured cards, rounded containers.
  - Image Placeholders: Specifies `[Placeholder Imagine: ...]` for manually adding real photos, screenshots, or diagrams from the web.
- **Strict Theory Focus & Single-Slide Practical Briefing**:
  - Presentations focus strictly on **theory and concepts**.
  - **No multi-slide CAD tutorials**: Never detail step-by-step modeling/slicing across multiple slides (the teacher demonstrates CAD live on screen).
  - Practical work is condensed into **one single slide with NO images**, containing only a concise step-by-step text checklist to orient the instructor.

### 13. Presentation Narrative Summary Specification (`presentation_summary.md`)
- **Role & Scope**: Continuous, unformatted narrative prompt designed for autonomous AI slide engines (Gamma, Canva AI, Tome).
- **Header Directive Block (Upfront)**:
  - **Target Audience & Scope**: Age group (`10–12 ani`) and educational objectives.
  - **Strict Grounding Directive**: AI must use **EXCLUSIVELY** provided text (zero hallucinations).
  - **Strict Step-by-Step Sequence**: AI must follow the chronological narrative order without shuffling or skipping.
  - **Visual & Image Requirements**:
    - Presentations **must contain images**: recommended to use an image to visualize each major theoretical concept.
    - Style must be strictly **abstract only** (clean 2D animation, flat vector, or light watercolor; never photorealistic or 3D slop).
    - Mature, balanced color palette (deep slate, navy blue, teal, warm amber).
    - Practical CAD work must be a single text briefing card with **NO images**.
- **Body Content (Continuous Narrative)**:
  - Rich, uninterrupted essay text covering all theoretical dialogue and teacher context.
  - Practical CAD portion is a single, concise checklist paragraph without image suggestions.
  - **No Inline Image Prompts**: Do NOT embed inline image suggestions (`*(Sugestie pentru imagine...)*`) inside the narrative paragraphs; all styling instructions reside solely in the header block.
  - Free from slide dividers, schedule tables, or Kahoot quizzes.

---

## Additional Rules
*(Future rules will be appended here as specified by the repository maintainer.)*

