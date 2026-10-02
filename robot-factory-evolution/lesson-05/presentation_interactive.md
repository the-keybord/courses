# Prezentare Interactivă: Lecția 05 [RBF2.5] – Metode de Măsurare a Distanței în Robotică

---

### 🎨 Canva AI Master Prompt (Format Lectură Interactivă la Tablă)

```text
Creează o prezentare educațională teoretică și interactivă foarte scurtă de 4 slide-uri (format 16:9 widescreen) destinată elevilor de 11–15 ani, pentru Lecția 05 din cursul Robot Factory: Evolution.
Scopul prezentării: Elevii citesc pe rând informația teoretică cu voce tare de pe tablă/ecran înainte de a trece la asamblarea practică a robotului.
Structură pe slide: Fiecare slide conține exact 4 propoziții fluente, complete gramatical, numerotate și bine spațiate vizual în carduri mari, ușor de citit de la distanță.
Stil vizual: Modern, curat, mature-tech, fundaluri profesionale în tonuri de gri antracit/bleumarin profund (#0f172a), cu text mare, font sans-serif foarte lizibil și contrast ridicat. Accente de cyan electric (#06b6d4), albastru intens (#3b82f6) și portocaliu de alertă (#f97316).
Include imagini ilustrative explicative pe fiecare slide [Placeholder Imagine: ...] pentru a susține vizual textul citit.
Prezentarea se concentrează exclusiv pe metodele fizice de măsurare a distanței: bumpere mecanice, senzori optici IR, sonar ultrasonic Time of Flight și tehnologia laser LiDAR.
```

---

## Structura Slide-urilor (Format pentru Lectură cu Voce Tare la Tablă)

---

### Slide 1: Contactul Mecanic: Bumpere și Microswitch-uri
- **Titlu**: Contactul Fizic Direct: Bumpere și Microswitch-uri
- **Subtitlu**: Cum Simte Robotul Impactul prin Întrerupătoare Mecanice
- **Propoziții de Citit la Tablă**:
  1. Înainte de a dezvolta senzori electronici complecși, inginerii au dotat roboții cu bare de protecție frontale numite **bumpere mecanice**.
  2. În spatele barei elastice se află un simplu comutator mecanic numit **microswitch**, care își schimbă starea electrică în momentul atingerii unui perete.
  3. Această metodă de contact direct este extrem de robustă, ieftină și nu poate fi deranjată de lumina din cameră sau de zgomot.
  4. Principalul dezavantaj este că robotul nu poate măsura distanța din timp, fiind capabil să reacționeze doar după ce s-a lovit fizic de obstacol.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie detaliată a unui bumper frontal de robot cu microswitch-uri mecanice și lamelă metalică flexibilă]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând propozițiile cu voce tare. Subliniați că bumperul este cel mai simplu senzor digital de tip ON/OFF.*

---

### Slide 2: Senzorii Optici: Fascicule de Lumină Infraroșu (IR)
- **Titlu**: Viziunea Optică: Senzori cu Raze Infraroșu (IR)
- **Subtitlu**: LED Emițător, Fototranzistor și Viteza Luminii
- **Propoziții de Citit la Tablă**:
  1. Senzorii optici folosesc o diodă **LED** care emite impulsuri de lumină în spectrul infraroșu invizibil pentru ochiul uman.
  2. Când această rază de lumină atinge un obstacol din fața robotului, ea este reflectată înapoi către un **fototranzistor** receptor.
  3. Deoarece lumina călătorește cu o viteză uriașă de **300.000 de kilometri pe secundă**, răspunsul senzorului este practic instantaneu.
  4. Un punct slab important este că suprafețele negre sau mate absorb lumina infraroșie, putând face ca unele obstacole să pară complet invizibile.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă optică modernă arătând reflexia fasciculului IR emis de LED pe o suprafață albă vs absorbția pe o suprafață neagră]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Explicați pe scurt de ce culoarea obstacolului afectează cantitatea de lumină reflectată.*

---

### Slide 3: Ecou Acustic: Sonarul Ultrasonic și Time of Flight
- **Titlu**: Măsurarea prin Sunet: Sonarul Ultrasonic
- **Subtitlu**: 40 kHz, Traductoare Piezo-Electrice și Calculul Distanței
- **Propoziții de Citit la Tablă**:
  1. Senzorul ultrasonic emite rafale scurte de unde sonore la o frecvență înaltă de **40 kHz**, complet inaudibilă pentru urechea umană.
  2. Măsurarea distanței se bazează pe principiul **Time of Flight**, adică cronometrarea exactă a timpului în care ecoul sonor se întoarce la receptor.
  3. Cunoscând viteza sunetului în aer de circa **343 de metri pe secundă**, microcontrolerul calculează distanța împărțind timpul măsurat la doi.
  4. Spre deosebire de senzorii optici, sonarul măsoară impecabil distanța indiferent dacă obstacolul este alb, negru sau din plastic transparent.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Schiță grafică clară a senzorului HC-SR04 trimițând unde sonore la 40 kHz spre un perete și recepționând ecoul reflectat]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Întrebați clasa de ce împărțim timpul la doi (drumul parcurs este dus-întors).*

---

### Slide 4: Precizie Maximă: Tehnologia Laser LiDAR
- **Titlu**: Scanarea Spațială: Tehnologia Laser LiDAR
- **Subtitlu**: Mii de Puncte Laser pe Secundă și Cartografiere 360°
- **Propoziții de Citit la Tablă**:
  1. Tehnologia **LiDAR** folosește fascicule laser invizibile de mare putere pentru a măsura timpul de reflexie al luminii cu o precizie milimetrică.
  2. Prin rotirea rapidă a capului optic, senzorul poate trimite mii de impulsuri laser pe secundă în toate direcțiile, generând o hartă completă a camerei.
  3. Acest sistem avansat reprezintă ochii principali ai mașinilor autonome moderne și ai aspiratoarelor robot inteligente care navighează prin locuințe.
  4. Deși este incredibil de precis, un senzor LiDAR are un preț ridicat și necesită o putere de calcul mare pentru a procesa norul dens de puncte.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Reprezentare vizuală a unei hărți digitale 360 de tip point-cloud generată de un senzor LiDAR pe un vehicul autonom]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând. Încheiați prezentarea subliniind că astăzi ne concentrăm pe asamblarea mecanică a șasiului, pregătind structura pentru acești senzori.*
