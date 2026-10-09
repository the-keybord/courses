# Lecția 05 [RBF1.5]: Metode de Măsurare a Distanței & Percepția Spațială în Robotică

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF1.5
- **Modul**: Senzori, Percepție & Robotică Mobilă
- **Vârsta Țintă**: 11 – 14 ani (Nivelul 1 – Începători)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Lecție axată pe înțelegerea metodelor de măsurare a distanței în robotică, analiza comparativă a senzorilor (contact mecanic, reflexie optică IR, sonar ultrasonic Time of Flight, tehnologie laser LiDAR) și consolidare prin evaluare interactivă.

### Întrebări Esențiale:
1. Prin ce metode fizice diferite poate un robot să perceapă spațiul și să măsoare distanța până la obstacolele din jur?
2. Care sunt avantajele și limitările contactului mecanic direct (bumpere) comparativ cu senzorii optici și acustici fără contact?
3. Cum funcționează principiul **Time of Flight** (timpul de zbor) și cum calculăm distanța pe baza vitezei sunetului și a împărțirii la 2?
4. De ce senzorii laser LiDAR sunt considerați standardul de aur în navigarea autonomă a vehiculelor inteligente?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Prezentare
- [ ] Proiectorul conectat și prezentarea teoretică încărcată pe ecranul central.
- [ ] Tab-ul de Kahoot deschis cu quiz-ul de 10 întrebări pregătit pentru lansare.

### Materiale Demonstrative pentru Sală
- [ ] Eșantioane demonstrative de senzori pentru prezentare la catedră: microswitch mecanic cu lamelă, modul senzor optic IR, modul senzor ultrasonic HC-SR04.
- [ ] Materiale de test pentru demonstrarea reflexiei: o placă de lemn/plastic alb, o suprafață neagră mată și o bucată de burete/spumă.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Introducere & Provocarea Orientării** | Discuție introductivă: cum se deplasează un robot fără să se lovească de pereți și ce înseamnă navigația "orbească" vs navigația cu senzori. |
| **00:15 – 00:45** | **2. Prezentare Teoretică: Metode de Măsurare a Distanței** | Parcurgerea celor 4 tehnologii fundamentale: bumpere mecanice (microswitch), senzori optici IR, sonar ultrasonic Time of Flight (40 kHz) și scanere laser LiDAR. |
| **00:45 – 01:15** | **3. Analiză Comparativă & Experimente Demonstrative** | Testarea vizuală a reflexiei pe diverse materiale la catedră: absorbția luminii IR pe negru mat, ricoșeul undelor acustice pe unghiuri ascuțite și atenuarea pe burete. |
| **01:15 – 01:45** | **4. Sesiune Didactică & Dezbatere Inginerească** | Scenarii din lumea reală: ce senzori alegem pentru un aspirator robot, pentru un rover de explorare spațială și pentru un automobil autonom. |
| **01:45 – 01:55** | **5. Mini-Quiz Kahoot Teoretic** | Concurs interactiv de 10 întrebări scurte pentru verificarea cunoștințelor despre senzori și fizica undelor (conform `quiz.md`). |
| **01:55 – 02:00** | **6. Concluzii & Sinteză** | Recapitualarea conceptelor cheie și pregătirea pentru integrarea practică a senzorilor în lecțiile următoare. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Introducere & Provocarea Orientării (00:00 – 00:15)
Profesorul deschide sesiunea adresând o întrebare clasei:
*"Dacă un robot primește comanda de a merge înainte cu viteză maximă, dar în fața lui se află un perete de beton, ce se va întâmpla dacă nu are niciun senzor?"*

Elevii răspund că robotul se va izbi direct în perete. Profesorul explică diferența dintre acționarea oarbă (motoare pornite fără feedback) și sistemele de navigație cu buclă închisă, unde robotul măsoară continuu distanța și ia decizii proactive de frânare sau virare.

---

### Etapa 2: Prezentare Teoretică – Cele 4 Metode de Măsurare a Distanței (00:15 – 00:45)

Profesorul prezintă în detaliu cele 4 metode fizice prin care roboții detectează obstacolele:

#### 1. Contactul Mecanic Direct (Bumpere & Microswitch-uri)
- **Principiul de Funcționare**: Un braț sau o bară de protecție elastică apasă mecanic pe un comutator miniaturizat numit **microswitch**.
- **Semnal**: Comutatorul se închide sau se deschide, oferind un semnal logic binar clar (ON / OFF sau HIGH / LOW).
- **Avantaje**: Extrem de ieftin, robust mecanic, nu este deranjat de lumina ambientală, fum sau reflexii optice.
- **Dezavantaje**: Nu poate măsura distanța în avans; robotul reacționează abia după ce s-a produs impactul fizic.

#### 2. Senzorii Optici în Infraroșu (IR Reflexiv)
- **Principiul de Funcționare**: O diodă **LED** emite lumină în spectrul infraroșu invizibil (850–940 nm), iar un **fototranzistor** măsoară intensitatea luminii reflectate de obstacol.
- **Viteză**: Răspuns practic instantaneu (lumina călătorește cu $300.000\text{ km/s}$).
- **Avantaje**: Dimensiuni reduse, cost mic, ideal pentru detecția de proximitate la câțiva centimetri și pentru urmărirea liniilor pe sol.
- **Dezavantaje**: Dependență critică de culoarea obstacolului; o suprafață neagră mată absoarbe razele infraroșii și poate face peretele invizibil pentru senzor.

#### 3. Undele Acustice & Sonarul Ultrasonic (Time of Flight Acustic)
- **Principiul de Funcționare**: Senzorul ultrasonic (ex. **HC-SR04**) emite o scurtă salvă de unde sonore la frecvența de **40 kHz** (inaudibilă pentru oameni) și măsoară timpul necesar ecoului pentru a se întoarce la receptor (**Time of Flight**).
- **Calculul Distanței**: Sunetul se propagă prin aer cu o viteză de aproximativ **343 m/s** la 20°C (adică 1 cm la fiecare $29.1\ \mu\text{s}$). Deoarece unda parcurge traseul dus-întors, formula distanței este:
  $$\text{Distanță (cm)} = \frac{\text{Timp (µs)} \times 0.0343}{2} = \frac{\text{Timp (µs)}}{58.2}$$
- **Avantaje**: Măsoară distanțe între 2 cm și 4 metri independent de culoarea obiectului (detectează excelent corpuri albe, negre sau chiar geamuri transparente).
- **Dezavantaje**: Unghiurile ascuțite ricoșează sunetul în altă direcție, iar materialele moi (burete, lână) absorb energia acustică.

#### 4. Fascicule Laser & Scanerele LiDAR (Time of Flight Optic)
- **Principiul de Funcționare**: Tehnologia **LiDAR (Light Detection and Ranging)** emite mii de impulsuri laser pe secundă și folosește o prismă rotativă pentru a scana spațiul la 360°.
- **Harta Spațială**: Datele măsurate generează un nor de puncte de înaltă densitate (*point cloud*), reconstruind digital încăperea.
- **Avantaje**: Precizie milimetrică, rază mare de zeci de metri și capacitatea de a crea hărți 2D/3D complete pentru navigare autonomă.
- **Dezavantaje**: Cost mai ridicat și cerințe mari de putere de calcul pentru procesarea datelor.

---

### Etapa 3: Analiză Comparativă & Experimente Demonstrative (00:45 – 01:15)
Profesorul demonstrează practic la catedră proprietățile fizice ale diferitelor materiale:
1. **Testul de Culoare cu Senzorul IR**: Se arată cum intensitatea semnalului scade drastic când în fața senzorului se așază o coală de hârtie neagră mată comparativ cu una albă lucioasă.
2. **Testul de Unghi cu Senzorul Ultrasonic**: Se demonstrează cum o placă înclinată la 45° face ca ecoul sonor să ricoșeze spre tavan, senzorul raportând că nu există niciun obstacol în față.
3. **Testul de Absorbție**: Se arată cum o bucată de burete reduce distanța de detecție acustică prin amortizarea vibrațiilor de 40 kHz.

---

### Etapa 4: Sesiune Didactică & Dezbatere Inginerească (01:15 – 01:45)
Profesorul ghidează o sesiune interactivă de analiză inginerească:
- *"Ce senzori ați alege pentru un aspirator robot care navighează printr-o casă mobilată?"* (Combinație de bumper mecanic de siguranță, senzori IR pentru marginea treptelor și LiDAR / ultrasunete pentru pereți).
- *"Ce senzori folosim pe un rover spațial trimis pe o altă planetă?"* (Fuziune senzorială: camere stereo, telemetre laser și senzori ultrasonici de proximitate).

---

### Etapa 5: Mini-Quiz Kahoot Teoretic (01:45 – 01:55)
Profesorul lansează jocul Kahoot de 10 întrebări pentru a evalua înțelegerea conceptelor teoretice.

> **Notă**: Întrebările, variantele scurte de 1–3 cuvinte, răspunsurile corecte și explicațiile didactice se găsesc în fișierul `quiz.md`.

---

### Etapa 6: Concluzii & Sinteză (01:55 – 02:00)
- Profesorul sintetizează concluziile zilei: un robot performant nu se bazează pe un singur tip de senzor, ci combină tehnologii complementare pentru a compensa punctele slabe ale fiecăreia.
- Se anunță tema următoarei sesiuni de robotică.
