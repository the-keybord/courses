# Quiz Kahoot: Lecția 04 [RBF2.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

- **Cod Lecție**: RBF2.4
- **Număr Întrebări**: 13
- **Format**: 4 Opțiuni per întrebare (Răspunsuri ultra-scurte de 1–3 cuvinte, lungimi echilibrate)
- **Focalizare Didactică**: 100% Teorie Inginerească (Materiale conductoare, izolații, standardul AWG, căderea de tensiune, conectori DuPont/JST/XT, trusa de unelte și testarea continuității)
- **Platformă Recomandată**: Kahoot! / Quizizz

---

### Întrebarea 1
Ce metal este standardul de aur în robotică datorită conductivității și faptului că nu oxidează?

- A) Oțel simplu
- B) Tinned copper *(Corect)*
- C) Aluminiu ieftin
- D) Zinc turnat

> **Explicație**: Tinned copper (cupru cu strat fin de staniu) combină conductivitatea excelentă a cuprului cu protecția împotriva oxidării și se lipește instantaneu cu letconul.

---

### Întrebarea 2
De ce folosim stranded wire (fir flexibil) în loc de solid core (sârmă rigidă) pe roboți mobili?

- A) Rezistă la vibrații *(Corect)*
- B) Este mai greu
- C) Are preț dublu
- D) Ține forma fixă

> **Explicație**: Cablul stranded wire conține zeci de micro-firișoare fine care oferă flexibilitate maximă și nu se rup la vibrațiile continue produse de motoare.

---

### Întrebarea 3
Ce proprietate majoră face cablurile din silicon superioare celor din PVC în atelier?

- A) Nu se topesc *(Corect)*
- B) Sunt magnetice
- C) Conduc curentul
- D) Sunt rigide

> **Explicație**: Izolația din silicon rezistă la temperaturi de peste +200°C și nu se topește dacă atinge accidental vârful încins al letconului la 350°C.

---

### Întrebarea 4
Ce indică un număr AWG mai mic în sistemul standard de clasificare a cablurilor?

- A) Fir mai subțire
- B) Fir mai gros *(Corect)*
- C) Lungime mai mare
- D) Tensiune mai joasă

> **Explicație**: Sistemul American Wire Gauge (AWG) funcționează invers: un număr mic (ex. 18 AWG) indică un fir gros de putere, iar un număr mare (ex. 28 AWG) indică un fir subțire de semnal.

---

### Întrebarea 5
Ce cabluri AWG sunt recomandate pentru transmiterea semnalelor logice de la senzori?

- A) 10–12 AWG
- B) 14–16 AWG
- C) 26–28 AWG *(Corect)*
- D) 4–6 AWG

> **Explicație**: Semnalele digitale de senzori (I2C, PWM, UART) transportă curenți infimi, fiind ideale cablurile subțiri și flexibile de 26–28 AWG.

---

### Întrebarea 6
Ce problemă gravă apare pe alimentarea robotului dacă folosim cabluri de putere prea subțiri?

- A) Creștere de frecvență
- B) Voltage drop (cădere) *(Corect)*
- C) Scădere de temperatură
- D) Inversare magnetică

> **Explicație**: Rezistența mare a unui fir subțire produce o cădere mare de tensiune (voltage drop) când motoarele accelerează, declanșând Brownout Reset la procesor.

---

### Întrebarea 7
În ce formă de energie se transformă pierderile electrice pe un cablu prea subțire (efectul Joule)?

- A) Unde radio
- B) Lumină albastră
- C) Căldură periculoasă *(Corect)*
- D) Câmp gravitațional

> **Explicație**: Puterea disipată prin efect Joule ($P = I^2 \cdot R$) transformă energia pierdută în căldură, existând riscul de topire a izolației și scurtcircuit.

---

### Întrebarea 8
Ce reprezintă noțiunea de „pin pitch" în specificațiile unui conector?

- A) Grosimea carcasei
- B) Distanța între pini *(Corect)*
- C) Curentul maxim
- D) Lungimea mufei

> **Explicație**: Pin pitch reprezintă distanța măsurată exact de la centrul unui pin metalic până la centrul pinului vecin.

---

### Întrebarea 9
Care este pin pitch-ul standard al conectorilor clasici DuPont folosiți pe breadboard?

- A) 1.00 mm
- B) 2.00 mm
- C) 2.54 mm *(Corect)*
- D) 5.08 mm

> **Explicație**: Pasul universal DuPont este de 2.54 mm (adică exact 0.1 inch).

---

### Întrebarea 10
Ce pin pitch au conectorii compacți JST-PH folosiți pe modulele moderne de senzori?

- A) 2.00 mm *(Corect)*
- B) 3.50 mm
- C) 0.50 mm
- D) 4.20 mm

> **Explicație**: Conectorii JST-PH au un pas compact de 2.00 mm și au o clemă de blocare fermă împotriva deconectării la mișcare.

---

### Întrebarea 11
Ce element constructiv previne introducerea inversă a conectorilor de baterie XT30 / XT60?

- A) Mechanical keying *(Corect)*
- B) Arc magnetic
- C) Cod de bare
- D) Culoare galbenă

> **Explicație**: Profilul asimetric polarizat (mechanical keying) face fizic imposibilă conectarea inversă a polilor plus și minus, protejând robotul de ardere.

---

### Întrebarea 12
La sertizare (crimping), ce prind aripioarele din spate ale pinului metalic?

- A) Conductorul dezizolat
- B) Izolația firului *(Corect)*
- C) Punctul de lipire
- D) Mufa din plastic

> **Explicație**: Aripioarele din spate strâng izolația exterioară (strain relief), preluând toate forțele de tragere mecanică pentru a proteja conductorul intern.

---

### Întrebarea 13
Ce trebuie să indice multimetrul la testul de continuitate între pinii VCC (+) și GND (-)?

- A) Bip sonor continuu
- B) Fără sunet (izolație) *(Corect)*
- C) Tensiune de 220V
- D) Rezistență zero

> **Explicație**: Între linia pozitivă (VCC) și masă (GND) trebuie să existe izolație totală (fără sunet); un bip ar însemna un scurtcircuit direct!
