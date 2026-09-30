# Quiz Kahoot: Lecția 04 [RBF1.4] – Tipuri de Cabluri, Conectori și Fizica Conexiunilor Electrice

- **Cod Lecție**: RBF1.4
- **Număr Întrebări**: 13
- **Format**: 4 Opțiuni per întrebare (Răspunsuri ultra-scurte de 1–3 cuvinte, lungimi echilibrate)
- **Focalizare Didactică**: 100% Teorie Inginerească (Direct aliniat cu cele 5 slide-uri din prezentarea interactivă: materiale conductoare, izolații din silicon vs PVC, standardul AWG, căderea de tensiune, conectori DuPont/JST/XT, trusa de scule și testul de continuitate)
- **Platformă Recomandată**: Kahoot! / Quizizz

---

### Întrebarea 1
*(Slide 1)* Ce metal este standardul de aur pentru cablurile din robotica mobilă?

- A) Oțel simplu
- B) Tinned copper *(Corect)*
- C) Aluminiu ieftin
- D) Plumb moale

> **Explicație**: Tinned copper (cupru cu strat fin de staniu) combină conductivitatea excelentă a cuprului cu protecția împotriva oxidării și permite lipirea instantanee cu letconul.

---

### Întrebarea 2
*(Slide 1)* De ce folosim exclusiv stranded wire (fir flexibil) pe roboții mobili?

- A) Rezistă la vibrații *(Corect)*
- B) Este mai greu
- C) Are preț dublu
- D) Ține forma fixă

> **Explicație**: Firul stranded wire este format din zeci de lițe fine de cupru, rezistând la mii de mișcări fără să se rupă la vibrațiile motoarelor.

---

### Întrebarea 3
*(Slide 1)* Ce dezavantaj major au cablurile ieftine din aluminiu placat cu cupru (CCA)?

- A) Conduc prea bine
- B) Sunt casante *(Corect)*
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

> **Explicație**: Izolația din silicon rezistă la temperaturi între -60°C și +200°C și nu se topește dacă atinge accidental vârful letconului încins la 350°C.

---

### Întrebarea 5
*(Slide 3)* Ce indică un număr mai mic în standardul inversat AWG (American Wire Gauge)?

- A) Fir mai subțire
- B) Fir mai gros *(Corect)*
- C) Tensiune mai mică
- D) Lungime mai mare

> **Explicație**: Sistemul AWG are o logică inversată: un număr mic (ex. 18 AWG) înseamnă un fir gros de putere, iar un număr mare (ex. 28 AWG) înseamnă un fir subțire de semnal.

---

### Întrebarea 6
*(Slide 3)* Ce cabluri AWG sunt recomandate pentru semnalele logice ale senzorilor?

- A) 10–12 AWG
- B) 14–16 AWG
- C) 26–28 AWG *(Corect)*
- D) 4–6 AWG

> **Explicație**: Semnalele digitale de la senzori transportă curenți infimi, fiind ideale cablurile subțiri, ușoare și flexibile de 26–28 AWG.

---

### Întrebarea 7
*(Slide 3)* Ce fenomen periculos apare dacă alimentăm motoarele prin cabluri prea subțiri?

- A) Creștere de frecvență
- B) Voltage drop (cădere) *(Corect)*
- C) Scădere de temperatură
- D) Inversare magnetică

> **Explicație**: Rezistența mare a unui fir subțire produce o cădere mare de tensiune (voltage drop) când motoarele accelerează, ducând la resetarea procesorului.

---

### Întrebarea 8
*(Slide 3)* Ce circuit intern de protecție resetează microcontrolerul când tensiunea scade brusc?

- A) Brownout detector *(Corect)*
- B) Modulul Bluetooth
- C) Senzorul giroscopic
- D) Convertorul analogic

> **Explicație**: Detectorul de brownout oprește și resetează procesorul dacă tensiunea de alimentare scade sub pragul minim de funcționare.

---

### Întrebarea 9
*(Slide 4)* Ce reprezintă noțiunea de „pin pitch" la un conector?

- A) Grosimea plasticului
- B) Distanța între pini *(Corect)*
- C) Curentul maxim
- D) Lungimea carcasei

> **Explicație**: Pin pitch reprezintă distanța milimetrică exactă măsurată de la centrul unui pin metalic până la centrul pinului vecin.

---

### Întrebarea 10
*(Slide 4)* Ce pin pitch au conectorii compacți JST-PH frecvent folosiți pe modulele de senzori?

- A) 2.00 mm *(Corect)*
- B) 3.50 mm
- C) 0.50 mm
- D) 5.08 mm

> **Explicație**: Conectorii JST-PH au un pitch compact de 2.00 mm și au o clemă de blocare fermă care previne deconectarea la vibrații.

---

### Întrebarea 11
*(Slide 4)* Ce rol are ghidajul asimetric (mechanical keying) la conectorii de forță XT30?

- A) Previne conectarea inversă *(Corect)*
- B) Mărește viteza motorului
- C) Reduce greutatea mufei
- D) Schimbă culoarea firului

> **Explicație**: Forma asimetrică (mechanical keying) face fizic imposibilă cuplarea inversă a plusului cu minusul, protejând microcontrolerul de ardere.

---

### Întrebarea 12
*(Slide 5)* Ce prind aripioarele din spate ale pinului metalic la o sertizare profesională (crimping)?

- A) Miezul de cupru
- B) Izolația cablului *(Corect)*
- C) Punctul de lipire
- D) Vârful letconului

> **Explicație**: Aripioarele din spate strâng mantaua de izolație a cablului (strain relief), preluând forțele de tragere mecanică pentru a proteja conductorul intern.

---

### Întrebarea 13
*(Slide 5)* Ce trebuie să indice multimetrul pe sonerie (continuity buzzer) între pinii VCC și GND?

- A) Bip sonor continuu
- B) Fără sunet (izolație) *(Corect)*
- C) Tensiune de 220V
- D) Rezistență zero

> **Explicație**: Între linia pozitivă de alimentare (VCC) și masă (GND) trebuie să existe izolație totală (fără sunet); un bip ar semnala un scurtcircuit direct care ar arde placa la alimentare!
