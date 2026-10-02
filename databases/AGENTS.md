# Databases Course - Agent Rules & Guidelines

This file complements the global repository [`AGENTS.md`](../AGENTS.md) with strict rules and standards for the **Databases** (Certiport ITS Preparation) course.

---

## 1. Course Architecture & Context

- **Course Name**: Databases (Certiport Examination Preparation)
- **Course Code**: **DB1**
- **Lesson Code Format**: **`DB1.<N>`** (e.g., Lesson 01 is **`DB1.1`**, Lesson 02 is **`DB1.2`**, etc.)
- **Target Audience**: **15–18 years old** (High school students, college prep, and candidates for professional technical certification).
- **Scope & Standard**: Aligned strictly with the **Certiport Information Technology Specialist (ITS): Databases** certification exam objectives.
- **SQL Dialect**: **Strictly T-SQL (Transact-SQL / Microsoft SQL Server)**. Never use MySQL, SQLite, or PostgreSQL-specific syntax.
- **Practice Environment**: **OneCompiler** (T-SQL / SQL Server online compiler) for instant, synchronous execution without local database server setup.
  - *Execution Rule*: OneCompiler executes each script from a clean in-memory state on every run; **do NOT include `DROP TABLE` statements** in lesson code blocks.
- **Lesson Duration**: **120 minutes** (2 hours) per lesson.
- **Pedagogical Methodology**: Synchronous teacher-led progression. Students follow the instructor live, writing, analyzing, and executing practical T-SQL queries step-by-step.

---

## 2. Tone, Style & Pedagogical Rigor (Strict Requirements)

- **Target Audience Calibration (15–18 Years Old)**:
  - Students are young adults preparing for an industry-recognized technical certification.
  - **Strictly No Childish, Humorous, or Playful Language**: Avoid playful metaphors, cartoonish analogies, emojis in technical prose, jokes, or informal slang.
  - **Serious, Academic & Professional Engineering Tone**: Treat the subject with formal technical accuracy. Use proper mathematical, relational, and database engineering terminology (e.g., *relații, tuple, cardinalitate, integritate referențială, atomicitate, normalizare, dependențe funcționale și tranzitive, planuri de execuție, constrângeri*).
- **Teacher-Oriented Instructional Design**:
  - The guide must be structured so that the instructor can immediately understand the pedagogical objectives, the theoretical foundation, and the exact sequence of live coding demonstrations.
  - Explanations must clearly state *why* a particular relational design is chosen, *what* pitfalls beginner developers face, and *how* the concept directly maps to the Certiport examination syllabus.

---

## 3. Single-File Lesson Policy (Only `README.md`)

Unlike younger kids' courses in the repository, this course uses a streamlined, single-source-of-truth structure:
- **No Derivative Files**: Do **NOT** generate `presentation.md`, `presentation_interactive.md`, `presentation_summary.md`, or `risks.md`.
- **Sole Master Document**: Each lesson folder (`lesson-01/`, `lesson-02/`, etc.) contains **ONLY one file: `README.md`**.
- **Teacher's Comprehensive Guide Structure**: The `README.md` file serves as the complete all-in-one guide for the teacher, structured as follows:
  1. **Section 1: Informații Generale & Obiective Certiport** (Metadata, mapped Certiport syllabus objectives, essential technical questions, and OneCompiler link).
  2. **Section 2: Pregătirea Lecției (Checklist Profesor)** (Environment setup, pre-tested T-SQL schemas, data verification).
  3. **Section 3: Planul de Desfășurare (Timeline 120 min)** (Precise operational schedule per stage).
  4. **Section 4: Ghid Didactic Pas cu Pas (Teacher's Master Guide)** (Deep didactic theory, live T-SQL code blocks formatted for OneCompiler, syntax breakdowns, and common runtime errors).
  5. **Section 5: Mini-Quiz Certiport ITS (Verificare Teoretică)** (8–10 Certiport-style multiple choice questions with correct answers marked and comprehensive pedagogical explanations directly at the end of `README.md`).

---

## 4. Language & Terminology Rules

- **Course Narrative Language**: Written in formal, clear, and grammatically impeccable **Romanian**.
- **Direct English Technical Terminology**: Use standard international database and T-SQL terms directly in English (e.g., `Primary Key`, `Foreign Key`, `Data Type`, `Constraint`, `Query`, `Join`, `Table`, `Schema`, `View`, `Null / Not Null`, `Clause`, `Aggregate Function`, `Transaction`, `Index`, `Trigger`, `Stored Procedure`, `OneCompiler`). Do NOT use forced or archaic Romanian translations.
