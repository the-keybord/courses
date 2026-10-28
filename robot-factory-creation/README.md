# Robot Factory: Creation (Nivelul 1)

Bine ați venit în prima etapă a aventurii mecatronice: **Robot Factory: Creation**!

Acest curs este poarta de intrare în lumea roboticii educaționale. Cursanții vor învăța să proiecteze piese mecanice în **Autodesk Fusion 360**, să le imprime 3D pe imprimante Bambu Lab, să programeze placa **BBC Micro:Bit** (întâi cu blocuri în MakeCode, apoi în MicroPython) și să asambleze un robot mobil funcțional pe platforma **robot:bit**. Cursul culminează cu o competiție de robotică între echipe.

---

## 🎯 Public Țintă & Metodologie Didactică

- **Vârsta Recomandată**: **11 – 14 ani**.
- **Prerechizite**: Fără prerechizite tehnice. Cursul este proiectat pentru începători absoluti în electronică, programare și modelare 3D.
- **Progresie**: De la blocuri vizuale la cod Python, de la piese simple la robot complet funcțional.
- **1 Robot Per Cursant & Alianțe de 4 Membri**: Fiecare elev își construiește, cablează, proiectează în Onshape și programează **propriul său robot fizic individual**. Elevii formează alianțe de 4 membri (cu 4 roluri de ghidare reciprocă: Mecanică/CAD, Software/Senzori, Brand/Logo și Media/Web) pentru o identitate vizuală comună, suport tehnic între colegi și competiția finală.

---

## 🚀 Pilonii Cursului

1. **Modelare 3D în Fusion 360**: Proiectarea parametrică a șasiului robotului și a pieselor funcționale (suporți de motor, suporți de senzori, carcasă), exportul STL/3MF și printarea 3D pe imprimante Bambu Lab.
2. **Platforma BBC Micro:Bit**: Înțelegerea microcontrolerului, programarea cu blocuri în Microsoft MakeCode, tranziția la MicroPython, utilizarea senzorilor integrați (accelerometru, busolă, LED-uri, butoane).
3. **Platforma robot:bit**: Integrarea micro:bit cu placa de expansiune robot:bit pentru controlul motoarelor DC, servomotoarelor și senzorilor externi.
4. **Competiția Finală**: Provocarea de robotică cu trasee, obstacole și probe de navigare autonomă și teleoperată.

---

## 🗺️ Harta Cursului & Catalogul Lecțiilor

| Nr. | Titlu Lecție | Teme Cheie & Activități | Link Direct |
| :---: | :--- | :--- | :--- |
| **01** | *(Urmează)* | *(Urmează)* | *(Urmează)* |
| **02** | *(Urmează)* | *(Urmează)* | *(Urmează)* |
| **03** | **Platforme de Microcontrolere, Descoperirea BBC Micro:Bit și Primii Pași în MakeCode** | Ecosistemul de platforme (Arduino, Makeblock, CyberBrick, ESP32, Micro:Bit, Pi Pico), deep-dive Micro:Bit (senzori integrați, LED-uri, butoane, radio, BLE), exerciții practice pe simulatorul MakeCode (blocuri Basic, Input, Logic, Loops, Variables, LED). | [Vezi Planul Lecției 03](lesson-03/README.md) |
| **04** | **Tipuri de Cabluri, Conectori și Programarea Senzorilor Integrați BBC Micro:Bit în MakeCode** | Teoria cablurilor și a conectorilor (tinned copper, izolație silicon vs PVC, stranded vs solid core, AWG, voltage drop, conectori DuPont, JST, XT30), urmată de laborator practic cu plăcile fizice Micro:Bit (6 exerciții de programare cu blocuri de bază pentru senzorii integrați: temperatură, lumină, accelerometru/înclinare, pedometru, busolă și microfon). | [Vezi Planul Lecției 04](lesson-04/README.md) |
| **05** | **Metode de Măsurare a Distanței & Percepția Spațială în Robotică** | Teorie comprehensivă despre metodele de detecție a obstacolelor (bumpere mecanice cu microswitch, reflexie optică IR, sonar ultrasonic Time of Flight la 40 kHz, scanere laser LiDAR), experimente demonstrative la catedră privind reflexia pe diverse materiale și evaluare prin mini-quiz Kahoot. | [Vezi Planul Lecției 05](lesson-05/README.md) |
| **06** | **Laborator Electronică: Drivere de Motoare & Alimentare 18650** | *(Lecție parcursă la clasă)* Cablare motoare TT pe puntea H a plăcii robot:bit, managementul alimentării și prevenirea căderilor de tensiune. | *(Arhivă Laborator)* |
| **07** | **Laborator Electronică: Calibrarea Servomotoarelor & Direcție** | *(Lecție parcursă la clasă)* Control unghiular servomotoare SG90 (0°–180°), semnale PWM și mecanisme de virare. | *(Arhivă Laborator)* |
| **08** | **Laborator Electronică: Integrarea Sistemului Complet & Test Banc** | *(Lecție parcursă la clasă)* Testarea integrată pe banc a tuturor senzorilor și actuatorilor, validarea circuitelor fără scurtcircuite. | *(Arhivă Laborator)* |
| **09** | **Inițierea în CAD Parametric: Descoperirea Onshape, Asamblarea Digitală a Triciclului RC & Alianțele roboRangers** | Trecerea la proiectarea 3D CAD în cloud, celebrarea competențelor din Lecțiile 1–8, testul de sortare a abilităților, formarea alianțelor de 2–3 cursanți (Forge, Cyber, Vanguard), ancorarea șasiului (`Fix`) și asamblarea completă a geamănului digital (Digital Twin) al triciclului RC printat 3D (servomotor frontal pentru direcție, motor N20 cu reductor, roată posterioară mare de tracțiune, roți cu benzi de cauciuc / rubber bands, placă radio 2.4 GHz cu telecomandă împerecheată / paired remote) folosind magneți inteligenți (`Fastened Mates`). | [Vezi Planul Lecției 09](lesson-09/README.md) |

---

## 📂 Resurse Didactice & Materiale Suport

În directorul [`materials/`](materials/) se regăsesc documentele de fundamentare pedagogică și orientare a cursanților:
- [`course_concept_and_plan.md`](materials/course_concept_and_plan.md): Viziunea integrată mecatronică, matricea de competențe (Hard Skills & Soft Skills), rolurile din alianțe roboRangers și foaia de parcurs în 5 etape.
- [`skills_survey.md`](materials/skills_survey.md): Chestionar de sortare cu 20 de întrebări pentru cursanți (11–14 ani), adaptat pentru alianțe de 2–3 membri și grila de evaluare a profesorului (Forge Ranger, Cyber Ranger, Vanguard Ranger).
- [`onshape_mini_rc_car_lab_guide.md`](materials/onshape_mini_rc_car_lab_guide.md): Ghidul tehnic detaliat pas-cu-pas pentru asamblarea digitală a triciclului RC în Onshape Assembly folosind conexiuni `Fastened Mate`.

---

## 📖 Reguli pentru Agenți AI

Ghidul detaliat pentru dezvoltarea materialelor se regăsește în fișierul [`AGENTS.md`](AGENTS.md).
