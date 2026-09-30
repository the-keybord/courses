# Prezentare Interactivă: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

---

### 🎨 Canva AI Master Prompt (Format Lectură Interactivă la Tablă)

```text
Creează o prezentare educațională teoretică și interactivă compactă de 5 slide-uri (format 16:9 widescreen) destinată elevilor de 11–14 ani, pentru Lecția 04 din cursul Robot Factory: Creation.
Scopul prezentării: Elevii citesc pe rând informația teoretică cu voce tare de pe tablă/ecran.
Structură pe slide: Fiecare slide conține exact 4 propoziții clare, numerotate și bine spațiate vizual în carduri mari, ușor de citit de la distanță.
Stil vizual: Modern, tehnologic, mature-tech, fundaluri profesionale în tonuri de gri antracit/bleumarin profund, cu text mare, font sans-serif foarte lizibil și contrast ridicat. Accente de cupru metalic, albastru electric și verde neon.
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
  1. În robotica mobilă, cablurile și conectorii electrici reprezintă sistemul circulator și nervos al robotului.
  2. Conductorul optim este **tinned copper** (cupru cu strat de staniu), protejat împotriva oxidării și ușor de lipit cu letconul.
  3. Pe roboți folosim exclusiv **stranded wire** (fir flexibil din multe lițe subțiri), evitând sârma rigidă **solid core** care se rupe la vibrații.
  4. Cablurile ieftine din aluminiu (**CCA**) sunt casante și au o rezistență electrică cu 60% mai mare decât cuprul, fiind interzise pe roboți.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Comparație macro foto între lițele strălucitoare de tinned copper din stranded wire și un cablu solid core secționat]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând propozițiile. Arătați o bucățică de stranded wire și una de solid core, îndoindu-le repetat.*

---

### Slide 2: Mantaua Izolatoare: De Ce Siliconul e Rege în Robotică?
- **Titlu**: Izolația Cablului: Silicon vs PVC vs Teflon
- **Subtitlu**: Temperatură, Flexibilitate și Rezistență Mecanică
- **Propoziții de Citit la Tablă**:
  1. **Cablurile cu izolație de silicon** sunt ultra-flexibile, plăcute la atingere și rezistă la temperaturi între **-60°C și +200°C**.
  2. Dacă atingeți accidental mantaua de silicon cu vârful de la letcon (**soldering iron**) încins la **350°C**, aceasta nu se topește și nu scoate fum.
  3. **Cablurile din PVC** (cele obișnuite) sunt rigide și se topesc instantaneu la căldură, lăsând firul de cupru dezvelit.
  4. **Teflonul (PTFE)** oferă o izolație foarte subțire și dură, dar este costisitor și greu de tăiat cu un stripper obișnuit.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Test comparativ termic – letconul atingând un cablu de PVC topit vs un cablu de silicon intact]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Demonstrați rezistența termică a siliconului atingând scurt un cablu cu letconul în fața clasei.*

---

### Slide 3: Standardul AWG, Căderea de Tensiune & Resetul de Brownout
- **Titlu**: Standardul AWG, Căderea de Tensiune (Voltage Drop) și Efectul Joule
- **Subtitlu**: Logica Inversată a Grosimii și Riscul de Resetare a Robotului
- **Propoziții de Citit la Tablă**:
  1. Grosimea cablurilor se măsoară prin sistemul inversat **AWG (American Wire Gauge)**: număr mic = fir gros de putere (14–22 AWG); număr mare = fir subțire de semnal (26–28 AWG).
  2. Cu cât un fir este mai subțire, cu atât rezistența lui e mai mare, generând o cădere de tensiune (**voltage drop**) când pornesc motoarele.
  3. Când tensiunea la procesor scade sub pragul critic, **detectorul de brownout** resetează automat placa Micro:Bit în timpul meciului.
  4. În plus, energia pierdută pe un cablu subdimensionat se transformă în căldură periculoasă prin **efectul Joule** ($P = I^2 \cdot R$).
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă tehnică arătând scala AWG, căderea de tensiune pe fir subțire și semnalul de reset brownout]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Subliniați că fenomenul de brownout este motivul pentru care un robot se poate bloca chiar cu bateria încărcată.*

---

### Slide 4: Conectori de Semnal și Putere: Pitch & Mechanical Keying
- **Titlu**: Conectorii de Semnal și Forță: Pitch, DuPont, JST și XT30
- **Subtitlu**: Distanța Dintre Pini (Pitch) și Conexiuni Sigure la Vibrații
- **Propoziții de Citit la Tablă**:
  1. **Pin Pitch** reprezintă distanța milimetrică dintre centrele a doi pini vecini: standard clasic **2.54 mm** și compact **2.00 mm**.
  2. **Conectorii DuPont (pitch 2.54 mm)** sunt universali pe breadboard, dar nu au clemă de blocare și pot sări la vibrații intense.
  3. **Conectorii JST-PH (pitch 2.0 mm) și JST-XH** oferă fixare fermă cu clic mecanic (latch) pentru module de senzori.
  4. **Conectorii XT30** suportă 30A continuu și au formă asimetrică polarizată (**mechanical keying**), făcând imposibilă conectarea inversă a bateriei.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie alăturată cu un conector DuPont 2.54mm, un conector alb JST-PH 2.0mm și o mufă galbenă XT30]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați conectorii fizici și evidențiați cum profilul XT30 protejează robotul de ardere.*

---

### Slide 5: Trusa de Scule & Verificarea Circuitului
- **Titlu**: Sculele Profesionale pentru Cablaj și Testul de Continuitate
- **Subtitlu**: Wire Stripper, Crimper cu Clichet, Letcon și Multimetru
- **Propoziții de Citit la Tablă**:
  1. **Wire Stripper (cleștele de dezizolat)** taie curat mantaua de silicon la cote precise, fără a rupe lițele de cupru din miez.
  2. **Crimper cu Clichet (cleștele de sertizat)** strânge metalul în două zone: pe conductor pentru contact electric și pe izolație pentru rezistență la tragere.
  3. **Soldering Iron (letconul) și Heat Shrink (tubul termic)** asigură îmbinări permanente izolate profesional împotriva scurtcircuitelor.
  4. **Multimetrul digital pe modul sonerie (continuity buzzer)** confirmă traseul fiecărui cablu și ne asigură că nu avem scurtcircuit între VCC și GND!
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie de banc de lucru cu wire stripper, crimper, letcon și multimetru digital]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați cum cleștele de crimpare nu se deschide până la strângerea completă și demonstrați testul de buzzer.*
