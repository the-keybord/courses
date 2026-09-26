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
- **Subtitlu**: Cupru Cositorit (Tinned Copper) vs Aluminiu | Fir Lițat (Stranded) vs Masiv (Solid Core)
- **Propoziții de Citit la Tablă**:
  1. În robotica mobilă, cablurile și conectorii electrici reprezintă echivalentul sistemului circulator și nervos al robotului.
  2. Conductorul optim este **cuprul cositorit (*tinned copper*)**, protejat împotriva oxidării și pregătit pentru o lipire (*soldering*) instantanee cu fludorul.
  3. Pe roboți mobili folosim exclusiv **fir multifilar lițat (*stranded wire*)**, rezistent la vibrații, evitând sârma monofilară masivă (*solid core*) care se rupe la îndoire.
  4. Cablurile ieftine din aluminiu placat (*CCA*) sunt casante și au o rezistență electrică cu 60% mai mare decât cuprul, fiind interzise pe roboți.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Comparație macro foto între lițele strălucitoare de cupru cositorit multifilar și un cablu masiv secționat]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând propozițiile. Arătați o bucățică de fir lițat și îndoiți-o repetat pentru a demonstra flexibilitatea mecanică.*

---

### Slide 2: Mantaua Izolatoare: De Ce Siliconul e Rege în Robotică?
- **Titlu**: Izolația Electrică (Insulation): Silicon vs PVC vs Teflon
- **Subtitlu**: Temperatură, Flexibilitate și Rezistență Mecanică
- **Propoziții de Citit la Tablă**:
  1. **Izolația din silicon (*silicone insulation*)** este ultra-flexibilă, plăcută la atingere și rezistă la temperaturi extreme între **-60°C și +200°C**.
  2. Dacă atingeți accidental mantaua de silicon cu vârful ciocanului de lipit (*soldering iron*) încins la **350°C**, aceasta nu se topește și nu scoate fum.
  3. **Izolația clasică din PVC (*polyvinyl chloride*)** este mai rigidă și se topește instantaneu la căldură, lăsând conductorul de cupru dezvelit.
  4. **Teflonul (*PTFE*)** oferă o izolație aerospațială extrem de subțire și dură, dar este costisitor și greu de dezizolat (*wire stripping*).
- **Elemente Vizuale**:
  - [Placeholder Imagine: Test comparativ de rezistență termică – letconul atingând un cablu de PVC topit vs un cablu siliconic intact]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Demonstrați rezistența termică a siliconului atingând scurt un cablu cu letconul în fața clasei.*

---

### Slide 3: Standardul AWG, Căderea de Tensiune & Resetul de Brownout
- **Titlu**: Standardul AWG, Căderea de Tensiune (Voltage Drop) și Efectul Joule
- **Subtitlu**: Logica Inversată a Grosimii și Riscul de Resetare a Microcontrolerului
- **Propoziții de Citit la Tablă**:
  1. Grosimea cablurilor se măsoară prin sistemul inversat **AWG (*American Wire Gauge*)**: număr mic = fir gros de putere (14–22 AWG); număr mare = fir subțire de semnal (26–28 AWG).
  2. Cu cât un fir este mai subțire, cu atât rezistența sa ($R$) este mai mare, generând o **cădere de tensiune (*voltage drop*)**: $V_{drop} = I \cdot R$ când pornesc motoarele.
  3. Dacă tensiunea la microcontroler scade sub pragul critic, **detectorul de brownout (*brownout detector*)** resetează automat procesorul în timpul meciului.
  4. În plus, energia pierdută pe un cablu subdimensionat se transformă în căldură periculoasă prin **efectul Joule (*Joule heating*)**: $P = I^2 \cdot R$.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă tehnică curată arătând scala AWG, căderea de tensiune pe fir subțire și semnalul de reset brownout]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Subliniați că fenomenul de brownout este motivul pentru care un robot se poate bloca chiar cu bateria încărcată.*

---

### Slide 4: Conectori de Semnal și Putere: Pitch & Polarizare (Keying)
- **Titlu**: Conectorii de Semnal și Forță: Pitch, DuPont, JST și XT30
- **Subtitlu**: Pasul Pinilor (Pin Pitch) și Conexiuni Sigure la Vibrații
- **Propoziții de Citit la Tablă**:
  1. **Pasul pinilor (*pin pitch*)** reprezintă distanța milimetrică dintre pini adiacenți: standard clasic **2.54 mm (0.1")** și miniatural **2.00 mm**.
  2. **Conectorii DuPont (pas 2.54 mm)** sunt universali pe breadboard, dar nu au clemă de blocare (*latch*) și pot sări la vibrații intense.
  3. **Conectorii JST-PH (pas 2.0 mm) și JST-SM** oferă fixare fermă (*friction lock / positive latch*) cu clic mecanic pentru module de senzori.
  4. **Conectorii de forță XT30** suportă 30A continuu și au formă asimetrică polarizată (**keying**), făcând fizic imposibilă conectarea inversă a alimentării (*reverse polarity*).
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie alăturată cu un conector DuPont 2.54mm, un conector alb JST-PH 2.0mm și o mufă galbenă XT30 polarizată]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați conectorii fizici și evidențiați de ce forma asimetrică a mufei XT30 protejează cipul de ardere.*

---

### Slide 5: Trusa de Scule & Verificarea Circuitului
- **Titlu**: Sculele Profesionale pentru Cablaj și Testul de Continuitate
- **Subtitlu**: Clește Stripper, Crimper cu Clichet, Letcon și Multimetru
- **Propoziții de Citit la Tablă**:
  1. **Cleștele de dezizolat (*wire stripper*)** taie doar mantaua de silicon la cote precise, fără a ciupi sau reduce firișoarele de cupru.
  2. **Cleștele de sertizat cu clichet (*ratcheting crimper*)** strânge o pereche de aripioare pe cupru (contact electric) și a doua pereche pe izolație (*strain relief*).
  3. **Ciocanul de lipit (*soldering iron*) și tubul termocontractil (*heat shrink*)** asigură îmbinări permanente izolate profesional împotriva scurtcircuitelor.
  4. **Multimetrul digital pe modul sonerie (*continuity buzzer*)** confirmă continuitatea pe fiecare linie și garantează absența oricărui scurtcircuit între VCC și GND!
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie de banc de lucru organizat cu stripper calibrat, crimper cu clichet, letcon și multimetru digital]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Arătați cum cleștele de sertizat realizează dubla strângere mecanică și demonstrați testul de buzzer pe multimetru.*
