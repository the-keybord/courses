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

### 4. Course-Specific Agent Rules
- **Hierarchical Inheritance**: Global guidelines are defined here in the root `AGENTS.md`.
- **Course-Level `AGENTS.md`**: Individual course directories can contain their own `AGENTS.md` file. These local rule files complement (rather than overwrite) the global rules, providing specific context (e.g., target programming languages, tools used, or age group nuances specific to that course).

### 5. Language Guidelines
- **Course Materials**: All course content, lesson plans, presentations, quizzes, worksheets, activities, and student explanations must be written in **Romanian**.
- **Agent Communication & Meta**: Agent rules, commit messages, code comments (where applicable), and chat conversations with the user are conducted in **English**.

### 6. Lesson Content & Writing Style (Storytelling & Essay Format)
- **Elaborate Narrative Style**: All lesson `README.md` files must be written in a rich, elaborate, essay-like narrative format.
- **Deep Explanations & Storytelling**: Avoid brief bullet points or sparse summaries for lesson content. Explanations must be warm, human, highly detailed, and structured like an engaging story or immersive educational essay tailored to the course's target age group.
- **Explicit & Comprehensive**: Theoretical concepts, step-by-step teacher guides, and student practical tasks must be explicitly detailed so instructors can deliver the lesson seamlessly.

---

## Additional Rules
*(Future rules will be appended here as specified by the repository maintainer.)*
