# Agent Rules & Guidelines

This file contains instructions and guidelines for AI agents working in this repository.

## Repository Overview
- **Purpose**: Repository containing curricula, lesson plans, and course materials designed for kids' courses across various educational domains.

## Core Guidelines for Agents

### 1. Target Audience & Content Design
- All curricula and lesson materials in this repository are designed for **kids' courses** across different domains (e.g., programming, science, creative arts, logic, etc.).
- Content, explanations, and instructions must be clear, engaging, structured, and age-appropriate for children.

### 2. Directory Structure & Organization
- **Isolated Course Directories**: Each course must have its own dedicated directory.
- **Separate Lesson Directories**: Within a course directory, **each lesson must have its own separate directory** (e.g., `lesson-01/`, `lesson-02/`).
- **Lesson-Specific Assets**: The complete lesson plan, presentations, quizzes, worksheets, activities, and supporting code snippets/files for a lesson must be stored within that lesson's dedicated directory.

### 3. Course Master File
- **Single Source of Truth**: Each course directory must contain **one master file** (e.g., `README.md` or `master.md`) serving as the main course hub.
- **Course Concept**: The master file must outline the overall course vision, target age group, prerequisites, and learning objectives.
- **Lesson Overviews**: The master file must include a concise summary / short description of every lesson in the course.
- **Lesson Links**: The master file must feature clear markdown links pointing to each lesson's directory and main lesson plan file.

### 4. Course-Specific Agent Rules & Module Specifications
- **Hierarchical Inheritance**: Global guidelines are defined here in the root `AGENTS.md`.
- **Course-Level `AGENTS.md`**: Individual course directories contain their own `AGENTS.md` file. These local rule files complement (rather than overwrite) the global rules, providing specific context and detailed workflows.
- **Course Modules Specification**:
  - **`3d-school-start`**: 4 modules — `Laboratorul Creativ`, `Fabrica de jucării`, `Descoperă Orașul`, `Descoperă Natura`.
  - **`3d-school-pro`**: 4 modules — `3D Design & Engineering`, `Product Design`, `Architect & Urbanism`, `Character Design`.
  - **`3d-school-junior`**: No modules — each lesson is an independent topic/theme focusing on simple modeling and real-world encyclopedia discoveries.
  - **`robot-factory-evolution`**: Free-relate hands-on format — focused on RF 2.0 hardware rebuild, BLE control transition, sensor integration, team identity, and the Orbit Odyssey challenge.

### 5. Language Guidelines
- **Course Materials**: All course content, lesson plans, presentations, quizzes, worksheets, activities, and student explanations must be written in **Romanian**.
- **Agent Communication & Meta**: Agent rules, commit messages, code comments (where applicable), and chat conversations with the user are conducted in **English**.

### 6. Lesson Content & Writing Style (Storytelling & Essay Format)
- **Elaborate Narrative Style**: All lesson `README.md` files must be written in a rich, elaborate, essay-like narrative format.
- **Deep Explanations & Storytelling**: Avoid brief bullet points or sparse summaries for lesson content. Explanations must be warm, human, highly detailed, and structured like an engaging story or immersive educational essay tailored to the course's target age group.
- **Explicit & Comprehensive**: Theoretical concepts, step-by-step teacher guides, and student practical tasks must be explicitly detailed so instructors can deliver the lesson seamlessly.

### 7. Formatting Restrictions: No ASCII Art Diagrams or Pseudo-Tables
- **Strict Prohibition of ASCII Art**: Never generate ASCII art diagrams, ASCII drawings, ASCII circuit schematics, ASCII room layouts, or ASCII pseudo-box tables inside lesson `README.md` documents.
- **Literal Essay Explanations**: Present all concepts, lesson plans, pedagogical flows, circuit architectures, and mechanical instructions in **literal prose as an essay** and clean descriptive text. Deep explanations must be written out in clear, literal, and articulate paragraphs rather than visual text diagrams.

### 8. Mandatory Lesson Document Structure (`README.md` Layout)
Every lesson plan must be structured cleanly and logically without splitting content. The timeline must appear upfront as an executive overview rather than being dropped in the middle of theoretical content:
1. **Section 1: General Lesson Information & Essential Questions**:
   - Metadata: age group, total duration (120 min), module, practical project, and 3+ essential learning questions.
2. **Section 2: Lesson Plan Minute-by-Minute (Timeline Table)**:
   - Placed directly after general information as the master roadmap for the entire 120-minute session.
   - Summarizes time blocks, step numbers, and concise stage descriptions.
3. **Section 3: Explicit & Comprehensive Elaboration of Each Step**:
   - Each phase from the timeline must be explained in full, sequential, essay-like narrative detail:
     - Detailed pedagogical script and background theory.
     - Step-by-step teacher demonstration with exact parameters and navigation commands.
     - Student practical workflow.
     - Interactive quizzes and evaluation tools.
     - Wrap-up, clean-up, and group activities.

### 9. Interactive Kahoot Quizzes Standards
- **Platform Alignment**: All course quizzes must be crafted specifically for **Kahoot** (or fast-paced classroom quiz tools).
- **Strict 4-Option Structure**: Every question must feature exactly **4 answer choices** (labeled `A)`, `B)`, `C)`, `D)`).
- **Answer Correctness (Single vs Multi-Select)**: By default, each question has **1 correct answer**. Occasionally and rarely, a question may have **2 correct answers** (both marked as `*(Corect)*`) to test attentiveness.
- **Style & Tone of Distractors**: Answer choices should be varied, witty, and engaging:
  - Incorporate plausible technical distractors alongside occasionally funny or humorous options that keep kids amused.
- **Length Balancing (No "Longest Answer" Bias)**: **Never make the correct answer the longest choice!** Avoid obvious giveaways where the right answer is excessively detailed while wrong ones are short. Keep all options balanced in length, or make incorrect distractors longer than the correct answer.
- **Pedagogical Explanations**: Every question must be followed by a concise explanation block (`> **Explicație**: ...`) providing immediate feedback and reinforcement for the instructor to review on screen.

---

## Additional Rules
*(Future rules will be appended here as specified by the repository maintainer.)*
