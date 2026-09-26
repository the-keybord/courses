# Prezentare: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

> ### 📋 Master Prompt pentru Canva Magic Design / Instrumente de Prezentare AI
> *(Copiați acest bloc direct în Canva sau asistentul de prezentare pentru a genera designul și structura inițială)*:
> - **Format**: Prezentare educațională pe ecran lat (**16:9 Slide Deck** - 6 slide-uri compacte).
> - **Public Țintă / Audience**: Elevi cu vârsta de **11–14 ani** din programul Robot Factory: Creation (ton tehnic direct, serios dar accesibil, fără infantilizare; terminologie inginerească explicată bilingv).
> - **Obiectiv / Goal**: Prezentarea fizicii și standardelor cablurilor electrice (cupru pur/cositorit, lițat vs masiv, silicon vs PVC), decodarea sistemului inversat AWG și a secțiunii în $mm^2$, analiza căderii de tensiune ($V = I \cdot R$) și a efectului Joule ($P = I^2 \cdot R$), clasificarea conectorilor (DuPont 2.54mm, JST-PH 2.0mm, JST-XH, XT30/XT60), noțiunea de pitch (pasul pinilor), polarizarea (*keying*) și utilizarea sculelor profesionale (clește de dezizolat, clește de sertizat cu clichet, letcon, multimetru).
> - **Stil Vizual & Vibe / Style & Mood**: Ingineresc, tehnologic și curat. Paletă de culori matură (gri antracit, albastru electric închis, accente de cupru strălucitor și verde neon pe fundaluri întunecate). Tipografie modernă sans-serif, carduri de informații structurate și spații aerisite.
> - **Regulă Generare Imagini (Anti-AI Slop & Stil Abstract Exclusiv)**: Generează cât mai puține imagini posibile. Prioritizează slide-uri curate cu tipografie și containere libere pentru adăugarea manuală de fotografii reale ale cablurilor, conectorilor și plăcilor de microcontroler. Dacă generezi ilustrații, folosește exclusiv **grafică vectorială plată (flat vector)** sau **diagrame tehnice 2D simple**. Nu genera imagini 3D pseudo-fotorealiste.
> - **Tratare Imagini de Lecție**: Fiecare slide conține o rubrică de tip `[Placeholder Imagine]` pentru inserarea ulterioară a unei fotografii reale sau a unei diagrame tehnice.

---

## Slide 1: Inima Cablului: Conductorul Metalic
- **Titlu**: Inima Cablului: Conductorul Metalic
- **Subtitlu**: Cupru Cositorit (Tinned Copper) vs Aluminiu | Fir Lițat (Stranded) vs Masiv (Solid Core)
- **Conținut & Puncte Cheie**:
  - **Peste 80% din defectele robotice** sunt cauzate de cabluri slăbite, căderi de tensiune sau contacte imperfecte.
  - **Cuprul Cositorit (*Tinned Copper*)**: Standardul de aur; zero oxidare verde, lipire (*soldering*) instantanee.
  - **Fir Lițat (*Stranded Wire*)**: Zeci de firișoare fine răsucite; ultra-flexibil, rezistă la vibrațiile robotului.
  - **Fir Masiv (*Solid Core*)**: O singură sârmă rigidă; se fracturează rapid la vibrații repetate.
  - **Aluminiu Placat (*CCA*)**: Ieftin, casant, rezistență electrică cu 60% mai mare; interzis pe roboți!
- **Note pentru Profesor**:
  - Arătați o mostră de fir lițat și una de sârmă masivă; îndoiți-le repetat pentru a demonstra rezistența la oboseală mecanică.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Comparație macro foto între secțiunea unui fir lițat (multifilar) de cupru cositorit și cea a unui fir masiv.*

---

## Slide 2: Mantaua de Protecție: Silicon vs PVC vs Teflon
- **Titlu**: Izolația Electrică (Insulation): De Ce Siliconul Dominează Robotica?
- **Subtitlu**: Temperatură, Flexibilitate și Rezistență Mecanică
- **Conținut & Puncte Cheie**:
  - **Siliconul (*Silicone Insulation* - Standardul Nostru)**:
    - Ultra-flexibil (se îndoaie liber fără rezistență mecanică).
    - Rezistent termic (-60°C până la +200°C); nu se topește la atingerea letconului (*soldering iron*)!
  - **PVC (*Polyvinyl Chloride*)**:
    - Rigid, ieftin, uz general; se topește instantaneu la 150°C, retrăgându-se de pe fir.
  - **Teflon (*PTFE*)**:
    - Izolație aerospațială ultra-subțire și chimic inertă; scumpă și greu de dezizolat (*wire stripping*).
- **Note pentru Profesor**:
  - Atingeți scurt vârful letconului de o bucățică de cablu siliconic pentru a demonstra că nu se topește și nu scoate fum toxic.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Comparație foto între un fir de PVC topit de letcon și un fir de silicon intact după aceeași atingere termică.*

---

## Slide 3: Standardul AWG, Căderea de Tensiune & Brownout
- **Titlu**: Decodarea AWG, Căderea de Tensiune (*Voltage Drop*) și Efectul Joule
- **Subtitlu**: Logica Inversată a Grosimii și Riscul de Resetare a Microcontrolerului
- **Conținut & Puncte Cheie**:
  - **Regula AWG (*American Wire Gauge*)**: **Număr MIC = Fir GROS** (putere) | **Număr MARE = Fir SUBȚIRE** (semnal).
  - **14–22 AWG**: Linii de forță pentru baterii și motoare (suportă 3A–40A).
  - **26–28 AWG**: Linii subțiri pentru semnale logice, senzori I2C și PWM (< 1A).
  - **Căderea de Tensiune ($V_{drop} = I \cdot R$)**: Motoarele accelerează $\rightarrow$ tensiunea la procesor scade sub pragul critic $\rightarrow$ **Detectorul Brownout resetează procesorul în meci**!
  - **Efectul Joule ($P = I^2 \cdot R$)**: Energia pierdută pe un fir subțire se transformă în căldură periculoasă.
- **Note pentru Profesor**:
  - Explicați că fenomenul de brownout este motivul pentru care un robot se resetează doar când motoarele pornesc în sarcină.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Grafic ilustrativ al scalei AWG alături de schema căderii de tensiune și semnalul de reset brownout.*

---

## Slide 4: Conectori de Semnal și Putere: Pitch & Polarizare (Keying)
- **Titlu**: Conectorii de Semnal și Forță: Pitch, DuPont, JST și XT30
- **Subtitlu**: Pasul Pinilor (*Pin Pitch*) și Conexiuni Sigure la Vibrații
- **Conținut & Puncte Cheie**:
  - **Ce este "Pitch"?**: Distanța dintre centrele a doi pini vecini (2.54 mm = 0.1" / standard clasic; 2.00 mm / JST-PH).
  - **Conectori DuPont (2.54 mm)**: Universali pe breadboard, dar fără zăvor (*latch*), vulnerabili la vibrații.
  - **Conectori JST-PH (2.0 mm) și JST-SM**: Conectori compacți cu blocare fermă (*friction lock / positive latch*) pentru senzori.
  - **Conectori de Forță XT30**: Contacte aurite (30A continuu) cu formă asimetrică polarizată (**keying**), făcând imposibilă inversarea polarității (*reverse polarity*).
- **Note pentru Profesor**:
  - Arătați conectorii fizici DuPont, JST-PH și XT30, evidențiind ghidajele mecanice antieroare.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie alăturată cu un conector DuPont 2.54mm, un conector alb JST-PH 2.0mm și o mufă galbenă XT30 polarizată.*

---

## Slide 5: Trusa de Scule Profesionale pentru Cablaj
- **Titlu**: Uneltele Inginerului: De la Sertizare la Verificare
- **Subtitlu**: Clește Stripper, Crimper cu Clichet, Letcon și Multimetru
- **Conținut & Puncte Cheie**:
  - **Clește de Dezizolat (*Wire Stripper*)**: Fante calibrate pe AWG; taie doar izolația fără a ciupi lițele de cupru.
  - **Clește de Sertizat (*Ratcheting Crimper*)**: Dublă presare – aripioarele din față pe cupru (contact electric) și cele din spate pe izolație (*strain relief*).
  - **Letcon (*Soldering Iron*) & Tub Termocontractil (*Heat Shrink*)**: *Pre-tinning* obligatoriu și izolare profesională.
  - **Multimetru Digital (*Continuity Buzzer*)**: Bip pe continuitate, LINIȘTE între VCC și GND (absență scurtcircuit).
- **Note pentru Profesor**:
  - Explicați de ce mecanismul cu clichet garantează presiunea optimă de deformare a metalului.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu trusa de scule de cablare pe un banc de lucru curat (stripper, crimper, letcon, multimetru).*

---

## Slide 6: Briefing Practic – Programarea Senzorilor BBC Micro:Bit
- **Titlu**: Misiunea Practică: Programarea Senzorilor Fizici în MakeCode
- **Subtitlu**: 6 Provocări pe Hardware-ul Real Micro:Bit v2 (70 minute)
- **Conținut & Puncte Cheie (Checklist de Lucru)**:
  - 1. **Conectare WebUSB**: Împerechere directă (*Pair device*) prin cablu micro-USB.
  - 2. **Exercițiul 1 (Temperatură & Bar Graph)**: Termometru vizual cu coloană de mercur pe LED-uri (`plot bar graph`) și alertă de supraîncălzire la $>30^\circ C$.
  - 3. **Exercițiul 2 (Lumină)**: Faruri inteligente automate de noapte folosind matricea LED ca luxmetru (`light level < 50`).
  - 4. **Exercițiul 3 (Accelerometru)**: Nivelă 2D de înclinare cu săgeți direcționale (`tilt left/right/logo up/down`).
  - 5. **Exercițiul 4 (Mișcare & Variabile)**: Pedometru inteligent (`on shake`, incrementare `pasi`, resetare `A+B`).
  - 6. **Exercițiul 5 (Magnetometru)**: Busolă magnetică cu ghidaj sonor la Nord (`compass heading`).
  - 7. **Exercițiul 6 (Microfon v2)**: Alarmă antiefracție la zgomot cu sirenă sonoră și vizuală (`on loud sound`).
- **Note pentru Profesor**:
  - Acest slide servește drept panou de orientare pentru maratonul practic. Profesorul ghidează fiecare exercițiu pas cu pas.
- **Imagine / Vizual**:
  - *(Fără imagini – slide tehnic de orientare operațională).*
