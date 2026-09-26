# Robot Factory Evolution - Course Agent Rules

This file complements the global repository [`AGENTS.md`](../AGENTS.md) with rules specific to the **Robot Factory: Evolution** (Level 2) course.

## Course Context & Architecture
- **Course Name**: Robot Factory: Evolution (Level 2)
- **Course Code**: **RBF2** (Robot Factory Level 2 – Evolution)
- **Lesson Code Format**: **`RBF2.<N>`** (e.g. Lesson 01 is **`RBF2.1`**, Lesson 02 is **`RBF2.2`**, Lesson 03 is **`RBF2.3`**, Lesson 04 is **`RBF2.4`**).
- **Target Age Group**: **11–15 years old** (students who completed Robot Factory 1.0 or have equivalent fundamentals in Fusion 360, electronics, and Arduino C++).
- **Core Pillars**:
  1. **Hardware & Reliability Evolution**: Complete physical rebuild of the robot (Robot Factory 2.0 chassis, rock-solid connections, modular mounting, solving Year 1 brownouts, vibration resistance, proper cable harnesses, and eliminating loose DuPont wire issues).
  2. **Connectivity Evolution**: Transition from Wi-Fi Access Point web servers to **BLE (Bluetooth Low Energy)** for low-latency smartphone gamepad control without losing mobile internet or congesting classroom Wi-Fi.
  3. **Sensors & Autonomous Intelligence**: Practical integration of smart sensors (Ultrasonic HC-SR04, IR line tracking, BNO055 IMU / accelerometer-gyroscope, buzzer, etc.) for autonomous navigation.
  4. **The "Orbit Odyssey" Challenge**: Adapting the XRP space-exploration robotics challenge to physical RF 2.0 robots (planetary rover simulation: autonomous obstacle/line routine + teleoperated BLE piloting).
  5. **Team Identity & Collaborative Challenges**: Students form teams for shared identity (team name, livery branding, cooperative strategies in the Orbit Odyssey arena), while each student builds, codes, and operates **their own individual robot**.
- **Individual Robot Ownership & Guided Workflow**:
  - **1 Robot Per Student**: Every student builds, wires, solders, debugs, and programs their own physical robot. There is NO sharing of a single robot across multiple students.
  - **Teacher-Guided Progression**: Students follow explicit, direct, step-by-step guidance and demonstrations led by the instructor, ensuring synchronized progress and technical rigor across all workstations.
- **Lesson Structure**: Free relate format with practical hands-on engineering, step-by-step teacher guidance, challenges, quizzes, and arena trials.
- **Lesson Duration**: Standard **120 minutes** (2 hours) per lesson.

## The Mandatory Lesson Bundle
Every lesson directory (`lesson-XX/`) must contain these core files:
1. `README.md`: Complete teacher's master document (operational timeline, deep narrative theory, step-by-step demo guide, student workflow, and wrap-up; references `quiz.md` for the quiz step).
2. `presentation.md`: Clearly structured slide-by-slide blueprint (typically 8–10 slides), including Canva Master Prompt, slide content, speaker notes, image placeholders, and a single text-only practical briefing slide.
3. `presentation_interactive.md`: Interactive reading slide-by-slide blueprint formatted with 3–4 numbered sentences per slide for students to take turns reading out loud from the screen/board, accompanied by teacher guidance notes and Canva Master Prompt.
4. `presentation_summary.md`: Continuous narrative prompt for autonomous AI presentation engines (Gamma, Canva AI, Tome) with strict header directives upfront, rich continuous narrative text without inline image prompts, and 100% theoretical focus.
5. `quiz.md`: Complete interactive Kahoot quiz file containing 10–15 questions, 4 options (max 1–3 words each), balanced answer lengths, and pedagogical explanations.

## Language Rules & Bilingual Technical Terminology
- **Course Content**: All lesson plans, student guides, teacher instructions, challenges, worksheets, presentations, and quizzes must be created in **Romanian**.
- **Agent Meta & Communication**: Agent guidelines, commit messages, and conversations with the repository maintainer are in **English**.
- **Bilingual Terminology in Presentations**: Always provide the standard English term in parentheses whenever introducing technical, specialized, or uncommon terms in presentations (e.g. `fir lițat (stranded wire)`, `sertizare (crimping)`, `pasul pinilor (pitch)`, `cădere de tensiune (voltage drop)`, `polarizare mecanică (keying)`, `tub termocontractil (heat shrink)`).

## Lesson Content & Writing Style: Technical Precision & Directness
- **Strictly Technical & Practical Tone**: Do NOT use excessive metaphors, dramatic space narratives, or flowery literary tropes. Write like a modern engineering specification and hands-on lab guide.
- **Deep Technical Accuracy**: Focus on concrete engineering realities: exact wire gauges (AWG), connector types (DuPont, JST-PH, JST-XH, XT30), crimping & soldering standards, pinouts, communication protocols (BLE GATT, I2C, UART), electrical schematics (voltage drop, current draw, brownout mechanics), mechanical tolerances in CAD, and clean software architecture.
- **Clear & Comprehensive Structure**: Provide thorough, structured, step-by-step teacher guides, circuit diagrams in literal prose, and concrete troubleshooting methodologies without fluff.

## Formatting Policy: No ASCII Art Diagrams or ASCII Pseudo-Tables
- **Strict Prohibition**: Absolutely NO ASCII art diagrams, ASCII circuit drawings, ASCII layout maps, or ASCII box pseudo-tables in lesson documents.
- **Literal Prose & Essay Explanations**: Explain electrical connections, power flows, timelines, and mechanical structures purely in comprehensive literal text and narrative essay form.

## Interactive Kahoot Quizzes Standards (`quiz.md`)
- **100% Pure Theoretical Focus**: Strictly tests theoretical concepts, physics, materials, and engineering taught in the presentation. Zero questions about the practical project steps or specific tools used during hands-on assembly.
- **Strict 4-Option Structure**: Every question features exactly 4 choices (`A)`, `B)`, `C)`, `D)`).
- **Ultra-Short Answer Choices (Strictly 1–3 Words)**: Each answer option must be very short and punchy (1 to 3 words maximum).
- **Balanced Option Lengths**: Never make the correct answer conspicuously longer than distractors.
- **Pedagogical Explanations**: Immediate explanation block (`> **Explicație**: ...`) under each question.
