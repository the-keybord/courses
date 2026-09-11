# Robot Factory Evolution - Course Agent Rules

This file complements the global repository [`AGENTS.md`](../AGENTS.md) with rules specific to the **Robot Factory: Evolution** (Level 2) course.

## Course Context & Architecture
- **Course Name**: Robot Factory: Evolution (Level 2)
- **Target Age Group**: **11–15 years old** (students who completed Robot Factory 1.0 or have equivalent fundamentals in Fusion 360, electronics, and Arduino C++).
- **Core Pillars**:
  1. **Hardware & Reliability Evolution**: Complete physical rebuild of the robot (Robot Factory 2.0 chassis, rock-solid connections, modular mounting, solving Year 1 brownouts and loose DuPont wire issues).
  2. **Connectivity Evolution**: Transition from Wi-Fi Access Point web servers to **BLE (Bluetooth Low Energy)** for low-latency smartphone gamepad control without losing mobile internet or congesting classroom Wi-Fi.
  3. **Sensors & Autonomous Intelligence**: Practical integration of smart sensors (Ultrasonic HC-SR04, IR line tracking, BNO055 IMU / accelerometer-gyroscope, buzzer, etc.) for autonomous navigation.
  4. **The "Orbit Odyssey" Challenge**: Adapting the XRP space-exploration robotics challenge to physical RF 2.0 robots (planetary rover simulation: autonomous obstacle/line routine + teleoperated BLE piloting).
  5. **Team Identity & Collaborative Challenges**: Students form teams for shared identity (team name, livery branding, cooperative strategies in the Orbit Odyssey arena), while each student builds, codes, and operates **their own individual robot**.
- **Individual Robot Ownership & Guided Workflow**:
  - **1 Robot Per Student**: Every student builds, wires, solders, debugs, and programs their own physical robot. There is NO sharing of a single robot across multiple students.
  - **Teacher-Guided Progression**: Students follow explicit, direct, step-by-step guidance and demonstrations led by the instructor, ensuring synchronized progress and technical rigor across all 16 workstations.
- **Lesson Structure**: Free relate format with practical hands-on engineering, step-by-step teacher guidance, challenges, quizzes, and arena trials.
- **Lesson Duration**: Standard **120 minutes** (2 hours) per lesson.

## Language Rules
- **Course Content**: All lesson plans, student guides, teacher instructions, challenges, worksheets, and quizzes must be created in **Romanian**.
- **Agent Meta & Communication**: Agent guidelines, commit messages, and conversations with the repository maintainer are in **English**.

## Lesson Content & Writing Style: Technical Precision & Directness
- **Strictly Technical & Practical Tone**: Do NOT use excessive metaphors, dramatic space narratives, or flowery literary tropes. Write like a modern engineering specification and hands-on lab guide.
- **Deep Technical Accuracy**: Focus on concrete engineering realities: exact pinouts, communication protocols (BLE GATT services/characteristics, I2C addresses, UART baud rates, packet structures), electrical schematics (voltage drop, current draw, brownout mechanics, boost converter tuning), mechanical tolerances in CAD, and clean software architecture.
- **Clear & Comprehensive Structure**: Provide thorough, structured, step-by-step teacher guides, algorithmic pseudo-code, and concrete troubleshooting methodologies without fluff.

## Formatting Policy: No ASCII Art Diagrams or ASCII Pseudo-Tables
- **Strict Prohibition**: Absolutely NO ASCII art diagrams, ASCII circuit drawings, ASCII layout maps, or ASCII box pseudo-tables in lesson README files.
- **Literal Prose & Essay Explanations**: Explain electrical connections, power flows, timelines, and mechanical structures purely in comprehensive literal text and narrative essay form.
