# Lecția 01: Reconectare în Cercul Inginerilor, Jocul Cărților UNO și Foaia de Parcurs RF 2.0

Această sesiune deschide cursul de nivel avansat **Robot Factory: Evolution**. Pe parcursul acestui an, fiecare elev își va reproiecta și reconstrui complet propriul robot (RF 2.0), transformând prototipul de anul trecut într-un sistem mecatronic stabil, controlat prin BLE (Bluetooth Low Energy), dotat cu senzori inteligenți și pregătit pentru competiția tehnică **Orbit Odyssey**.

Prima lecție este dedicată cunoașterii reciproce a celor 16 cursanți printr-un joc interactiv de masă cu cărți UNO, analizei tehnice a defecțiunilor întâlnite în anul precedent și stabilirii foii de parcurs pentru noul robot.

---

## 🎯 Obiective Operaționale & Întrebări Esențiale

### Obiective Operaționale
La finalul acestei sesiuni inaugurale, cursanții vor fi capabili:
1. **Să se cunoască și să identifice interesele tehnice ale colegilor de grupă** prin intermediul jocului structurat de cărți UNO.
2. **Să analizeze cauzele fizice ale problemelor hardware din RF 1.0**: căderi de tensiune (*voltage drop/brownout*), deconectarea cablurilor DuPont din cauza vibrațiilor și instabilitatea serverului web local pe Wi-Fi.
3. **Să înțeleagă avantajele tranziției de la Wi-Fi AP la BLE (Bluetooth Low Energy)**: latență redusă, împerechere instantanee, păstrarea conexiunii de internet pe telefon și control prin joystick virtual.
4. **Să cunoască etapele de lucru și cerințele competiției Orbit Odyssey**: 1 robot complet per elev, asamblare ghidată pas cu pas de către profesor, integrare senzori și formarea de alianțe de echipă.

### Întrebări Esențiale de Inginerie
- *De ce conexiunile electrice slabe și căderile de tensiune afectează comportamentul robotului chiar dacă codul scris este 100% corect?*
- *De ce 16 rețele Wi-Fi simultane într-o singură sală generează latență și blocaje, în timp ce conexiunile BLE punct-la-punct funcționează fără interferențe?*
- *Cum ne ajută cunoașterea punctelor forte ale colegilor de laborator în rezolvarea problemelor tehnice și în alianțele de concurs?*

---

## ⏱️ Structura Sesiunii de 120 Minute

| Interval | Etapă Didactică | Focus & Activitate |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Organizare & Setup în Cerc** | Aranjarea sălii: 16 scaune în cerc, calculatoare oprite, pregătirea pachetului de cărți UNO. |
| **00:15 – 00:55** | **2. Jocul de Cunoaștere cu Cărți UNO** | Fiecare elev extrage o carte UNO; culoarea sau simbolul dictează tema de prezentare tehnică și personală. |
| **00:55 – 01:05** | **3. Pauză Operațională** | Relaxare scurtă, hidratare și pregătirea componentelor demonstrative. |
| **01:05 – 01:30** | **4. Diagnoza Tehnică RF 1.0: Ce Îmbunătățim?** | Analiza practică pe componente: căderi de tensiune (brownout), fire slăbite, diferența Wi-Fi vs. BLE. |
| **01:30 – 01:55** | **5. Foaia de Parcurs RF 2.0 & Orbit Odyssey** | Metodologia de lucru individual asistat (1 robot per elev), senzorii integrați și arena competițională. |
| **01:55 – 02:00** | **6. Concluzii & Pregătirea Sculelor** | Recapitulare și stabilirea uneltelor necesare pentru Lecția 2 (demontare și verificare la multimetru). |

---

## 🛠️ Desfășurarea Detaliată a Lecției

Dispunerea sălii este organizată sub forma unui cerc deschis de cunoaștere: cele 16 scaune ale cursanților sunt așezate în cerc în jurul unei mese centrale pe care sunt expuse pachetul de cărți UNO și componentele hardware reprezentative din sezonul trecut (placa ESP32, puntea H TB6612FNG, convertorul MT3608 și un ansamblu motor-roată TT). Această configurare elimină bariera ecranelor și favorizează dialogul direct între colegi.

---

### Pasul 1: Organizare & Setup în Cerc (00:00 – 00:15)

- La intrarea în laborator, monitoarele calculatoarelor sunt oprite.
- În centrul sălii sunt așezate **16 scaune în cerc**, lăsând un spațiu deschis pentru interacțiune directă.
- Pe măsuța din mijloc se află un pachet amestecat de cărți de joc UNO și câteva componente reprezentative din anul trecut (ESP32, driver TB6612FNG, convertor MT3608, un motor TT și o roată).
- Profesorul îi invită pe elevi să ia loc în cerc pe măsură ce sosesc.

---

### Pasul 2: Jocul de Cunoaștere cu Cărți UNO (00:15 – 00:55)

Acest exercițiu sparge gheața, reconectează vechii colegi, îi integrează pe cei nou-veniți și permite profesorului să evalueze nivelul și preferințele tehnice ale fiecărui cursant.

#### Regulile Jocului:
1. Pachetul de cărți UNO este așezat în mijloc sau trecut din mână în mână.
2. Pe rând, fiecare elev extrage o carte la întâmplare și își spune **numele**.
3. În funcție de culoarea sau simbolul cărții extrase, elevul răspunde la provocarea asociată:

- **Carte Roșie**: O defecțiune sau eroare tehnică din trecut (o piesă printată greșit, un fir scos din neatenție, un scurtcircuit sau un bug de cod din care ai învățat ceva util).
- **Carte Albastră**: Zona mecatronică preferată și motivația alegerii (proiectare CAD 3D în Fusion 360, electronică fizică și lipit cu cositor sau programare C++).
- **Carte Verde**: Despre tine în afara laboratorului (un hobby, un joc video preferat, un sport sau o pasiune despre care colegii tăi nu știu încă).
- **Carte Galbenă**: Obiectivul tău pentru noul robot RF 2.0 (ce vrei să funcționeze impecabil la robotul tău anul acesta: viteză, precizie de viraj, braț servo, senzori).
- **Carte Draw 2 (+2)**: Recunoaștere tehnică (numește 2 colegi din cerc cărora le apreciezi o abilitate sau adresează o întrebare tehnică oricărui coleg din grup).
- **Carte Reverse**: Inversare de roluri (adresează-i o întrebare directă profesorului despre roboți, componente sau planurile pentru acest an).
- **Carte Skip**: "Fast-Forward" (dacă ai putea învăța instant o tehnologie nouă pe loc, ce limbaj sau domeniu ai alege?).
- **Carte Wild (Curcubeu)**: Carte la alegere (poți răspunde la oricare dintre temele de mai sus sau poți combina două culori la alegerea ta).


#### Rolul Profesorului:
- Asigură un ritm dinamic (aproximativ 2 minute per elev).
- Încurajează răspunsurile oneste și tehnice: greșelile din trecut sunt normale în inginerie și reprezintă baza pe care construim versiunea 2.0.
- Notează discret preferințele fiecărui elev pentru a ghida eficient activitățile ulterioare.

---

### Pasul 3: Pauză Operațională (00:55 – 01:05)

10 minute de pauză pentru apă, aerisirea sălii și discuții libere.

---

### Pasul 4: Diagnoza Tehnică RF 1.0 – Ce Îmbunătățim? (01:05 – 01:30)

Profesorul ia componentele fizice de pe masă și ghidează o analiză inginerească a limitărilor din anul precedent:

Analiza deficiențelor hardware întâlnite pe platforma RF 1.0 se concentrează pe patru mari cauze fizice:

1. **Căderile bruște de tensiune (Brownout)**: La viraje bruște sau când motoarele funcționau la cuplu maxim, tensiunea pe magistrala de alimentare cobora temporar sub pragul critic de 2.7V. Acest fenomen era provocat de curentul de pornire ridicat (*inrush current*) al motoarelor DC. Pentru noul robot RF 2.0, soluția constă în adăugarea condensatoarelor de decuplare și calibrarea precisă a convertorului Step-Up MT3608 la o tensiune stabilă de 7.5V – 8.0V.
2. **Contacte electrice imperfecte din cauza vibrațiilor**: Motoarele funcționau adesea intermitent pe teren din cauza rezistenței de contact mărite și a jocului mecanic apărut în pinii cablurilor DuPont libere. Pe noul șasiu RF 2.0 eliminăm firele volante în favoarea bornelor mecanice cu șurub, a cablajelor securizate și a canalelor de ghidaj integrate direct în piesele 3D.
3. **Latența și instabilitatea serverului web local**: Controlul robotului prin pagina web găzduită pe ESP32 în mod Access Point aglomera banda radio de 2.4 GHz cu 16 rețele concurente în aceeași sală, iar telefoanele își pierdeau conexiunea la date mobile 4G. Trecerea la protocolul BLE (Bluetooth Low Energy) oferă conexiune punct-la-punct ultra-rapidă, fără interferențe Wi-Fi, pachete de date binare compacte și latență sub 15 milisecunde.
4. **Deviația de traiectorie în linie dreaptă**: Pe distanțe medii și lungi, robotul devia de la linia dreaptă din cauza controlului în buclă deschisă (*open-loop*), fără corecție pe baza aderenței inegale a roților. Soluția integrată pentru RF 2.0 este utilizarea senzorului inerțial IMU BNO055 pentru corecția automată a unghiului de girație în buclă închisă.


---

### Pasul 5: Foaia de Parcurs RF 2.0 & Orbit Odyssey (01:30 – 01:55)

Profesorul prezintă planul structurat pentru întregul an școlar:

1. **Metodologia de Lucru: 1 Robot Per Elev**
   - Fiecare cursant lucrează pe propriul său banc de lucru, cu propria trusă hardware completă.
   - Fiecare elev este responsabil direct de asamblarea mecanică, lipirea firelor, calibrarea senzorilor și scrierea codului pe microcontrollerul său.
   - Toate operațiunile complexe sunt demonstrate pas cu pas de către profesor, astfel încât toți cei 16 roboți să fie asamblați corect și uniform.

2. **Reconstrucția Șasiului (RF 2.0)**
   - Șasiu modular printat 3D cu toleranțe optimizate, sloturi de fixare mecanică pentru plăci (fără bandă adezivă) și cleme de reținere a firelor.

3. **Controlul prin Bluetooth Low Energy (BLE)**
   - Înlocuim serverul web lent cu un profil BLE GATT. Comenzile joystick-ului de pe smartphone ajung la robot în câteva milisecunde, iar telefonul rămâne conectat la date mobile.

4. **Senzorii pentru Navigație Autonomă**
   - **Senzor Ultrasonic HC-SR04**: Detecția distanței până la obstacole și frânare automată.
   - **Senzori Infraroșu (IR)**: Urmărirea liniilor de traseu pe suprafața arenei.
   - **IMU BNO055 pe magistrala I2C**: Măsurarea unghiului de girație (*Yaw*) pentru viraje exacte la 90° și 180°.

5. **Competiția Orbit Odyssey & Alianțele de Echipă**
   - O arenă tehnică ce simulează o misiune de explorare: o rundă autonomă pe bază de senzori, urmată de o rundă teleoperată contracronometru prin BLE.
   - Elevii își păstrează proprii roboți, dar formează alianțe de echipă pentru a stabili o identitate comună (design de carcasă, cromatică, accesorii 3D custom) și strategii comune de acumulare a punctajului.

---

### Pasul 6: Concluzii & Pregătirea Sculelor (01:55 – 02:00)

- Recapitularea obiectivelor pentru sesiunea următoare.
- **Necesarul pentru Lecția 02**: Fiecare elev își va aduce kitul de anul trecut pentru **dezasamblare completă, curățare și verificare electrică**.
- Scule necesare pe bancul de lucru: șurubelniță hexagonală 2.5 mm, șurubelniță Phillips PH1, pensetă și multimetru digital.
