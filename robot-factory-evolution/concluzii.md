# Raport de Activitate: Robot Factory: Evolution (Nivelul 2)

Acest document prezintă activitățile parcurse și lucrările practice realizate de elevi (11–15 ani) în cadrul cursului avansat **Robot Factory: Evolution**. Fiecare cursant lucrează individual la propriul post de lucru, reconstruind, cablând și programând propriul robot (**RF 2.0**).

---

### 🔹 Lecția 1: Diagnoza hardware și planul de reconstrucție RF 2.0
- S-a realizat cunoașterea și organizarea grupei, împreună cu analiza experiențelor din sezonul precedent.
- Au fost analizate defecțiunile tehnice apărute la prima versiune a robotului (conexiuni slăbite de vibrații, conectori desprinși, căderi de tensiune / *brownouts*).
- A fost stabilită arhitectura tehnică pentru reconstrucția robotului **RF 2.0** și tranziția la controlul prin Bluetooth Low Energy (BLE).

---

### 🔹 Lecția 2: Arhitectura acumulatorilor și proiectare 3D în Fusion 360
- Au studiat parametrii electrici ai acumulatorilor reîncărcabili **Li-Ion 18650** (tensiune nominală, capacitate, *C-rating*) și conectarea a două celule în serie (configurație `2S`, 7.4V).
- Au analizat metodele de protecție electrică și stabilizare a tensiunii de alimentare.
- **Realizat practic**: Au proiectat în **Autodesk Fusion 360** suportul mecanic 3D pentru acumulatorii 18650, prevăzut cu fante de fixare pentru șuruburi M3.

---

### 🔹 Lecțiile 3 și 4: Microcontrolerul ESP32, conectori și realizarea cablajului (Crimping & Soldering)
- Au studiat arhitectura microcontrolerului **ESP32** (procesor dual-core, Wi-Fi, BLE integrat, pini GPIO, semnale PWM) și rolul driverului de motoare **TB6612FNG**.
- Au învățat clasificarea cablurilor și a conectorilor electrici (*stranded wire* vs *solid core wire*, *tinned copper*, izolație silicon vs PVC, standardul AWG, conectori DuPont și JST).
- **Realizat practic**: Au lipit cu letconul întrerupătorul general de alimentare, au izolat conexiunile cu *heat shrink*, au realizat *crimping*-ul pinilor DuPont/JST și au asamblat fasciculul central de cabluri al robotului.

---

### 🔹 Lecțiile 5 și 6: Metode de măsurare a distanței, senzori optici și asamblarea tracțiunii
- Au studiat metodele de detecție a distanței și funcționarea senzorilor optici în infraroșu (**TCRT5000**) și de culoare RGB pentru urmărirea liniei (*Line Follower*) și parcurgerea labirinturilor.
- **Realizat practic**:
  - Au asamblat structura mecanică a șasiului 3D, au fixat motoarele TT, suportul driverului și întrerupătorul de alimentare;
  - Au montat placa ESP32 și placa de extensie, au conectat cablajul la driverul **TB6612FNG** și au rulat în **Arduino IDE** programul C++ de diagnostic și testare a motoarelor pe bancul de lucru.

---

### 🔹 Lecțiile 7 și 8: Arhitectura de control wireless BLE (`RBFesp`) și teleoperare
- Au studiat comunicarea wireless prin **Bluetooth Low Energy (BLE)** între microcontrolerul ESP32 și interfața Web Bluetooth din browser.
- Au parcurs structura modulară a proiectului C++ **`RBFesp`** (`RBFesp.ino`, `RemoteCore.h`, `ButtonHandler.h`), gestionarea evenimentelor de la butoane (`onButton`, `event.isPressed()`) și afișarea datelor în consola wireless (`monitor.println()`).
- **Realizat practic**: Au încărcat firmware-ul `RBFesp` pe robot, s-au conectat prin Bluetooth de pe telefon/calculator și au configurat comenzile de control și teleoperare ale robotului.

---

### 🔹 Lecțiile 9 și 10: Formarea echipelor, programarea senzorilor și asamblarea 3D în Onshape
- Au completat sondajul tehnic de competențe și au format echipele de lucru (`roboRangers`), împărțind rolurile tehnice (mecanică/CAD, programare C++, strategie și pilotaj).
- Au trecut la utilizarea platformei Cloud CAD **Onshape**, învățând diferența dintre modelarea pieselor (*Part Studio*) și asamblarea mecanică (*Assembly*).
- **Realizat practic**:
  - Au conectat și programat individual în C++ senzorul IR de linie, senzorul ultrasonic **HC-SR04** și modulul *buzzer* pasiv, realizând un pian wireless acționat prin Bluetooth;
  - Au realizat asamblarea digitală 3D completă a robotului RF 2.0 în **Onshape**, utilizând constrângeri mecanice (*Fastened Mate*) și șuruburi/piulițe metrice standardizate M3 din biblioteca *Standard content*.
