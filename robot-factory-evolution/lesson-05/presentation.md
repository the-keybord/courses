# Prezentare: Lecția 05 [RBF2.5] – Metode de Măsurare a Distanței în Robotică

---

### 🎨 Canva AI Master Prompt (Copiază și inserează în Canva Magic Design)

```text
Creează o prezentare educațională concisă de 5 slide-uri (format 16:9 widescreen) destinată elevilor de 11–15 ani din cursul Robot Factory: Evolution.
Tema prezentării: Cum măsoară roboții distanța până la obiecte? Comparație între metode fizice (Bumper mecanic, Senzori IR, Ultrasunete Time of Flight și LiDAR).
Stil vizual: Modern, curat, mature-tech, fundaluri profesionale în tonuri de gri antracit/bleumarin profund (#0f172a), carduri semi-transparente cu accente cyan electric (#06b6d4), albastru intens (#3b82f6) și portocaliu de alertă (#f97316).
Fonturi: Header sans-serif curat și text schematic foarte lizibil.
Structură pe fiecare slide: Titlu clar, subtitlu tehnic, 3-4 puncte concise cu detalii inginerești și un placeholder vizual explicativ [Placeholder Imagine: ...].
Prezentarea teoretică este foarte scurtă și densă, permițând trecerea rapidă la atelierul de asamblare mecanică a șasiului.
```

---

## Structura Slide-urilor

---

### Slide 1: Cum Simte un Robot Lumea? & Contactul Mecanic (Bumpers)
- **Titlu**: Cum Simte un Robot Spațiul? & Contactul Fizic
- **Subtitlu**: De la Mersul Orb la Detecția prin Microswitch-uri
- **Puncte Cheie**:
  - Fără senzori de distanță, un robot mobil se deplasează "orbește" și intră în coliziune cu primul perete.
  - **Bumperul Mecanic**: Folosește un comutator simplu (**microswitch**) cu lamă flexibilă montat pe bara de protecție a robotului.
  - **Principiul de Detecție**: Funcționează pe principiul contactului direct (stare logică ON/OFF la impact).
  - **Avantaje & Limite**: Este extrem de robust și ieftin, dar reacționează abia după ce coliziunea fizică s-a produs.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie detaliată a unui robot echipat cu o bară elastică frontală și microswitch-uri de impact]
- **Ghid Profesor (Speaker Notes)**:
  *Introduceți tema: întrebați elevii ce se întâmplă dacă mergem cu ochii închiși într-o cameră necunoscută. Atingerea cu mâna este echivalentul unui bumper mecanic.*

---

### Slide 2: Senzorii Optici & Infraroșu (IR Reflexiv)
- **Titlu**: Detecția Optică: Senzori Infraroșu (IR)
- **Subtitlu**: LED Emițător, Fototranzistor și Reflexia Luminii
- **Puncte Cheie**:
  - **Spectrul Invizibil**: Folosesc un LED care emite lumină în spectrul infraroșu (850–940 nm), invizibilă pentru ochiul liber.
  - **Principiul Reflexiei**: Lumina IR ricoșează din obstacol și este captată de un fototranzistor receptor.
  - **Viteză Instantanee**: Semnalul călătorește cu viteza luminii ($300.000\text{ km/s}$), oferind o reacție imediată.
  - **Punctul Slab**: Precizia depinde puternic de culoarea obiectului; o suprafață neagră mată absoarbe lumina IR și poate părea invizibilă.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă optică arătând fasciculul infraroșu trimis de LED spre un perete și reflexia captată de fototranzistor]
- **Ghid Profesor (Speaker Notes)**:
  *Arătați o telecomandă de televizor ca exemplu de emițător IR. Explicați de ce senzorii IR sunt folosiți frecvent pentru urmărirea liniei negre pe sol alb.*

---

### Slide 3: Undele Acustice & Sonarul Ultrasonic (Time of Flight)
- **Titlu**: Măsurarea prin Ecou: Sonarul Ultrasonic
- **Subtitlu**: 40 kHz, Traductoare Piezo și Formula Time of Flight
- **Puncte Cheie**:
  - **Ecolocație Acustică**: Senzorul (ex. **HC-SR04**) emite o rafală de unde sonore la frecvența de **40 kHz**, inaudibilă pentru om.
  - **Time of Flight (ToF)**: Cronometrează timpul necesar undei sonore pentru a călători până la obstacol și a se întoarce ca ecou.
  - **Calculul Distanței**: Viteza sunetului în aer este de circa $343\text{ m/s}$ (adică $1\text{ cm}$ la fiecare $29.1\ \mu\text{s}$); formula împarte timpul total la 2 (traseu dus-întors).
  - **Imunitate la Culoare**: Detectează la fel de bine suprafețe albe, negre sau din sticlă transparentă, pe distanțe de la 2 cm până la 4 metri.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Ilustrație curată cu senzorul ultrasonic HC-SR04 trimițând unde sonore spre un obstacol și recepționând ecoul reflectat]
- **Ghid Profesor (Speaker Notes)**:
  *Subliniați că liliecii și submarinele folosesc exact această metodă. Este ideală pentru detecția timpurie și frânarea dinamică a robotului.*

---

### Slide 4: Fascicule Laser & Scanerele LiDAR
- **Titlu**: Precizie Milimetrică: Tehnologia Laser LiDAR
- **Subtitlu**: Light Detection and Ranging & Cartografiere 360°
- **Puncte Cheie**:
  - **LiDAR (Light Detection and Ranging)**: Trimite impulsuri laser de mare viteză și măsoară timpul de reflexie la scara picosecundelor.
  - **Scanare 360°**: O prismă sau o oglindă rotativă generează mii de puncte de măsură pe secundă, creând o hartă 2D/3D a camerei (*point cloud*).
  - **Aplicații Reale**: Tehnologia de bază utilizată pe mașinile autonome de nivel înalt și pe aspiratoarele robot inteligente.
  - **Performanță vs Complexitate**: Oferă precizie chirurgicală și rază de zeci de metri, dar la un cost și o complexitate de calcul ridicate.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Scanare laser 360° realizată de un modul LiDAR montat pe un robot autonom, reprezentată ca un nor dens de puncte colorate]
- **Ghid Profesor (Speaker Notes)**:
  *Arătați legătura dintre tehnologia din laborator și roboții din viața reală: de la senzorul simplu de 2 dolari până la sistemele de navigație avansate.*

---

### Slide 5: Misiunea Noastră Practică: Asamblarea Șasiului RF 2.0
- **Titlu**: Atelier Practic: Construcția Mecanică a Robotului
- **Subtitlu**: Piese 3D, Montajul Motoarelor și Conectarea Cablurilor
- **Puncte Cheie**:
  - 1. **Montajul Motoarelor**: Fixarea celor 2 motoare TT pe rama principală 3D printată cu șuruburi M3 și piulițe.
  - 2. **Suportul de Driver & Switch**: Montarea pieselor 3D pentru driverul TB6612FNG și întrerupătorul de pornire.
  - 3. **Conectarea Cablurilor Pregătite**: Legarea bornelor de alimentare, switch-ului și ieșirilor de motor conform instrucțiunilor profesorului.
  - 4. **Cable Management**: Rutarea și prinderea firelor în ghidajele ramei pentru a lăsa axele roților complet libere.
- **Elemente Vizuale**:
  - Text structurat concis, fără elemente grafice suplimentare.
- **Ghid Profesor (Speaker Notes)**:
  *Tranziție către bancurile de lucru: fiecare elev își ia rama 3D, șurubelnița și setul de piese.*
