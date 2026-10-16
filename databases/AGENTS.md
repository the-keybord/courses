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

## 2. Pedagogical Priorities & Concept Calibration (Strict 3-Tier Hierarchy)

All database lessons must adhere strictly to the following 3-tier hierarchy of didactic priorities:

1. **Top Priority (Primary Focus): Syntax Rules & Writing Patterns (Tipare de Scriere)**:
   - The primary focus must always be on **correct T-SQL syntax rules** and **identifying code writing patterns**.
   - Emphasize **which elements naturally appear together** (e.g., clause pairings such as `SELECT ... FROM ... WHERE ... GROUP BY ... HAVING`, `INSERT INTO ... VALUES`, `UPDATE ... SET ... WHERE`, `ALTER TABLE ... ADD/DROP/ALTER COLUMN`, `CREATE TABLE (...)` with column definitions, data types, and constraints) and **how they are written**.
   - Highlight recurring structural templates, keyword placement, mandatory vs. optional clauses, punctuation rules (commas, parentheses), and common syntax mistakes.

2. **Second Priority (Secondary Focus): Practical Examples & Real-World Usage**:
   - Provide concrete, working T-SQL examples for immediate execution in OneCompiler.
   - Show how queries are applied in realistic scenarios and how data is manipulated step-by-step.
   - Focus on practical utility and tasks directly encountered in real projects and the Certiport exam.

3. **Third Priority (Tertiary Focus): High-Level / Functional Understanding (Avoid Deep Abstract Over-Explanation)**:
   - Provide only a high-level, intuitive, and functional understanding of database notions (what the concept does and how to recognize it).
   - **Do NOT over-explain abstract concepts**: Strictly avoid diving into overly deep, academic, or complex theoretical abstractions (e.g., deep relational algebra, heavy mathematical formalisms, or convoluted internal database engine mechanics). Keep conceptual definitions brief, accessible, and directly tied to what students see in their code.

---

## 3. Tone, Style & Professional Demeanor

- **Target Audience Calibration (15–18 Years Old)**:
  - Students are young adults preparing for an industry-recognized technical certification.
  - **Strictly No Childish, Humorous, or Playful Language**: Avoid playful metaphors, cartoonish analogies, emojis in technical prose, jokes, or informal slang.
  - **Professional & Direct Engineering Tone**: Treat the subject with serious, clean technical clarity. Use standard industry database terms without unnecessarily dense academic theory.
- **Teacher-Oriented Instructional Design**:
  - The guide must be structured so that the instructor can immediately see the syntax patterns to write on the board, live coding scripts, and exact gotchas to warn students about.
  - Frame concepts around direct syntax identification and Certiport exam patterns.

---

## 4. Lesson File Structure Policy (`README.md` & `student.md`)

Unlike younger kids' courses in the repository, this course uses a streamlined, professional two-file structure per lesson:
- **No Derivative Presentation/Risk Files**: Do **NOT** generate `presentation.md`, `presentation_interactive.md`, `presentation_summary.md`, or `risks.md`.
- **Standard Lesson Bundle**: Each lesson folder (`lesson-01/`, `lesson-02/`, etc.) contains **EXACTLY two files**:
  1. **`README.md` (Teacher's Master Guide)**: Complete all-in-one guide for the instructor:
     - Section 1: Informații Generale & Obiective Certiport (Metadata, syllabus alignment, essential questions, OneCompiler link).
     - Section 2: Pregătirea Lecției (Checklist Profesor).
     - Section 3: Planul de Desfășurare (Timeline 120 min).
     - Section 4: Ghid Didactic Pas cu Pas (Teacher's Master Guide with syntax writing patterns, OneCompiler live scripts, error breakdowns).
     - Section 5: Mini-Quiz Certiport ITS (8–10 multiple choice questions with answers and pedagogical explanations; also accompanied by `quiz.xlsx` in the lesson directory ready for Kahoot import).
  2. **`student.md` (Quick Review Compendium / Fișă Recapitulativă)**: Short, high-yield summary guide (approx. 60–80 lines) for students to quickly review what was learned:
     - Section 1: Ce am învățat astăzi (Quick Review – bullet points of core takeaways).
     - Section 2: Termeni Noi (Dicționar Rapid – compact table with technical terms, brief meaning, and practical context).
     - Section 3: Comparații sau Tipuri de Date Cheie (Compact tables/lists where applicable).
     - Section 4: Exemple Cheie de Cod T-SQL (Essential, clean code blocks for OneCompiler).
     - Section 5: Reguli de Aur & De Reținut (Key gotchas, exam traps, and syntax rules).

---

## 5. Language & Terminology Rules

- **Course Narrative Language**: The instructional explanations, didactic narrative, and teacher guides are written in clear, formal, and grammatically impeccable **Romanian**.
- **Core Concepts Learned Strictly in English**:
  - All primary database concepts, notions, and components must be learned and memorized in **English**, as the Certiport examination and real-world database environments are entirely in English.
  - The **English version of all database objects and concepts must strictly prevail**. Romanian is used only to bridge understanding, but students must always prioritize and operate with the English terms (e.g., always emphasize `Primary Key`, `Foreign Key`, `Table`, `View`, `Constraint`, `Index`, `Stored Procedure`, `Trigger`, `Clause`, `Join`, `Aggregate Function`, `Data Type`, `Transaction`, `Null`).
- **Object Names & Identifiers Exclusively in English**:
  - All names of database objects in code, schemas, and practical examples (tables, columns, views, constraints, indexes, variables, aliases) must be written strictly in **English** (e.g., `Customers`, `Orders`, `Products`, `customer_id`, `order_date`, `total_amount`, `FK_Orders_Customers`).
  - **Never use Romanian names for code entities** (strictly avoid `Clienti`, `Comenzi`, `Produse`, `nume_client`, `pret_total`, etc.).
- **No Forced Romanian Translations**: Avoid forced, archaic, or awkward Romanian translations for technical database mechanisms. Keep standard Maker and industry terminology directly in English.

---

## 6. Strict Prohibition of ASCII Art & Pseudo-Diagrams

- **No ASCII Art Diagrams or Box Drawings**: Absolutely NO ASCII art drawings, box-drawing characters (`┌─┐`, `│`, `▼`), ASCII tree maps, or pseudo-tables inside code blocks across any database lesson documents.
- **Literal Prose & Markdown Tables**: Present all architectural relationships, taxonomy breakdowns, and structural comparisons purely through clean, standard GitHub Markdown tables, structured bulleted lists, and precise didactic prose.
