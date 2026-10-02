# Lecția 05 [RBF2.5]: Metode de Măsurare a Distanței & Asamblarea Șasiului Mecanic RF 2.0

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.5
- **Modul**: Robotică Avansată & Arhitectură Hardware RF 2.0
- **Vârsta Țintă**: 11 – 15 ani
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Scurtă introducere teoretică în senzori de distanță (4 slide-uri), urmată de atelier practic ghidat de asamblare mecanică a ramei 3D, montarea suporturilor pentru driver și switch, și rutarea cablurilor pregătite.
- **Proiect Practic**: Asamblarea modulară a robotului RF 2.0 pe noua ramă 3D printată: fixarea motoarelor TT, montarea pieselor suport pentru driverul de motoare TB6612FNG și întrerupătorul de alimentare, urmată de interconectarea cablajului pregătit de profesor. Rezultatul final al lecției este un robot asamblat parțial, cu structură mecanică rigidă și management curat al firelor.

### Întrebări Esențiale:
1. Prin ce metode fizice diferite poate un robot să măsoare distanța până la obiectele din jur (contact mecanic, reflexie optică IR, ecou ultrasonic Time of Flight, LiDAR)?
2. Cum transformăm componentele imprimate 3D și motoarele într-o structură mecanică stabilă, rezistentă la vibrații și șocuri de arenă?
3. Cum rutăm corect fasciculele de cabluri pregătite pentru driver și switch, astfel încât să evităm agățarea lor în roți și scurtcircuitele accidentale?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Prezentare
- [ ] Prezentarea teoretică scurtă (4 slide-uri despre metodele de măsurare a distanței) încărcată pe proiector.
- [ ] Tab-ul de mini quiz Kahoot deschis și configurat pentru sfârșitul lecției.

### Piese Imprimate 3D & Echipamente per Banc de Lucru (1 Set per Elev)
- [ ] **Rama principală de șasiu** RF 2.0 (piesă 3D printată rezistentă din PLA/PETG).
- [ ] **Piesa suport pentru driverul de motoare** TB6612FNG (piesă 3D dedicată pentru clipsare / fixare).
- [ ] **Piesa suport pentru întrerupătorul de alimentare** (switch mount 3D printat).
- [ ] **2 Motoare DC TT cu reductor** + șuruburi lungi M3 (30 mm) și piulițe M3 de fixare.
- [ ] **Driverul de motoare TB6612FNG** și **întrerupătorul basculant / culisant** (pregătit cu fire lipite).
- [ ] **Set de cabluri pregătite în prealabil de profesor**: cabluri de alimentare cu conectori, fire jumper DuPont pentru semnale logice și cabluri de motor.
- [ ] Trusă de unelte per banc: șurubelniță cruce M3, cheie hexagonală / clește mic cu cioc plat pentru piulițe, coliere de plastic (zip ties) pentru organizarea firelor.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:10** | **1. Introducere & Conectare** | Discuție introductivă: cum își dă seama un robot unde se află un perete fără să aibă ochi umani? |
| **00:10 – 00:25** | **2. Prezentare Teoretică Compactă (4 Slide-uri)** | Metode de măsurare a distanței: bumpere mecanice, senzori optici IR, sonar ultrasonic (Time of Flight) și scanere LiDAR. |
| **00:25 – 00:40** | **3. Pregătirea Pieselor & Montarea Motoarelor** | Prezentarea ramei 3D, așezarea celor două motoare TT în locașuri și fixarea lor cu șuruburi lungi M3 și piulițe. |
| **00:40 – 01:05** | **4. Montarea Suporturilor 3D pentru Driver & Switch** | Fixarea mecanică a pieselor printate 3D pentru driverul TB6612FNG și întrerupătorul de pornire pe rama centrală. |
| **01:05 – 01:35** | **5. Conectarea & Rutarea Cablurilor Pregătite** | Profesorul explică schema de cablare; elevii conectează firele de alimentare, comutatorul și driverul de motoare, securizând cablajul cu ghidaje. |
| **01:35 – 01:45** | **6. Verificarea Tehnică a Șasiului Parțial** | Inspecție mecanică și electrică ghidată de profesor: verificarea strângerii șuruburilor, alinierea axelor și protecția conexiunilor. |
| **01:45 – 01:55** | **7. Mini Quiz Kahoot** | Concurs rapid de 10 întrebări scurte despre tipurile de senzori de distanță și principiile fizice de detecție (conform `quiz.md`). |
| **01:55 – 02:00** | **8. Concluzii & Depozitarea Roboților** | Inventarierea roboților pe raftul de laborator, curățarea bancului de lucru și anunțarea pasului următor. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Introducere & Conectare (00:00 – 00:10)
Profesorul deschide sesiunea arătând rama goală printată 3D și motoarele: *"Pentru a ajunge să pilotăm robotul și să evităm obstacolele în arena Orbit Odyssey, avem nevoie de două lucruri fundamentale: o structură mecanică solidă și simțuri prin care robotul să perceapă spațiul."* 

Se discută pe scurt despre diferența dintre a merge la întâmplare (orbește) și a măsura proactiv distanța până la obstacole.

---

### Etapa 2: Prezentare Teoretică Compactă – Metode de Măsurare a Distanței (00:10 – 00:25)
Profesorul parcurge cele 4 slide-uri teoretice, explicând pe înțelesul tuturor cele 4 mari metode prin care un robot poate detecta obiectele din jur:

1. **Slide 1: Contactul Mecanic (Bumpere & Microswitch-uri)**:
   - Cea mai simplă metodă de detecție: un comutator mecanic (*microswitch*) cu lamă elastică montat pe bara frontală a robotului.
   - *Cum funcționează*: Robotul detectează obstacolul doar în momentul fizic al impactului (contact direct ON/OFF).
   - *Avantaj*: Extrem de ieftin, robust și 100% imun la lumină sau zgomot.
   - *Dezavantaj*: Nu măsoară distanța din timp; coliziunea a avut deja loc.

2. **Slide 2: Senzorii Optici & Infraroșu (IR Reflexiv & Triangulație)**:
   - Folosesc un LED emițător în spectrul infraroșu invizibil (850–940 nm) și un fototranzistor receptor.
   - *Cum funcționează*: Lumina IR se reflectă din obstacol înapoi în fototranzistor.
   - *Avantaj*: Reacție instantanee (viteza luminii), dimensiuni foarte mici.
   - *Dezavantaj*: Culoarea și reflexia obstacolului influențează măsurătoarea (un obiect negru mat reflectă mult mai puțină lumină decât unul alb).

3. **Slide 3: Undele Acustice & Sonarul Ultrasonic (Time of Flight Acustic)**:
   - Măsurarea distanței prin calculul timpului de zbor (**Time of Flight**): senzorul emite o rafală de ultrasunete la **40 kHz** și cronometrează timpul până la întoarcerea ecoului.
   - *Formula*: Distanța este proporțională cu viteza sunetului în aer (~343 m/s), împărțită la 2 pentru traseul dus-întors.
   - *Avantaj*: Detectează obstacole la distanțe mari (2 cm – 4 metri) indiferent de culoarea obiectului (vede la fel de bine un perete alb, negru sau transparent).
   - *Dezavantaj*: Unghiurile ascuțite ricoșează sunetul, iar buretele absoarbe undele.

4. **Slide 4: Fascicule Laser & LiDAR (Time of Flight Optic)**:
   - Tehnologia de vârf utilizată pe mașinile autonome moderne și aspiratoarele robot inteligente.
   - *Cum funcționează*: Un emițător laser trimite impulsuri de lumină și măsoară timpul de reflexie la scara picosecundelor sau defazajul razei.
   - *Avantaj*: Precizie milimetrică, rază mare de acțiune și posibilitatea de a mapa o încăpere 360° printr-un cap rotativ.
   - *Dezavantaj*: Cost ridicat și circuite electronice complexe.

---

### Etapa 3: Pregătirea Pieselor & Montarea Motoarelor pe Ramă (00:25 – 00:40)
Fiecare elev își preia kitul hardware pe bancul individual de lucru:

1. **Inspecția Ramei 3D**:
   - Elevii verifică rama principală printată 3D: locașurile laterale pentru cele două motoare TT, fantele pentru șuruburi și ghidajele pentru cabluri.
2. **Montajul Motoarelor TT**:
   - Se plasează primul motor de curent continuu TT în locașul din stânga, cu axul de rotație orientat spre exterior.
   - Se introduc cele două șuruburi lungi M3 (30 mm) prin fantele ramei și prin corpul motorului.
   - Se montează piulițele M3 pe partea opusă și se strâng ferm cu șurubelnița, menținând piulița cu cleștele sau degetul.
   - Se repetă exact aceeași operațiune pe partea dreaptă pentru al doilea motor.

---

### Etapa 4: Montarea Suporturilor 3D pentru Driver & Switch (00:40 – 01:05)
După fixarea motoarelor, elevii instalează piesele intermediare de montaj:

1. **Montarea Suportului pentru Driverul TB6612FNG**:
   - Se poziționează piesa suport 3D dedicată pentru driverul de motoare în zona centrală a șasiului.
   - Se fixează modulul TB6612FNG în suportul său (prin clipsare fermă sau cu două șuruburi scurte M3), asigurându-se că pinii de conexiune rămân ușor accesibili pentru cablare.
2. **Montarea Suportului pentru Întrerupător (Power Switch)**:
   - Se fixează piesa suport pentru întrerupător pe spatele șasiului (ușor de accesat cu mâna în timpul rulării robotului).
   - Se introduce comutatorul basculant/culisant în locașul 3D până când se fixează printr-un clic mecanic sigur.

---

### Etapa 5: Conectarea & Rutarea Cablurilor Pregătite (01:05 – 01:35)
Profesorul proiectează schema conexiunilor și demonstrează fiecare legătură pas cu pas. Elevii folosesc seturile de cabluri pregătite în prealabil:

1. **Conexiunea Motoarelor la Driver**:
   - Firele de la motorul stâng se conectează la bornele **AO1** și **AO2** ale modulului TB6612FNG.
   - Firele de la motorul drept se conectează la bornele **BO1** și **BO2** ale modulului TB6612FNG.
2. **Cablajul de Alimentare & Întrerupătorul**:
   - Firul pozitiv (+) de la mufa bateriei trece prin contactul întrerupătorului de alimentare și ajunge la intrarea de forță **VM** (Motor Voltage) a driverului și la intrarea de alimentare a plăcii.
   - Firul negativ (-) de masă comună (**GND**) se leagă direct la pinii de masă ai driverului și ai sistemului.
3. **Rutarea Curată a Cablurilor (Cable Management)**:
   - Elevii trec firele prin canalele și clemele integrate în rama 3D.
   - Se folosesc mici coliere de plastic (*zip ties*) pentru a strânge firele într-un mănunchi compact, asigurându-se că niciun fir nu atinge roțile sau axele în rotație.

---

### Etapa 6: Verificarea Tehnică a Șasiului Parțial Asamblat (01:35 – 01:45)
Profesorul trece pe la fiecare banc de lucru pentru controlul calității:
- **Testul Mecanic**: Se verifică dacă motoarele sunt paralele și bine strânse, fără joc mecanic în ramă. Axele albe ale reductoarelor trebuie să se rotească liber fără frecări pe pereții de plastic.
- **Testul Conexiunilor**: Se trage ușor de fiecare fir conectat pentru a verifica dacă mufa este bine fixată pe pini.
- **Rezultatul Obținut**: Fiecare elev are pe masă un șasiu modular rigid, cu motoarele montate, suporturile de driver și switch integrate, și cablajul de forță complet organizat.

---

### Etapa 7: Mini Quiz Kahoot (01:45 – 01:55)
Profesorul lansează un joc Kahoot rapid de 10 întrebări teoretice bazate pe prima parte a lecției (tipuri de senzori de distanță, bumper vs IR vs ultrasunete vs LiDAR).

> **Notă**: Întrebările, variantele scurte de 1–3 cuvinte și explicațiile didactice se găsesc în fișierul `quiz.md`.

---

### Etapa 8: Concluzii & Depozitarea Roboților (01:55 – 02:00)
- Elevii așază roboții parțial asamblați în cutiile de stocare individuală ale fiecărei echipe.
- Profesorul sintetizează realizarea zilei: *"Astăzi am pus bazele fizice solide ale robotului RF 2.0. În lecția următoare, vom monta placa ESP32 și vom conecta senzorul ultrasonic HC-SR04 direct pe acest șasiu pentru primele teste de navigare!"*
- Bancurile de lucru se curăță și uneltele se rearanjează în truse.
