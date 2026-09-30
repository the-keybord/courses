# Prezentare: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

> ### 📋 Master Prompt pentru Canva Magic Design / Instrumente de Prezentare AI
> *(Copiați acest bloc direct în Canva sau asistentul de prezentare pentru a genera designul și structura inițială)*:
> - **Format**: Prezentare educațională pe ecran lat (**16:9 Slide Deck** - 6 slide-uri compacte).
> - **Public Țintă / Audience**: Elevi de **11–14 ani** din Moldova (ton direct, practic, folosind direct termenii standard în engleză fără traduceri forțate în română).
> - **Obiectiv / Goal**: Fizica cablurilor și a conexiunilor (tinned copper vs aluminiu, stranded wire vs solid core, izolație silicon vs PVC), sistemul AWG și căderea de tensiune (voltage drop / brownout), conectori (DuPont 2.54mm, JST-PH 2.0mm, JST-XH, XT30), pitch, mechanical keying și scule profesionale (wire stripper, crimper, letcon / soldering iron, multimetru).
> - **Stil Vizual & Vibe / Style & Mood**: Ingineresc, tehnologic și curat. Paletă de culori matură (gri antracit, albastru electric închis, accente de cupru strălucitor și verde neon pe fundaluri întunecate). Tipografie modernă sans-serif, carduri de informații structurate și spații aerisite.
> - **Regulă Generare Imagini (Anti-AI Slop & Stil Abstract Exclusiv)**: Generează cât mai puține imagini posibile. Prioritizează slide-uri curate cu tipografie și containere libere pentru adăugarea manuală de fotografii reale ale cablurilor, conectorilor și plăcilor de microcontroler. Dacă generezi ilustrații, folosește exclusiv **grafică vectorială plată (flat vector)** sau **diagrame tehnice 2D simple**. Nu genera imagini 3D pseudo-fotorealiste.
> - **Tratare Imagini de Lecție**: Fiecare slide conține o rubrică de tip `[Placeholder Imagine]` pentru inserarea ulterioară a unei fotografii reale sau a unei diagrame tehnice.

---

## Slide 1: Inima Cablului: Conductorul Metalic
- **Titlu**: Inima Cablului: Conductorul Metalic
- **Subtitlu**: Tinned Copper vs Aluminiu | Stranded Wire vs Solid Core
- **Conținut & Puncte Cheie**:
  - **Peste 80% din defecțiunile robotice** apar din cauza cablurilor nepotrivite și a conexiunilor slabe.
  - **Tinned Copper (cupru cu strat de staniu)**: Standardul numărul 1 în robotică; nu oxidează și se lipește instantaneu cu letconul.
  - **Stranded Wire (fir flexibil din multe firișoare)**: Rezistent la vibrații continue, nu se rupe la mișcare.
  - **Solid Core Wire (fir rigid cu un singur miez)**: Se rupe rapid la vibrații; bun doar pentru breadboard fix.
  - **Aluminiu (CCA - Copper Clad Aluminum)**: Ieftin, casant, rezistență electrică cu 60% mai mare; interzis pe roboți!
- **Note pentru Profesor**:
  - Arătați o mostră de stranded wire și una de solid core; îndoiți-le repetat pentru a demonstra rezistența la oboseală mecanică.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Comparație macro foto între secțiunea unui stranded wire din tinned copper și un fir solid core.*

---

## Slide 2: Mantaua de Protecție: Silicon vs PVC vs Teflon
- **Titlu**: Izolația Cablului: De Ce Siliconul Dominează Robotica?
- **Subtitlu**: Temperatură, Flexibilitate și Rezistență Mecanică
- **Conținut & Puncte Cheie**:
  - **Siliconul (Silicone Wire - Standardul Nostru)**:
    - Ultra-flexibil (robotul se mișcă liber fără cabluri rigide).
    - Rezistent termic (-60°C până la +200°C); nu se topește când este atins cu letconul!
  - **PVC (cabluri standard ieftine)**:
    - Rigid, se topește instantaneu la 150°C când îl lipim.
  - **Teflon (PTFE)**:
    - Izolație aerospațială foarte subțire și rezistentă; scumpă și greu de dezizolat.
- **Note pentru Profesor**:
  - Atingeți scurt vârful letconului de o bucățică de cablu siliconic pentru a demonstra că nu se topește și nu scoate fum toxic.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Comparație foto între un fir de PVC topit de letcon și un fir de silicon intact după aceeași atingere termică.*

---

## Slide 3: Standardul AWG, Căderea de Tensiune (Voltage Drop) & Brownout
- **Titlu**: Standardul AWG, Voltage Drop și Efectul Joule
- **Subtitlu**: Logica Inversată a Grosimii și Riscul de Resetare a Microcontrolerului
- **Conținut & Puncte Cheie**:
  - **Regula AWG (American Wire Gauge)**: **Număr MIC = Fir GROS** (putere) | **Număr MARE = Fir SUBȚIRE** (semnal).
  - **14–22 AWG**: Linii de forță pentru baterii și motoare (suportă 3A–40A).
  - **26–28 AWG**: Linii subțiri pentru semnale logice de senzori (I2C, PWM, UART sub 1A).
  - **Voltage Drop ($V = I \cdot R$)**: Fir prea subțire $\rightarrow$ tensiunea la procesor scade $\rightarrow$ **Brownout Reset (robotul se resetează în sarcină)**!
  - **Efectul Joule ($P = I^2 \cdot R$)**: Energia pierdută pe un fir subțire se transformă în căldură periculoasă.
- **Note pentru Profesor**:
  - Explicați că fenomenul de brownout este motivul pentru care un robot se resetează doar când motoarele pornesc în sarcină.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Grafic ilustrativ al scalei AWG alături de schema căderii de tensiune și semnalul de reset brownout.*

---

## Slide 4: Conectori: Pitch & Mechanical Keying
- **Titlu**: Conectorii de Semnal și Forță: Pitch, DuPont, JST și XT30
- **Subtitlu**: Distanța Dintre Pini (Pitch) și Conexiuni Sigure la Vibrații
- **Conținut & Puncte Cheie**:
  - **Ce este Pin Pitch?**: Distanța dintre centrele a doi pini vecini (2.54 mm standard clasic; 2.00 mm pentru JST-PH).
  - **Conectori DuPont (2.54 mm)**: Populari pe breadboard, dar vulnerabili la vibrații fără clemă de blocare.
  - **Conectori JST-PH (2.0 mm) și JST-XH**: Conectori compacți cu blocare sigură (latch) pentru senzori.
  - **Conectori de Putere XT30**: Contacte aurite (suportă 30A continuu) cu ghidaj asimetric (**mechanical keying**) ce împiedică inversarea plusului cu minusul.
- **Note pentru Profesor**:
  - Arătați conectorii fizici DuPont, JST-PH și XT30, evidențiind ghidajele antieroare.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie alăturată cu un conector DuPont 2.54mm, un conector alb JST-PH 2.0mm și o mufă galbenă XT30 polarizată.*

---

## Slide 5: Trusa de Scule Profesionale pentru Cablaj
- **Titlu**: Uneltele Inginerului: De la Crimping la Verificare
- **Subtitlu**: Wire Stripper, Crimper cu Clichet, Letcon și Multimetru
- **Conținut & Puncte Cheie**:
  - **Wire Stripper (clește de dezizolat)**: Fante calibrate pe AWG; taie curat doar izolația fără a ciupi lițele de cupru.
  - **Crimper cu Clichet (clește de sertizat)**: Prinde metalul în două zone: pe conductor (contact electric) și pe izolație (rezistență la tragere).
  - **Soldering Iron (letcon) & Heat Shrink (tub termic)**: *Pre-tinning* rapid și izolare sigură a lipiturilor.
  - **Multimetru (Continuity Buzzer)**: Sunet (bip) pe linia continuă, LINIȘTE între VCC și GND (absență scurtcircuit).
- **Note pentru Profesor**:
  - Explicați de ce mecanismul cu clichet garantează presiunea optimă de deformare a metalului.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu trusa de scule de cablare pe un banc de lucru curat (wire stripper, crimper, letcon, multimetru).*

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
