# Prezentare Interactivă: Lecția 04 [RBF2.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

---

### 🎨 Canva AI Master Prompt (Format Lectură Interactivă la Tablă)

```text
Creează o prezentare educațională teoretică și interactivă compactă de 5 slide-uri (format 16:9 widescreen) destinată elevilor de 11–15 ani, pentru Lecția 04 din cursul Robot Factory: Evolution.
Scopul prezentării: Elevii citesc pe rând informația teoretică cu voce tare de pe tablă/ecran.
Structură pe slide: Fiecare slide conține exact 4 propoziții clare, numerotate și bine spațiate vizual în carduri mari, ușor de citit de la distanță.
Stil vizual: Modern, curat, mature-tech, fundaluri profesionale în tonuri de gri antracit/bleumarin profund, cu text mare, font sans-serif foarte lizibil și contrast ridicat. Accente de cupru metalic, albastru electric și verde neon.
Include imagini ilustrative explicative pe fiecare slide [Placeholder Imagine: ...] pentru a susține vizual textul citit.
Prezentarea se concentrează exclusiv pe noțiuni teoretice, materiale, fizica AWG, căderea de tensiune și tipurile de conectori.
```

---

## Structura Slide-urilor (Format pentru Lectură cu Voce Tare la Tablă)

---

### Slide 1: Sistemul Nervos al Robotului & Conductorul Metalic
- **Titlu**: Inima Cablului: Conductorul Metalic
- **Subtitlu**: Tinned Copper vs Aluminiu | Stranded Wire vs Solid Core
- **Propoziții de Citit la Tablă**:
  1. În robotica mobilă, cablurile și conectorii electrici reprezintă sistemul nervos și circulator al robotului.
  2. Conductorul ideal este **tinned copper** (cupru cu strat de staniu), fiindcă nu oxidează și se lipește instantaneu cu letconul.
  3. Pe roboți folosim exclusiv **stranded wire** (fir flexibil din multe lițe subțiri), evitând sârma rigidă **solid core** care se rupe la vibrații.
  4. Cablurile ieftine din aluminiu (**CCA**) sunt casante și au o rezistență electrică cu 60% mai mare, fiind interzise pe roboți.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Comparație macro foto între firișoarele strălucitoare de tinned copper din stranded wire și un cablu solid core]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând propozițiile. Arătați o bucățică de stranded wire și una de solid core, îndoindu-le repetat.*

---

### Slide 2: Izolația Cablului: De Ce Siliconul e Rege în Robotică?
- **Titlu**: Izolația Cablului: Silicon vs PVC vs Teflon
- **Subtitlu**: Temperatură, Flexibilitate și Rezistență Mecanică
- **Propoziții de Citit la Tablă**:
  1. **Cablurile cu izolație de silicon** sunt ultra-flexibile, rezistente și suportă temperaturi extreme între **-60°C și +200°C**.
  2. Dacă atingeți din greșeală cablul de silicon cu vârful de la letcon (**soldering iron**) încins la 350°C, acesta nu se topește deloc.
  3. **Cablurile din PVC** (cele obișnuite) sunt rigide și se topesc instantaneu la căldură, lăsând firul de cupru dezvelit.
  4. **Teflonul (PTFE)** oferă o izolație foarte subțire și dură, dar este costisitor și greu de tăiat cu un stripper obișnuit.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Test comparativ termic – letconul atingând un cablu de PVC topit vs un cablu de silicon intact]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Demonstrați rezistența termică a siliconului atingând scurt un cablu cu letconul în fața clasei.*

---

### Slide 3: Standardul AWG, Căderea de Tensiune & Brownout
- **Titlu**: Standardul AWG, Voltage Drop și Efectul Joule
- **Subtitlu**: Logica Inversată a Grosimii și Riscul de Resetare a Robotului
- **Propoziții de Citit la Tablă**:
  1. Grosimea cablurilor se măsoară prin sistemul inversat **AWG (American Wire Gauge)**: număr mic = fir gros de putere (14–22 AWG); număr mare = fir subțire de semnal (26–28 AWG).
  2. Cu cât un fir este mai subțire, cu atât rezistența lui e mai mare, producând o cădere de tensiune (**voltage drop**) la pornirea motoarelor.
  3. Când tensiunea la microcontroler scade sub limita critică, funcția de **Brownout Reset** repornește automat robotul în meci.
  4. În plus, curentul mare trecut printr-un fir prea subțire îl încălzește periculos prin **efectul Joule** ($P = I^2 \cdot R$).
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă tehnică arătând scala AWG, căderea de tensiune pe fir subțire și semnalul de reset brownout]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Explicați că fenomenul de brownout este motivul pentru care un robot se restartează când accelerează motoarele.*

---

### Slide 4: Conectori: Pitch & Mechanical Keying
- **Titlu**: Conectorii de Semnal și Putere: Pitch, DuPont, JST și XT30
- **Subtitlu**: Distanța Dintre Pini (Pitch) și Conexiuni Sigure la Vibrații
- **Propoziții de Citit la Tablă**:
  1. **Pin Pitch** reprezintă distanța milimetrică dintre centrele a doi pini vecini: standard clasic **2.54 mm** și compact **2.00 mm**.
  2. **Conectorii DuPont (pitch 2.54 mm)** sunt foarte buni pe breadboard, dar nu au clemă de blocare și pot ieși la vibrații puternice.
  3. **Conectorii JST-PH (pitch 2.0 mm) și JST-XH** au o clemă de blocare fermă care nu lasă cablul să se deconecteze pe robot.
  4. **Conectorii XT30** rezistă la 30A continuu și au ghidaj asimetric (**mechanical keying**), fiind imposibil să conectăm bateria invers.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie alăturată cu un conector DuPont 2.54mm, un conector alb JST-PH 2.0mm și o mufă galbenă XT30]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați conectorii fizici și evidențiați cum ghidajul de pe XT30 protejează robotul de scurtcircuit.*

---

### Slide 5: Trusa de Scule & Verificarea Circuitului
- **Titlu**: Sculele Profesionale pentru Cablare și Testul de Continuitate
- **Subtitlu**: Wire Stripper, Crimper cu Clichet, Letcon și Multimetru
- **Propoziții de Citit la Tablă**:
  1. Cleștele de dezizolat (**wire stripper**) taie curat mantaua de silicon fără să ciupească lițele de cupru din interior.
  2. Cleștele de sertizat (**crimper cu clichet**) prinde metalul în două zone: pe conductor pentru contact electric și pe izolație pentru rezistență.
  3. Letconul (**soldering iron**) și tubul termic (**heat shrink**) creează conexiuni permanente și izolate profesional.
  4. Multimetrul digital pe modul sonerie (**continuity buzzer**) confirmă traseul curentului și ne asigură că nu avem scurtcircuit între VCC și GND!
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie de banc de lucru cu wire stripper, crimper, letcon și multimetru digital]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați cum cleștele de crimpare nu se deschide până când nu strânge complet pinul și demonstrați testul de buzzer.*
