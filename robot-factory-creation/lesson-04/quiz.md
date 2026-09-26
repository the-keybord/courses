# Quiz Kahoot: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

- **Cod Lecție**: RBF1.4
- **Număr Întrebări**: 13
- **Format**: 4 Opțiuni per întrebare (Răspunsuri ultra-scurte de 1–3 cuvinte, lungimi echilibrate)
- **Focalizare Didactică**: 100% Teorie Inginerească (Materiale conductoare, izolații, standardul AWG, căderea de tensiune, conectori DuPont/JST/XT, trusa de unelte și testarea continuității)
- **Platformă Recomandată**: Kahoot! / Quizizz

---

### Întrebarea 1
Ce metal este standardul de aur în robotica mobilă datorită conductivității și rezistenței la oxidare?

- A) Fier galvanizat
- B) Cupru cositorit *(Corect)*
- C) Aluminiu simplu
- D) Zinc turnat

> **Explicație**: Cuprul cositorit (tinned copper) combină conductivitatea electrică excelentă a cuprului cu rezistența staniului la oxidare și oferă o lipire instantanee cu fludorul.

---

### Întrebarea 2
De ce se preferă cablurile lițate (multifilare) în locul celor monofilare (masive) pe roboții mobili?

- A) Rezistă la vibrații *(Corect)*
- B) Sunt mai grele
- C) Au preț dublu
- D) Țin forma fixă

> **Explicație**: Cablurile lițate conțin zeci de micro-firișoare răsucite care oferă flexibilitate extremă și nu se fracturează sub efectul vibrațiilor continue provocate de motoare.

---

### Întrebarea 3
Ce proprietate termică majoră face siliconul superior PVC-ului la utilizarea în atelierul de electronică?

- A) Nu se topește *(Corect)*
- B) Este magnetic
- C) Conduce curentul
- D) Este rigid

> **Explicație**: Izolația din silicon rezistă la temperaturi de peste +200°C și nu se topește dacă atinge accidental vârful încins al letconului la 350°C, spre deosebire de PVC.

---

### Întrebarea 4
Ce indică un număr AWG mai mic în sistemul standard de clasificare a cablurilor?

- A) Conductor mai subțire
- B) Conductor mai gros *(Corect)*
- C) Lungime mai mare
- D) Tensiune mai joasă

> **Explicație**: Sistemul American Wire Gauge (AWG) este inversat: un număr mic (ex. 18 AWG) indică un fir gros cu secțiune mare, iar un număr mare (ex. 28 AWG) indică un fir foarte subțire.

---

### Întrebarea 5
Ce gamă de cabluri AWG este recomandată pentru transferul semnalelor logice slabe de la senzori?

- A) 10–12 AWG
- B) 14–16 AWG
- C) 26–28 AWG *(Corect)*
- D) 4–6 AWG

> **Explicație**: Semnalele logice și magistralele digitale (I2C, PWM, UART) transportă curenți infimi (sub 20 mA), fiind ideale conductoarele subțiri și flexibile de 26–28 AWG.

---

### Întrebarea 6
Ce fenomen periculos apare pe alimentarea robotului dacă folosim cabluri de putere prea subțiri?

- A) Creștere de frecvență
- B) Cădere de tensiune *(Corect)*
- C) Scădere de temperatură
- D) Inversare magnetică

> **Explicație**: Conform Legii lui Ohm ($V = I \cdot R$), rezistența ridicată a unui fir subțire produce o cădere mare de tensiune la pornirea motoarelor, ducând la resetarea automată a microcontrolerului (brownout).

---

### Întrebarea 7
În ce formă de energie se disipă pierderile electrice provocate de efectul Joule pe un cablu subdimensionat?

- A) Unde radio
- B) Lumină albastră
- C) Căldură excesivă *(Corect)*
- D) Câmp gravitațional

> **Explicație**: Puterea disipată prin efect Joule ($P = I^2 \cdot R$) transformă energia electrică pierdută în căldură, existând riscul de topire a izolației și scurtcircuit.

---

### Întrebarea 8
Ce reprezintă noțiunea de „pitch" (pas) în specificațiile tehnice ale unui conector?

- A) Grosimea carcasei
- B) Distanța între pini *(Corect)*
- C) Curentul maxim admis
- D) Lungimea totală conector

> **Explicație**: Pasul (pitch) reprezintă distanța măsurată exact de la centrul unui pin metalic până la centrul pinului adiacent (vecin).

---

### Întrebarea 9
Care este pasul standard al conectorilor clasici DuPont utilizați pe breadboard și plăci de dezvoltare?

- A) 1.00 mm
- B) 2.00 mm
- C) 2.54 mm *(Corect)*
- D) 5.08 mm

> **Explicație**: Pasul universal de laborator DuPont este de 2.54 mm, adică exact 0.1 inch (100 mils).

---

### Întrebarea 10
Ce pas au conectorii compacți JST-PH frecvent utilizați pe modulele moderne de senzori inteligenți?

- A) 2.00 mm *(Corect)*
- B) 3.50 mm
- C) 0.50 mm
- D) 4.20 mm

> **Explicație**: Conectorii JST-PH au un pas compact de 2.00 mm și dispun de o buză de blocare prin fricțiune care previne decuplarea accidentală la mișcare.

---

### Întrebarea 11
Ce element constructiv previne introducerea inversă a conectorilor de mare putere XT30 / XT60?

- A) Forma polarizată *(Corect)*
- B) Arc magnetic
- C) Cod de bare
- D) Culoare galbenă

> **Explicație**: Profilul asimetric trapezoidal (polarizarea / keying) face fizic imposibilă cuplarea inversă a polilor plus și minus, protejând microcontrolerul de ardere.

---

### Întrebarea 12
Ce strâng aripioarele posterioare ale unui pin metalic la o sertizare profesională cu cleștele de sertizat?

- A) Miezul de cupru
- B) Izolația cablului *(Corect)*
- C) Punctul de cositor
- D) Fălcile cleștelui

> **Explicație**: Aripioarele din spate se strâng ferm pe izolația cablului (strain relief), preluând toate forțele mecanice de tragere pentru a proteja conductorul intern.

---

### Întrebarea 13
Ce trebuie să indice multimetrul la testul de continuitate între pinii VCC și GND ai unui cablu corect asamblat?

- A) Bip sonor continuu
- B) Fără sunet (izolație) *(Corect)*
- C) Tensiune de 220V
- D) Rezistență de 0 ohmi

> **Explicație**: Între linia de alimentare pozitivă (VCC) și masă (GND) trebuie să existe izolație totală (rezistență infinită / fără sunet); un bip ar semnala un scurtcircuit distrugător!
