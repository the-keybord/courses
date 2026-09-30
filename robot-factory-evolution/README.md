# Robot Factory: Evolution (Nivelul 2)

Bine ați venit în noul sezon al cursului de robotică avansată și inginerie aplicată: **Robot Factory: Evolution**! 

După un prim an intens în care am explorat bazele modelării 3D în Autodesk Fusion 360, am învățat secretele electronicii pe microcontrolere ESP32 și am asamblat primul nostru robot mobil (RF 1.0), este momentul să facem pasul către ingineria de nivel următor. **Robot Factory: Evolution** transformă prototipurile de anul trecut în mașini de explorare spațială de o robustețe impecabilă, ghidate de senzori inteligenți, controlate instantaneu prin Bluetooth Low Energy (BLE) și unite sub stindardul unor echipe bine sudate.

---

## 🚀 Viziunea Cursului

În ingineria reală, prima versiune a unui produs (prototipul v1.0) este doar punctul de pornire. Pe parcursul testelor din teren, descoperim punctele vulnerabile: conexiuni slăbite de vibrații, căderi de tensiune la pornirea bruscă a motoarelor sau întârzieri în transmiterea comenzilor.

**Robot Factory: Evolution** este dedicat maturizării inginerești:
1. **Reconstrucția Hardware Totală (RF 2.0)**: Rezolvăm definitiv problemele de cablare, conectori și distribuție a energiei printr-un șasiu modular ranforsat și un management impecabil al firelor.
2. **Revoluția Comunicației: Trecerea la BLE (Bluetooth Low Energy)**: Lăsăm în urmă modul Wi-Fi Access Point (care deconecta telefoanele de la internet și aglomera spectrul radio din clasă) și implementăm un protocol BLE ultra-rapid, cu latență minimă și interfețe virtuale de gamepad joystick.
3. **Simțurile Robotului (Percepție & Autonomie)**: Trecem de la mișcări pre-programate la decizii autonome în timp real folosind senzori ultrasonici pentru distanță, senzori infraroșu (IR) pentru urmărirea traseelor orbitale și unități de măsură inerțială (IMU BNO055 / giroscop-accelerometru) pentru rotații chirurgicale.
4. **Marea Provocare: Competiția Tehnică "Orbit Odyssey"**: Inspirată de marile provocări de robotică de explorare (XRP Orbit Odyssey), competiția plasează roboții într-o arenă cu sarcini autonome (navigație pe linie și evitare de obstacole) și manevre teleoperate de precizie prin BLE.
5. **Lucru Individual Asistat & Alianțe de Echipă**: **Fiecare cursant își construiește, cablează, calibrează și programează propriul robot individual**, ghidat pas cu pas de instrucțiunile profesorului. Elevii formează alianțe de echipă pentru a stabili o identitate vizuală comună (nume, cromatică, accesorii 3D personalizate în Fusion 360) și strategii comune de punctaj în arena Orbit Odyssey.

---

## 🎯 Public Țintă & Metodologie Didactică

- **Vârsta Recomandată**: **11 – 15 ani**.
- **1 Robot Per Cursant**: Fiecare elev are propriul său kit hardware complet și propria sa mașină. Nu există partajarea unui singur robot între mai mulți elevi.
- **Progresie Ghidată Pas cu Pas**: Profesorul demonstrează și explică fiecare operațiune mecanică, schemă electrică sau structură de cod C++, iar elevii aplică imediat instrucțiunea pe propriul robot, garantând calitatea și funcționarea optimă pe toate bancurile de lucru.
- **Prerechizite**:
  - Absolvirea primului nivel *Robot Factory 1.0* sau cunoștințe echivalente de bază în modelare 3D (Autodesk Fusion 360) și noțiuni introductive de programare C++ în mediul Arduino IDE.
  - Înțelegerea conceptelor de bază despre circuite electrice (tensiune, curent, masă comună GND, motoare DC și punți H).

---

## 🛠️ Trusa Hardware & Resurse Tehnice

Fiecare stație de lucru beneficiază de echipamente profesionale adaptate pentru prototipare rapidă:
- **Creierul**: Microcontroller **ESP32-D WROOM** (Dual-Core, Wi-Fi & BLE integrat) montat pe placă de extensie multifuncțională.
- **Tracțiunea**: Driver dual de motoare **TB6612FNG** (eficiență ridicată MOSFET, control PWM și sens) + 2 motoare de curent continuu TT cu reductor.
- **Sursa de Energie**: Acumulatori Li-ion / baterii reîncărcabile cu convertor ridicător de tensiune (Step-Up Boost MT3608) pentru stabilizarea alimentării logice și prevenirea căderilor de tensiune (*brownouts*).
- **Actuatori Auxiliari**: Servomotoare unghiulare de 180° (metal gear / carcasă aurie) și servomotoare de rotație continuă 360° pentru mecanisme active de manipulare.
- **Senzori**:
  - Senzor ultrasonic HC-SR04 (măsurarea distanței în milimetri prin ecou sonor).
  - Modul senzor optic IR (line follower & detecție de contur).
  - Modul IMU cu 9 axe BNO055 (orientare spațială absolută, busolă și giroscop fără deviații).
  - ESP32-CAM (modul opțional pentru captură video și recunoaștere vizuală).
- **Software CAD & Dev**:
  - **Autodesk Fusion 360**: Proiectare mecanică parametrică, asamblări și export STL/3MF.
  - **Arduino IDE**: Compilare firmware C++, biblioteci BLE (`ESP32 BLE Arduino`), librării de control motoare și filtre senzoriale.

---

## 🗺️ Harta Cursului & Catalogul Lecțiilor

Fiecare lecție din cadrul **Robot Factory: Evolution** este concepută ca o experiență practică de laborator ("free relate lesson"), combinând demonstrații tehnice ghidate de profesor, provocări de logică, asamblare pe bancul individual și teste în arenă.

| Nr. | Titlu Lecție | Teme Cheie & Activități | Link Direct |
| :---: | :--- | :--- | :--- |
| **01** | **Reconectare în Cercul Inginerilor, Jocul Cărților UNO și Foaia de Parcurs RF 2.0** | Activitate socială și de cunoaștere în cerc cu cărți UNO, analiza defectelor hardware RF 1.0, prezentarea metodologiei individuale asistate și a noii platforme RF 2.0 (BLE, senzori, Orbit Odyssey). | [Vezi Planul Lecției 01](lesson-01/README.md) |
| **02** | **Tensiune Electrică, Arhitectura Acumulatorilor și Modelarea Suportului de Baterie în Fusion 360** | Activitate socială "Pălăria cu Componente" (20 de bilețele cu piese și regulă de solidaritate), teoria tensiunilor și a chimiilor de baterii (Alcaline, NiMH, Li-Ion, LiPo, 1S-4S, C-rating, boost/buck), modelare 3D în Fusion 360 a suportului 18650 și quiz grilă de 15 întrebări. | [Vezi Planul Lecției 02](lesson-02/README.md) |
| **03** | **Platforme de Microcontrolere, Anatomia ESP32 și Reconstrucția Circuitului RF 2.0** | Ecosistemul de platforme (Arduino, Micro:Bit, Makeblock, CyberBrick, ESP32, Pi Pico, STM32), deep-dive ESP32 (dual-core, Wi-Fi, BLE, GPIO, ADC, PWM), funcționarea GPIO și limitele de curent, driver H-Bridge TB6612FNG vs servomotoare micro, lipirea comutatorului de alimentare, refacerea circuitului cu cabluri DuPont noi și alimentare 7.4V 2S Li-Ion prin placa de extensie. | [Vezi Planul Lecției 03](lesson-03/README.md) |
| **04** | **Tipuri de Cabluri, Conectori și Asamblarea Fasciculului Central de Cabluri RF 2.0 (Crimp & Solder)** | Teoria cablurilor și a conectorilor (tinned copper, izolație silicon vs PVC, stranded vs solid core, standardul AWG, efectul Joule și voltage drop, conectori DuPont 2.54mm, JST-PH 2.0mm, JST-XH, XT30/XT60, trusa de unelte), urmată de atelier practic de sertizare, lipire comutator și asamblare a fasciculului principal de cabluri pentru RF 2.0. | [Vezi Planul Lecției 04](lesson-04/README.md) |
| **05** | *În curând: Telemetrie & Detecție de Obstacole – Senzorul Ultrasonic HC-SR04* | Calculul timpului de zbor acustic, filtrarea zgomotului de măsură și algoritm de frânare dinamică automată. | *(Urmează)* |
| **06** | *În curând: Urmărirea Liniilor – Senzori Optici Infraroșu (IR Array)* | Calibrarea pragurilor de reflexie alb/negru, algoritm binar bang-bang vs. control proporțional de menținere a traiectoriei. | *(Urmează)* |
| **07** | *În curând: Navigație Inerțială – Fuziune Senzorială cu IMU BNO055* | Comunicare I2C cu senzorul cu 9 axe, citirea unghiului de girație (Yaw) și execuția virajelor precise la 90° și 180°. | *(Urmează)* |
| **08** | *În curând: Identitate de Echipă & Strategia Alianțelor Orbit Odyssey* | Structurarea echipelor, stabilirea rolurilor de colaborare, designul grafic și specificațiile accesoriilor de misiune. | *(Urmează)* |
| **09** | *În curând: Modelare CAD în Fusion 360 – Mecanisme Active de Manipulare* | Proiectarea parametrică a cupelor, graiferelor și clemelor de prindere adaptate pe servomotoare; toleranțe de montaj. | *(Urmează)* |
| **10** | *În curând: Fuziunea Sistemelor – Arhitectura Software Mixtă (Autonom + Teleoperat)* | Comutarea stărilor de operare prin comenzi BLE, execuția rutinelor autonome și preluarea controlului manual. | *(Urmează)* |
| **11** | *În curând: Testare Integrată în Arena Orbit Odyssey & Calibrare în Buclă Închisă* | Optimizarea parametrilor de viteză și reacție, simularea meciurilor de calificare și depanarea defecțiunilor de teren. | *(Urmează)* |
| **12** | *În curând: Competiția Finală Orbit Odyssey – Meciuri Oficiale & Evaluare Tehnică* | Desfășurarea turneului tehnic: probe de traseu autonom, colectare teleoperată contracronometru și acordarea punctajelor. | *(Urmează)* |

---

## 📖 Reguli pentru Agenți AI

Ghidul detaliat pentru dezvoltarea materialelor și redactarea conținutului în stil narativ, cald și profund explicat se regăsește în fișierul [`AGENTS.md`](AGENTS.md).
