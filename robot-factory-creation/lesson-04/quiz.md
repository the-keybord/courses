# Quiz Kahoot: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

- **Cod Lecție**: RBF1.4
- **Număr Întrebări**: 13
- **Format**: 4 Opțiuni per întrebare (Răspunsuri ultra-scurte de 1–3 cuvinte, lungimi echilibrate)
- **Focalizare Didactică**: 100% Teorie Inginerească (Direct aliniat cu cele 5 slide-uri din prezentarea interactivă: materiale conductoare, izolații din silicon vs PVC, standardul AWG, căderea de tensiune, conectori DuPont/JST/XT, trusa de scule și testul de continuitate)
- **Platformă Recomandată**: Kahoot! / Quizizz

---

### Întrebarea 1
*(Slide 1)* Ce metal este standardul de aur pentru cablurile din robotica mobilă?

- A) Fier galvanizat
- B) Cupru cositorit *(Corect)*
- C) Aluminiu simplu
- D) Plumb moale

> **Explicație**: Cuprul cositorit (*tinned copper*) combină conductivitatea electrică ridicată a cuprului cu rezistența staniului la oxidare și permite o lipire (*soldering*) instantanee cu fludorul.

---

### Întrebarea 2
*(Slide 1)* De ce folosim exclusiv cabluri multifilare lițate (*stranded wire*) pe roboții mobili?

- A) Rezistă la vibrații *(Corect)*
- B) Sunt mai grele
- C) Au preț dublu
- D) Țin forma fixă

> **Explicație**: Firul multifilar lițat este compus din zeci de micro-firișoare fine răsucite, rezistând la mii de mișcări fără să se fractureze din cauza vibrațiilor motoarelor.

---

### Întrebarea 3
*(Slide 1)* Ce dezavantaj major au cablurile ieftine din aluminiu placat cu cupru (CCA)?

- A) Conduc prea bine
- B) Sunt foarte casante *(Corect)*
- C) Sunt prea flexibile
- D) Nu se încălzesc

> **Explicație**: Aluminiul placat (CCA) este casant, se rupe rapid la îndoire și are o rezistență electrică cu 60% mai mare decât cuprul pur, fiind interzis pe roboți.

---

### Întrebarea 4
*(Slide 2)* Ce proprietate termică face siliconul materialul ideal de izolație în robotică?

- A) Nu se topește *(Corect)*
- B) Este magnetic
- C) Conduce curentul
- D) Este rigid

> **Explicație**: Izolația din silicon rezistă la temperaturi între -60°C și +200°C și nu se topește dacă atinge accidental vârful letconului încins la 350°C, spre deosebire de PVC.

---

### Întrebarea 5
*(Slide 3)* Ce indică un număr mai mic în standardul inversat AWG (*American Wire Gauge*)?

- A) Fir mai subțire
- B) Fir mai gros *(Corect)*
- C) Tensiune mai mică
- D) Lungime mai mare

> **Explicație**: Sistemul AWG are o logică inversată: un număr mic (ex. 18 AWG) înseamnă un fir gros de putere, iar un număr mare (ex. 28 AWG) înseamnă un fir foarte subțire de semnal.

---

### Întrebarea 6
*(Slide 3)* Ce gamă de cabluri AWG este recomandată pentru semnalele logice ale senzorilor?

- A) 10–12 AWG
- B) 14–16 AWG
- C) 26–28 AWG *(Corect)*
- D) 4–6 AWG

> **Explicație**: Semnalele digitale de la senzori transportă curenți infimi (sub 20 mA), fiind ideale cablurile subțiri, ușoare și flexibile de 26–28 AWG.

---

### Întrebarea 7
*(Slide 3)* Ce fenomen fizic periculos apare dacă alimentăm motoarele prin cabluri prea subțiri?

- A) Creștere de frecvență
- B) Cădere de tensiune *(Corect)*
- C) Scădere de temperatură
- D) Inversare magnetică

> **Explicație**: Conform Legii lui Ohm ($V = I \cdot R$), rezistența mare a unui fir subțire produce o cădere mare de tensiune (*voltage drop*) la pornirea motoarelor, ducând la resetarea procesorului.

---

### Întrebarea 8
*(Slide 3)* Ce circuit intern de protecție resetează microcontrolerul când tensiunea scade brusc?

- A) Detectorul de brownout *(Corect)*
- B) Modulul Bluetooth
- C) Senzorul giroscopic
- D) Convertorul analogic

> **Explicație**: Detectorul de brownout (*brownout detector*) oprește și resetează procesorul dacă tensiunea de alimentare scade sub pragul minim reglementat.

---

### Întrebarea 9
*(Slide 4)* Ce reprezintă noțiunea de „pas al pinilor" (*pin pitch*) la un conector?

- A) Grosimea plasticului
- B) Distanța între pini *(Corect)*
- C) Curentul maxim admis
- D) Lungimea carcasei

> **Explicație**: Pasul pinilor reprezintă distanța milimetrică exactă măsurată de la centrul unui pin metalic până la centrul pinului adiacent (vecin).

---

### Întrebarea 10
*(Slide 4)* Ce pas au conectorii compacți JST-PH frecvent utilizați pe modulele de senzori?

- A) 2.00 mm *(Corect)*
- B) 3.50 mm
- C) 0.50 mm
- D) 5.08 mm

> **Explicație**: Conectorii JST-PH au un pas compact de 2.00 mm și au o buză de blocare prin fricțiune (*friction lock*) care previne deconectarea la vibrații.

---

### Întrebarea 11
*(Slide 4)* Ce rol are forma asimetrică polarizată (*keying*) a mufelor de forță XT30?

- A) Previne inversarea polarității *(Corect)*
- B) Mărește viteza motorului
- C) Reduce greutatea mufei
- D) Schimbă culoarea firului

> **Explicație**: Forma asimetrică trapezoidală (polarizarea / *keying*) face fizic imposibilă cuplarea inversă a plusului cu minusul, protejând microcontrolerul de distrugere.

---

### Întrebarea 12
*(Slide 5)* Ce strâng aripioarele din spate ale pinului metalic la sertizarea profesională?

- A) Miezul de cupru
- B) Izolația cablului *(Corect)*
- C) Punctul de cositor
- D) Vârful letconului

> **Explicație**: Aripioarele din spate strâng mantaua de izolație a cablului (*strain relief*), preluând forțele mecanice de tracțiune pentru ca firișoarele de cupru să nu fie smulse.

---

### Întrebarea 13
*(Slide 5)* Ce trebuie să indice multimetrul pe sonerie (*continuity buzzer*) între pinii VCC și GND?

- A) Bip sonor continuu
- B) Fără sunet (izolație) *(Corect)*
- C) Tensiune de 220V
- D) Rezistență zero ohmi

> **Explicație**: Între linia pozitivă de alimentare (VCC) și masă (GND) trebuie să existe izolație totală (fără sunet); un bip ar semnala un scurtcircuit direct care ar arde placa la alimentare!
