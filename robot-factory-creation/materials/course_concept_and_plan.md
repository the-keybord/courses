# Conceptul Cursului, Competențe & Foaia de Parcurs: Robot Factory Creation [RBF1]

Acest document reprezintă manifestul pedagogic și viziunea de ansamblu a cursului **Robot Factory: Creation (Nivelul 1)**. Documentul sintetizează principiile didactice, competențele tehnice și transversale (non-tehnice), metodologia de formare a echipelor (alianțelor) și foaia de parcurs integrată de la primele circuite până la arena finală.

---

## 1. Filosofia & Viziunea Cursului

Cursul **Robot Factory: Creation** nu este o simplă succesiune de lecții teoretice de informatică sau ateliere pasive de asamblare după un manual de tip LEGO. Cursul funcționează ca un **incubator mecatronic și garaj de inginerie**, conceput special pentru cursanți de **11–14 ani**.

### Trecerea de la Consumator la Creator
Copiii din această grupă de vârstă interacționează zilnic cu tehnologia prin jocuri, aplicații și platforme video. Scopul nostru este să transformăm fascinația lor pasivă pentru gadgeturi într-o **pasiune activă de inginerie și antreprenoriat tehnic**. Un elev care termină acest curs nu doar „știe să programeze”, ci înțelege:
- de ce un șurub M3 are nevoie de o gaură de 3.2 mm în printarea 3D;
- cum circulă curentul dintr-o baterie 18650 printr-un convertor de tensiune fără să ardă microcontrolerul;
- cum se modelează un șasiu modular de la zero într-un browser;
- cum se creează o identitate de brand (nume, logo, portal web) pentru o echipă inginerească.

### Abordarea Ecosistemului Tehnic
- **Platforma Micro:Bit & robot:bit**: Oferă o curbă de învățare lină, pornind de la blocuri logice în Microsoft MakeCode (pentru eliminarea erorilor de sintaxă) și permițând trecerea la MicroPython. Placa de expansiune `robot:bit` elimină cablarea haotică de alimentare și oferă conexiuni directe pentru motoare DC și servomotoare.
- **Tranziția la Onshape (Parametric Cloud CAD)**: Spre deosebire de aplicațiile CAD locale greoaie, Onshape rulează direct în browser, elimină blocajele legate de performanța computerelor și permite colaborarea în timp real. Elevii învață modelare parametrică adevărată (schițe 2D cotate, constrângeri geometrice, extrudări), nu doar combinare de cuburi prefabricate.
- **Producția Fizică (Bambu Lab)**: Șasiul proiectat în Onshape devine realitate fizică pe imprimantele 3D Bambu Lab, învățând elevii să optimizeze orientarea pieselor, pereții și densitatea de umplere (infill) în Bambu Studio.

---

## 2. Matricea Competențelor (Skills Framework)

Cursul dezvoltă în mod echilibrat două categorii esențiale de abilități: **Hard Skills (Tehnice)** și **Soft Skills (Transversale & de Echipă)**.

```
                        ROBOT FACTORY: CREATION
                                  │
         ┌────────────────────────┴────────────────────────┐
         ▼                                                 ▼
   HARD SKILLS (Inginerie)                      SOFT SKILLS (Alianțe & Brand)
   ├─ CAD Parametric (Onshape)                  ├─ Identitate Vizuală (Canva)
   ├─ Electronică & Alimentare                  ├─ Web & Portofoliu (Google Sites)
   ├─ Programare (MakeCode / Python)            ├─ Colaborare & Împărțirea Rolurilor
   ├─ Senzori & Autonomie                       ├─ Devlog Video & Storytelling
   └─ Printare 3D (Bambu Studio)                └─ Prezentare Publică & Spirit de Echipă
```

### A. Competențe Tehnice (Hard Skills)
1. **Modelare 3D Parametrică în Onshape**:
   - Crearea schițelor 2D pe plane de referință cu unelte de bază (dreptunghi cu punct central, cerc, linii de construcție).
   - Aplicarea constrângerilor geometrice (coincident, egal, tangent, concentric) și cotarea precisă cu unealta Dimension (`D`).
   - Generarea corpurilor 3D prin Extrude (`New`, `Add`, `Remove`) și finisarea colțurilor prin Fillet și Chamfer.
   - Înțelegerea toleranțelor de fabricație aditivă (+0.2 mm până la +0.4 mm pentru găuri de șuruburi M3 și îmbinări mecanice).
   - Proiectare Top-Down într-un singur Part Studio prin importul modelelor COTS (motoare N20, servomotoare, placă de control) și proiectarea găurilor cu unealta Use (`U`).
2. **Electronică Aplicată & Conexiuni Hardware**:
   - Înțelegerea mărimilor electrice de bază: tensiune (V), curent (A), capacitate (mAh) și polaritate.
   - Tipuri de cabluri și conectori (stranded vs solid core, AWG, DuPont tată-mamă, JST, terminale cu șurub).
   - Prevenirea scurtcircuitelor și managementul căderilor de tensiune (brownouts).
3. **Programare & Algoritmică (MakeCode & MicroPython)**:
   - Structuri de control: bucle repetitive (`forever`, `repeat`), instrucțiuni condiționale (`if - then - else`).
   - Variabile numerice și booleene pentru salvarea stărilor și a valorilor citite de senzori.
   - Rutine de calibrare pentru praguri optice și calculul distanțelor în centimetri.
4. **Senzori, Actuatori & Navigație**:
   - Controlul vitezei și direcției motoarelor DC prin punți H (modulație PWM).
   - Poziționarea unghiulară a servomotoarelor de direcție și cinematica vehiculelor cu 3 roți (triciclu).
   - Măsurarea distanțelor prin ultrasunete (Time-of-Flight) și urmărirea traseelor prin senzori optici infraroșu (IR).

### B. Competențe Transversale (Soft Skills & Antreprenoriat Tehnic)
1. **Identitate de Brand & Design Vizual**:
   - Alegerea numelui echipei, a motto-ului și a paletei de culori reprezentative.
   - Crearea unui logo vectorial în Canva și adaptarea lui pentru tăiere pe vinil sau gravare 3D pe șasiul mașinii.
2. **Prezență Digitală & Portofoliu Web**:
   - Construirea unui portal web de prezentare pe platforma Google Sites sau Canva Websites.
   - Redactarea specificațiilor tehnice ale robotului (viteza estimată, masa, autonomia, arhitectura plăcii).
3. **Documentare & Devlog (Jurnal de Bord Tehnic)**:
   - Fotografierea și filmarea etapelor de prototipare (succese și erori de testare).
   - Crearea unor scurte clipuri explicative de tip „Behind the Scenes” sau demonstrații de laborator.
4. **Colaborare & Gândire Strategică**:
   - Împărțirea responsabilităților în interiorul alianței fără conflicte de atribuții.
   - Planificarea probelor de concurs, stabilirea traseelor optime de punctaj și susținerea colegilor în zona de boxe (pit stop).

---

## 3. Sistemul Alianțelor & Cele 4 Roluri de Ghidare Tehnică

### Principiul Fundamental: 1 Robot Per Cursant (Flota Alianței)
O regulă cheie a metodologiei noastre este că **fiecare elev construiește, cablează, proiectează în Onshape și programează propriul său robot fizic**. Nu există cursanți pasivi care doar privesc cum lucrează un coleg.

Elevii sunt grupați în **Alianțe de câte 2–3 cursanți** (Duo sau Trio). Alianța funcționează exact ca o **echipă de Formula 1 sau o divizie de robotică spațială (roboRangers)**:
- Fiecare membru are propriul bolid pe pistă (mașina sa individuală), care poartă culorile, logo-ul și stindardul alianței.
- Fiecare membru este **expertul de referință (Ranger Specialist)** pe un domeniu specific și își ghidează colegii de alianță atunci când aceștia întâmpină dificultăți pe acel segment.

### Rolurile Specializate din Alianță (roboRangers Framework):

| Rol în Alianță | Nume roboRanger | Focusul de Expertiză | Cum își ghidează colegii de echipă |
| :--- | :--- | :--- | :--- |
| 🛠️ **Mechanical & CAD Lead** | **Forge Ranger** | Șasiu, Asamblare Onshape & Toleranțe M3 | Cunoaște cel mai bine uneltele din Onshape Assembly; își ajută colegii de alianță să plaseze magneții (Fastened Mates), verifică toleranțele găurilor M3 (3.2 mm) și asistă la felierea în Bambu Studio. |
| ⚡ **Systems & Software Lead** | **Cyber Ranger** | Electronică, Senzori & Cod MakeCode | Stăpânește logica blocurilor din MakeCode / Python; își ghidează colegii la depanarea circuitelor electrice, conexiunile la placa robot:bit și calibrarea senzorilor ultrasonici/IR. |
| 🎨 **Brand, Web & Strategy Lead** | **Vanguard Ranger** | Identitate, Web Platform & Tactică Arenă | Creează logo-ul oficial în Canva, administrează profilul alianței pe platforma web roboRangers, documentează reușitele/eșecurile și analizează traseul din arenă. |

*Notă pentru Alianțele de 2 membri (Duo)*: Responsabilitățile se împart natural în:
1. **Hardware Ranger**: Onshape CAD + mecanică și cablaje.
2. **Cyber-Vanguard Ranger**: Programare + identitate de brand și strategie web.

### Mecanismul de Ghidare Între Colegi (Peer-Consulting)
Când un elev se blochează în timpul lucrului individual:
1. **Pasul 1 (Ghidare Internă)**: Elevul apelează mai întâi la **expertul alianței sale** pe acel domeniu (ex: dacă o piesă nu se leagă corect în Onshape, îl cheamă pe Forge Ranger; dacă motorul se învârte invers, îl cheamă pe Cyber Ranger).
2. **Pasul 2 (Intervenția Profesorului)**: Dacă problema persistă, profesorul intervine și oferă explicații suplimentare pentru întreaga alianță.

Acest mecanism dezvoltă responsabilitatea, leadershipul tehnic și comunicarea autentică între copii, eliberând profesorul de micro-managementul fiecărui clic de mouse.

---

## 4. Foaia de Parcurs Integrată (Planul pe Etape)

Procesul este structurat în **5 etape logice**:

```
ETAPA 1: Fundamentele Roboticii & Senzorii (Lecțiile 01 – 05)
 └─ Descoperirea plăcii Micro:Bit, MakeCode, cabluri, conectori, senzori ultrasonici și infraroșu.

ETAPA 2: Lansarea Alianțelor & Identitatea de Echipă (Lansare Proiect & Temă)
 └─ Completarea chestionarului de abilități, stabilirea alianțelor, alegerea numelui, desenarea logo-ului în Canva.

ETAPA 3: Laboratorul de CAD Parametric în Onshape (Lecțiile 06 – 08)
 └─ Primele piese 3D, toleranțele M3, importul componentelor COTS, proiectarea șasiului mașinii RC și exportul către Bambu Studio.

ETAPA 4: Asamblarea Mecatronică, Portofoliul Web & Primele Mișcări (Lecțiile 09 – 10)
 └─ Montarea motoarelor și a plăcii pe șasiul printat, lansarea site-ului Google Sites, calibrarea motoarelor DC și teleoperare radio / gamepad.

ETAPA 5: Autonomie, Integrare & Marea Arenă (Lecțiile 11 – 12)
 └─ Evitarea autonomă a obstacolelor, urmărirea traseelor, amenajarea boxelor de echipă (paddock) și turneul final cu punctaje.
```

---

## 5. Instrumente Digitale Utilizate

- **Modelare 3D**: [Onshape](https://www.onshape.com/) (Browser Cloud CAD, gratuit educațional).
- **Slicing & Printare 3D**: Bambu Studio (pe imprimante Bambu Lab A1 / A1 Combo).
- **Mediu de Programare**: Microsoft MakeCode for micro:bit (simulator + descărcare hex) și MicroPython.
- **Design Grafic**: Canva (vectori, palete cromatice, bannere).
- **Web Design**: Google Sites (găzduire gratuită, interfață intuitivă).
- **Evaluare Interactivă**: Kahoot (chestionare de teorie tehnică la fiecare lecție).
