# Prezentare: Lecția 05 [RBF1.5] – Metode de Măsurare a Distanței în Robotică

---

### 🎨 Canva AI Master Prompt (Copiază și inserează în Canva Magic Design)

```text
Creează o prezentare educațională concisă de 4 slide-uri (format 16:9 widescreen) destinată elevilor de 11–14 ani din cursul Robot Factory: Creation.
Tema prezentării: Cum măsoară roboții distanța până la obstacole? Comparație între metode fizice: Bumpere mecanice (microswitch), Senzori optici IR, Sonar ultrasonic Time of Flight și Scanere laser LiDAR.
Stil vizual: Modern, curat, mature-tech, fundaluri profesionale în tonuri de gri antracit/bleumarin profund (#0f172a), carduri semi-transparente cu accente cyan electric (#06b6d4), albastru intens (#3b82f6) și portocaliu de alertă (#f97316).
Fonturi: Header sans-serif curat și text schematic foarte lizibil.
Structură pe fiecare slide: Titlu clar, subtitlu tehnic, 3-4 puncte concise cu detalii inginerești și un placeholder vizual explicativ [Placeholder Imagine: ...].
Prezentarea se concentrează exclusiv pe teorie, principii fizice, propagarea undelor și compararea performanței senzorilor.
```

---

## Structura Slide-urilor

---

### Slide 1: Cum Simte un Robot Spațiul? & Contactul Fizic (Bumpers)
- **Titlu**: Cum Simte un Robot Spațiul? & Contactul Fizic
- **Subtitlu**: De la Mersul Orb la Detecția prin Microswitch-uri
- **Puncte Cheie**:
  - Fără senzori de distanță, un robot mobil se deplasează "orbește" și intră în coliziune directă cu primul obstacol.
  - **Bumperul Mecanic**: Folosește o bară elastică frontală cuplată la un comutator mecanic simplu (**microswitch**).
  - **Principiul de Detecție**: Funcționează pe principiul contactului direct, trimițând o stare logică binară (ON/OFF) la impact.
  - **Avantaje & Limite**: Este extrem de robust și ieftin, dar reacționează abia după ce coliziunea fizică s-a produs deja.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Fotografie detaliată a unui robot echipat cu o bară elastică frontală și microswitch-uri mecanice de impact]
- **Ghid Profesor (Speaker Notes)**:
  *Introduceți tema întrebând elevii cum ar naviga într-o cameră complet întunecată. Contactul direct cu mâna este echivalentul unui bumper mecanic.*

---

### Slide 2: Senzorii Optici & Infraroșu (IR Reflexiv)
- **Titlu**: Detecția Optică: Senzori Infraroșu (IR)
- **Subtitlu**: LED Emițător, Fototranzistor și Viteza Luminii
- **Puncte Cheie**:
  - **Spectrul Invizibil**: Folosesc o diodă LED care emite impulsuri de lumină în spectrul infraroșu invizibil pentru ochiul uman (850–940 nm).
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
  - **Ecolocație Acustică**: Senzorul ultrasonic (ex. **HC-SR04**) emite o rafală de unde sonore la frecvența de **40 kHz**, inaudibilă pentru om.
  - **Time of Flight (ToF)**: Cronometrează timpul necesar undei sonore pentru a călători până la obstacol și a se întoarce ca ecou.
  - **Calculul Distanței**: Viteza sunetului în aer este de circa $343\text{ m/s}$; formula împarte timpul total la 2 pentru a compensa traseul dus-întors.
  - **Imunitate la Culoare**: Detectează la fel de bine suprafețe albe, negre sau chiar din sticlă transparentă, pe distanțe de la 2 cm până la 4 metri.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Ilustrație curată cu senzorul ultrasonic HC-SR04 trimițând unde sonore spre un obstacol și recepționând ecoul reflectat]
- **Ghid Profesor (Speaker Notes)**:
  *Subliniați că liliecii și submarinele folosesc exact această metodă. Este ideală pentru detecția timpurie și frânarea proactivă a robotului.*

---

### Slide 4: Fascicule Laser & Scanerele LiDAR
- **Titlu**: Precizie Milimetrică: Tehnologia Laser LiDAR
- **Subtitlu**: Light Detection and Ranging & Cartografiere 360°
- **Puncte Cheie**:
  - **LiDAR (Light Detection and Ranging)**: Trimite impulsuri laser invizibile de mare viteză și măsoară timpul de reflexie al luminii.
  - **Scanare 360°**: O prismă sau o oglindă rotativă generează mii de puncte de măsură pe secundă, creând o hartă 2D/3D a încăperii (*point cloud*).
  - **Aplicații Reale**: Tehnologia de bază utilizată pe mașinile autonome moderne și pe aspiratoarele robot inteligente.
  - **Performanță vs Complexitate**: Oferă o precizie de nivel chirurgical și o rază de zeci de metri, dar la un cost și o cerință de calcul mai ridicate.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Scanare laser 360° realizată de un modul LiDAR montat pe un robot autonom, reprezentată ca un nor dens de puncte colorate]
- **Ghid Profesor (Speaker Notes)**:
  *Arătați legătura dintre tehnologia din laborator și roboții din viața reală: de la senzorul simplu de proximitate până la sistemele de navigație avansate.*
