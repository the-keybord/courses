# Lecția 11 [RBF2.11]: Validarea Tracțiunii în Arenă (Racing & Sumo) și Revoluția Viziunii Artificiale: Programarea Modulului ESP32-CAM & Streaming Video Live

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.11
- **Modul**: Diagnostic Mecatronic, Dinamica Tracțiunii & Viziune Artificială în Timp Real
- **Vârsta Țintă**: 11 – 15 ani (Nivelul 2 – Evolution)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune dinamică de laborator mecatronic împărțită în două etape majore: validarea practică a flotei de roboți RF 2.0 reparați și inițierea într-una dintre cele mai avansate ramuri ale roboticii moderne — viziunea artificială (Computer Vision). Lecția debutează cu un scurt debriefing de inginerie aplicată (Root Cause Analysis): mentorul prezintă cauzele defecțiunilor din sesiunea anterioară (pini sertizați neblocați mecanic în carcase, cablaje inversate și distrugerea semiconductorilor prin polaritate inversată). Urmează marea probă a focului pe bancul de lucru și în arenă: elevii își pornesc mașinile, calibrează comenzile Bluetooth Low Energy (BLE) în interfața web `RBFesp` și concurează într-un turneu palpitant de viteză (Sprint Racing) și luptă tactică (Robot Sumo Arena). În a doua parte a orei, laboratorul trece la nivelul următor: fiecare elev scoate din cutia antistatică modulul inteligent **ESP32-CAM**, studiază arhitectura senzorului optic OV2640 de 2 Megapixeli și rolul critic al memoriei **PSRAM de 8 MB**. Elevii configurează și încarcă în C++ firmware-ul de streaming video (`CameraWebServer`), conectează camera prin Wi-Fi la stația de lucru și recepționează primul flux video live direct în browser. Sesiunea se încheie cu analiza conceptului de **FPV Space Rover** (First-Person View) și pregătirea viitoarei integrări a camerei pe șasiul fizic.

### Întrebări Esențiale:
1. De ce un pin sertizat (crimp terminal) trebuie împins până când se aude un „click” mecanic clar în clapeta de plastic a carcasei conectorului?
2. Ce se întâmplă la nivelul tranzistoarelor MOSFET interne atunci când un driver de motoare precum TB6612FNG este alimentat cu polaritatea inversată (VCC și GND inversate)?
3. De ce protocolul Bluetooth Low Energy (BLE) este excelent pentru controlul agil al motoarelor prin joystick, dar complet nepotrivit pentru transmiterea unui flux video în direct?
4. De ce modulul ESP32-CAM necesită o memorie externă specială de tip PSRAM (8 MB) pentru a putea transmite imagini video fără a bloca procesorul?
5. Cum transformă o cameră video fără fir FPV (First-Person View) un robot terestru într-o sondă de explorare planetară ghidată de la distanță din cabina virtuală?

### 🔗 Resurse & Linkuri Utile
- **Exemplul Oficial Espressif CameraWebServer**: https://github.com/espressif/arduino-esp32/tree/master/libraries/ESP32/examples/Camera/CameraWebServer
- **Ghid Tehnic Documentație AI-Thinker ESP32-CAM**: https://docs.ai-thinker.com/esp32-cam
- **Interfața Web Bluetooth Controller (`RBFesp`)**: https://github.com/the-keybord/espwasd
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Configurare Digitală
- [ ] Mediul Arduino IDE instalat pe toate calculatoarele elevilor cu pachetul de plăci `esp32 by Espressif Systems` (versiunea 2.0.x sau 3.x) instalat și funcțional.
- [ ] Schița demonstrativă `CameraWebServer` verificată în prealabil pe calculatorul catedrei (`File > Examples > ESP32 > Camera > CameraWebServer`).
- [ ] În fișierul de configurare `camera_pins.h`, profesorul se asigură că este activată linia `#define CAMERA_MODEL_AI_THINKER` și comentate toate celelalte modele.
- [ ] Rețeaua Wi-Fi din laborator verificată (SSID și parolă clare afișate la tablă, frecvență 2.4 GHz activă) SAU schița pregătită pentru configurare în mod autonom `WiFi.softAP()` în cazul în care routerul sălii filtrează traficul între dispozitive locale.
- [ ] Prezentarea interactivă încărcată pe videoproiector conform `presentation_interactive.md`.
- [ ] Quiz-ul Kahoot de 10 întrebări deschis într-un tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Toți roboții RF 2.0 reparați, cu noile drivere TB6612FNG montate, conexiunile sertizate verificate la tracțiune și acumulatorii 18650 încărcați la capacitate maximă (minim 7.8V – 8.2V pe pachetul 2S).
- [ ] Un driver TB6612FNG ars păstrat la catedră, alături de o lupă sau o cameră documentară, pentru a le arăta elevilor la microscop/ecran efectul „fumului magic” și urmele de supraîncălzire ale siliciului.
- [ ] Un conector DuPont dezasamblat cu lamelă vizibilă pentru demonstrarea mecanismului de zăvorâre mecanică (latch).
- [ ] Kiturile ESP32-CAM pentru fiecare elev (modulul AI-Thinker cu senzor OV2640 montat pe conectorul FPC cu bandă aurie).
- [ ] Plăcile de extensie cu mufă micro-USB **ESP32-CAM-MB** (sau cabluri FTDI / USB-Serial cu fire de conectare și jumper pentru GPIO 0).
- [ ] Cabluri de date micro-USB scurte și solide (cu 4 fire: alimentare + linii de date D+/D-).
- [ ] Arena de concurs marcată pe podea:
  - Pentru Racing: o pistă de sprint marcată cu două linii de bandă adezivă la distanță de 4–5 metri, cu jaloane sau obstacole de slalom la mijloc;
  - Pentru Sumo: un cerc cu diametrul de 1.0 – 1.2 metri trasat cu bandă albă sau neagră pe o suprafață plană, netedă.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Post-Mortem Mecatronic & „Lecția Fumului Magic”** | Analiza tehnică a defecțiunilor: mecanismul de declic al pinilor sertizați, greșelile de pinout, distrugerea tranzistoarelor la polaritate inversată și protocolul de inspecție la rece. |
| **00:15 – 00:45** | **2. Validarea Flotei & Turneul de Arenă (Racing / Sumo)** | Pornirea roboților reparați, conectarea prin BLE în browser (`RBFesp`), verificarea răspunsului motoarelor pe banc și disputarea competiției de viteză și luptă Sumo. |
| **00:45 – 01:05** | **3. Unboxing & Teoria Viziunii Artificiale (ESP32-CAM)** | Scoaterea din ambalaj a modulului ESP32-CAM: analiza senzorului OV2640, rolul memoriei PSRAM de 8 MB, LED-ul Flash și comparația între lățimea de bandă BLE vs. Wi-Fi. |
| **01:05 – 01:40** | **4. Laborator C++: Încărcarea `CameraWebServer` & Live Streaming** | Deschidere Arduino IDE, configurare `CAMERA_MODEL_AI_THINKER`, setare Wi-Fi/SoftAP, upload firmware pe placă, deschiderea adresei IP pe laptop și streaming video în browser. |
| **01:40 – 01:50** | **5. Arhitectura FPV Space Rover: Integrarea pe Robotul RF 2.0** | Planificarea transformării robotului în sondă marțiană teleoperată: cerințele de alimentare curată la 5.0V, amplasarea mecanică frontală și pregătirea modelării suportului 3D în Onshape. |
| **01:50 – 02:00** | **6. Quiz Kahoot & Debriefing de Echipă** | Evaluare teoretică Kahoot de 10 întrebări axate strict pe hardware, conectori, viziune digitală, Wi-Fi și memorie PSRAM (conform `quiz.md`). |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Post-Mortem Mecatronic & „Lecția Fumului Magic” (15 min)
Profesorul adună elevii în jurul mesei demonstrative, așezând în fața lor două piese: un driver TB6612FNG complet nou și unul ars în laboratorul precedent, alături de o lupă:

*"Data trecută ne-am propus să ajungem la senzorii optici, dar laboratorul ne-a dat o lecție de inginerie veritabilă. În marile companii spațiale precum NASA sau SpaceX, rachetele și roboții nu funcționează perfect din prima încercare. Când ceva cedează, inginerii nu caută vinovați, ci fac o procedură numită **Root Cause Analysis (RCA)** — investigarea cauzei rădăcină. Haideți să înțelegem ce s-a întâmplat săptămâna trecută și cum am reparat fiecare mașină."*

Profesorul explică cele trei capcane clasice în care a căzut laboratorul:

1. **Misterul Conectorilor Fără Click (Crimp Pins Nezăvorâți)**:
   - Un conector DuPont sau JST este compus din două elemente: contactul metalic sertizat pe fir și carcasa neagră din plastic.
   - În interiorul carcasei de plastic există o clapetă elastică minusculă. Când introducem pinul metalic în orientarea corectă, fanta lui trebuie să sară peste clapetă producând un **„click” mecanic audibil**.
   - Dacă pinul este împins doar pe jumătate sau inversat la 180°, el pare că stă la locul lui, dar la prima vibrație produsă de motoarele TT el se retrage în interior. Firul iese afară, atinge alt pin vecin sau lasă circuitul fără alimentare.
   - **Regula de Aur**: La fiecare cablu montat se aplică **Tug-Test** (o tragere ușoară și fermă de fir; dacă firul alunecă afară, pinul nu a fost zăvorât!).

2. **Decalarea Pinilor (Pinout Mismatch)**:
   - Placa de extensie a ESP32-ului are zeci de pini alăturați. Decalarea cu doar un singur pas (de exemplu introducerea unui fir de semnal în pinul vecin de masă GND) paralizează comanda motorului.

3. **Inversarea Polarității & „Fumul Magic” al Driverului TB6612FNG**:
   - Tranzistoarele MOSFET din interiorul punții H sunt proiectate să conducă curentul masiv de tracțiune într-o singură direcție.
   - Când inversăm din greșeală firul roșu de alimentare pozitivă (7.4V din baterie) cu firul negru de masă (GND), diodele interne de protecție intră în scurtcircuit direct.
   - În câteva fracțiuni de secundă, siliciul microscopului se supraîncălzește la peste 200°C, capsula de plastic a cipului se fisurează, iar componenta eliberează ceea ce inginerii numesc în glumă *„The Magic Smoke”* (fumul fără de care circuitele electronice nu mai funcționează niciodată).
   - **Protocolul Preventiv**: Înainte de a apăsa comutatorul ON/OFF, se face o inspecție la rece a cablului roșu (pozitiv) și a cablului negru (negativ/masă).

---

### Pasul 2: Validarea Flotei & Turneul de Arenă (Racing / Sumo) (30 min)

Profesorul anunță că toți roboții au fost reparați cu succes, cablajele au fost blocate cu fermitate, iar driverele arse au fost înlocuite cu componente noi. Este momentul ca elevii să testeze agilitatea mașinilor în condiții reale de solicitare.

#### Procedura de Punere în Funcțiune pe Banc:
1. Elevul așază robotul pe banc fără ca roțile să atingă blatul de lucru (pe un suport de lemn sau cutie).
2. Se pornește comutatorul general de alimentare. Se verifică aprinderea LED-urilor de stare: LED-ul roșu pe placa ESP32 și LED-urile driverului.
3. Se deschide browserul Google Chrome pe telefon sau laptop la adresa interfeței de control Bluetooth (`index.html`).
4. Elevul apasă `Connect BLE`, își selectează robotul după numele unic stabilit în Lecția 09 (ex. `SkyBlue_Viper`, `Mint_Bolt`) și verifică funcționarea axelor de tracțiune:
   - Joystick înainte: ambele roți se rotesc sincron înainte;
   - Joystick stânga/dreapta: rotație diferențială (una înainte, cealaltă înapoi pentru pivotare pe loc).

#### Marea Arenă: Formatul Competiției:
Profesorul organizează clasa pe două divizii:

- **Proba A: Sprint Drag Racing & Slalom (15 min)**:
  - Pe un culoar drept de 4 metri, fiecare elev își plasează robotul la linia de START.
  - La semnalul mentorului, mașina trebuie să accelereze pe linie dreaptă, să ocolească două jaloane și să treacă linia de STOP fără coliziuni cu pereții.
  - Se cronometrează timpul fiecărei curse; se testează stabilitatea conexiunii radio și precizia direcției.
- **Proba B: Robot Sumo Battle (15 min)**:
  - Doi roboți din alianțe diferite sunt așezați spate în spate în interiorul cercului alb marcat pe podea (DoHyō).
  - La comanda „GO!”, piloții au voie să execute manevre exclusiv prin telecomanda BLE.
  - Scopul este împingerea fizică a adversarului în afara liniei albe folosind bara de protecție a șasiului RF 2.0.
  - Câștigă robotul cu cel mai bun echilibru mecanic, aderență a cauciucurilor și abilitate a pilotului.

Această etapă descarcă tensiunea acumulată după eșecurile tehnice anterioare, demonstrează că efortul de reparare a dat roade și confirmă că șasiul RF 2.0 este o platformă extrem de robustă!

---

### Pasul 3: Unboxing & Teoria Viziunii Artificiale (ESP32-CAM) (20 min)

După încheierea turneului, elevii parchează roboții și primesc la fiecare post de lucru o cutie nouă: kitul **ESP32-CAM**.

Profesorul proiectează slide-urile din `presentation_interactive.md` și ghidează analiza piesei:

#### 1. Anatomia Modulului AI-Thinker ESP32-CAM:
- **Cipul ESP32-S**: Inima plăcii, conținând procesorul Tensilica Xtensa Dual-Core la 240 MHz, modulul radio Wi-Fi 802.11 b/g/n și Bluetooth clasic + BLE.
- **Senzorul Optic Omnivision OV2640**:
  - Un senzor foto-video miniatural capabil de captură color la o rezoluție nativă de 2 Megapixeli (până la 1600 x 1200 pixeli în imagini statice).
  - Este conectat la placă printr-un conector FPC cu 24 de pini și o bandă aurie flexibilă. *Atenție*: banda nu trebuie îndoită forțat sau smulsă!
- **Secretul Strategic: Memoria PSRAM de 8 MB**:
  - Profesorul pune o întrebare cheie: *„De ce credeți că o placă ESP32 normală nu poate rula streaming video, deși are același procesor la 240 MHz?”*
  - Răspuns: Memoria RAM internă standard a unui ESP32 are doar ~520 KB. Un singur cadru video de înaltă rezoluție, înainte de compresie, ocupă sute de kilobyți. Dacă am încerca să transmitem un flux video la 15–20 de cadre pe secundă, memoria internă s-ar epuiza instantaneu, iar procesorul ar intra în Crash (*Out of Memory*).
  - Modulul ESP32-CAM integrează un cip extern de **PSRAM (Pseudo-Static RAM) de 8 Megabiți**. Această memorie acționează ca un rezervor uriaș de stocare temporară a imaginilor (Frame Buffer), permițând compresia continuă în format **MJPEG** (Motion JPEG).
- **LED-ul Flash de Mare Putere (GPIO 4)**:
  - Un LED alb rece extrem de luminos conectat direct la pinul `GPIO 4`. În întuneric, el acționează ca un far de explorare veritabil.

#### 2. Wi-Fi vs Bluetooth Low Energy (Bătălia Lățimii de Bandă):
Profesorul desenează la tablă o comparație clară între cele două tehnologii fără fir:
- **Bluetooth Low Energy (BLE)**:
  - *Lățime de bandă mică*: ~1 până la 2 Megabiți pe secundă (Mbps).
  - *Consum energetic*: Extrem de scăzut (zeci de miliamperi).
  - *Rol*: Ideal pentru trimiterea pachetelor scurte de control (ex. „Mergi înainte cu viteza 200” ocupă doar 5 octeți).
- **Wi-Fi (802.11 b/g/n)**:
  - *Lățime de bandă mare*: 54 până la 150 Mbps.
  - *Consum energetic*: Ridicat (vârfuri de 300–500 mA la emisie).
  - *Rol*: Autostrada de date masivă necesară pentru transmiterea a mii de pachete TCP/IP care compun fluxul video continuu.

---

### Pasul 4: Laborator C++: Încărcarea `CameraWebServer` & Live Streaming (35 min)

Elevii deschid mediul Arduino IDE și pregătesc configurarea firmware-ului oficial de streaming:

#### 1. Deschiderea Exemplului Oficial:
- Din meniul de sus: `File` -> `Examples` -> `ESP32` -> `Camera` -> `CameraWebServer`.
- Schița deschide automat mai multe tab-uri: `CameraWebServer.ino`, `camera_pins.h`, `camera_index.h` și `app_httpd.cpp`.

#### 2. Configurarea Modelului de Cameră în `CameraWebServer.ino`:
În tab-ul principal `CameraWebServer.ino`, elevii identifică blocul de definire a camerelor și activează linia corespunzătoare modulului AI-Thinker:

```cpp
// ===================
// Select camera model
// ===================
//#define CAMERA_MODEL_WROVER_KIT // Has PSRAM
//#define CAMERA_MODEL_ESP_EYE // Has PSRAM
//#define CAMERA_MODEL_ESP32S3_EYE // Has PSRAM
//#define CAMERA_MODEL_M5STACK_PSRAM // Has PSRAM
//#define CAMERA_MODEL_M5STACK_V2_PSRAM // M5Camera version B Has PSRAM
//#define CAMERA_MODEL_M5STACK_WIDE // Has PSRAM
//#define CAMERA_MODEL_M5STACK_ESP32CAM // No PSRAM
//#define CAMERA_MODEL_M5STACK_UNITCAM // No PSRAM
#define CAMERA_MODEL_AI_THINKER // Has PSRAM
```

Toate celelalte linii cu `#define CAMERA_MODEL_...` trebuie să rămână comentate (să aibă `//` în față)!

#### 3. Configurarea Rețelei Wi-Fi:
La liniile imediat următoare, elevii introduc credențialele rețelei locale:

```cpp
const char* ssid = "Nume_WiFi_Laborator";
const char* password = "Parola_WiFi";
```

*(Notă pentru profesor: Dacă routerul laboratorului blochează comunicarea directă între IP-uri, camera poate fi configurată ca punct de acces independent prin comanda `WiFi.softAP("ESP32_Cam_Elev", "12345678");`, iar laptopul se conectează direct la rețeaua camerei).*

#### 4. Setarea Parametrilor Plăcii în Arduino IDE:
- **Board**: `AI Thinker ESP32-CAM` (sau `ESP32 Wrover Module`).
- **CPU Frequency**: `240MHz (WiFi/BT)`.
- **Flash Frequency**: `80MHz`.
- **Flash Mode**: `QIO`.
- **Partition Scheme**: `Huge APP (3MB No OTA/1MB SPIFFS)`.
- **PSRAM**: `Enabled` (esențial pentru activarea memoriei externe!).
- **Port**: Selectați portul COM asociat plăcii de programare.

#### 5. Procedura de Flashing (Încărcarea Codului):
- **Dacă se folosește placa de bază ESP32-CAM-MB**: Elevul conectează cablul micro-USB, apasă butonul `Upload` (săgeata spre dreapta) din Arduino IDE. Programatorul automat introduce modulul în bootloader fără alte acțiuni.
- **Dacă se folosește cablu FTDI**: Elevul conectează jumperul între pinul `GPIO 0` și `GND`, apasă `Upload`, iar la apariția textului `Connecting.....` apasă scurt butonul `RST/Reset` de pe spatele camerei. Imediat ce scrierea ajunge la 100%, jumperul de pe GPIO 0 se deconectează, iar butonul Reset se apasă din nou pentru pornirea programului normal.

#### 6. Vizualizarea Fluxului Video în Browser:
1. Elevul deschide **Serial Monitor** în Arduino IDE la viteza de **115200 baud**.
2. Apasă o dată butonul fizic `Reset` de pe modul.
3. Pe monitorul serial apare confirmarea conexiunii și adresa IP alocată de router:
   ```text
   WiFi connected
   Camera Ready! Use 'http://192.168.1.145' to connect
   ```
4. Elevul copiază adresa IP (ex: `http://192.168.1.145`) și o deschide într-un tab nou din Google Chrome.
5. Se încarcă panoul de control complet al camerei!
6. În partea de jos a meniului din stânga, elevul apasă butonul albastru **`Start Stream`**!
7. **Moment de WOW în clasă**: Pe ecranul laptopului apare instantaneu imaginea video fluidă transmisă prin unde radio din mâna elevului!
8. Elevii testează modificarea rezoluțiilor: comută de la `QVGA (320x240)` la `VGA (640x480)` și `SVGA (800x600)`, observă modificarea numărului de cadre pe secundă (FPS) și testează butoanele de rotire a imaginii (`V-Flip` și `H-Mirror`).

---

### Pasul 5: Arhitectura FPV Space Rover: Integrarea pe Robotul RF 2.0 (10 min)

În ultimele 10 minute ale părții practice, profesorul aduce în fața clasei un robot RF 2.0 cu un modul ESP32-CAM așezat simbolic deasupra carcasei frontale:

*"Până acum, robotul vostru a fost condus ca o mașinuță teleghidată din parc: îl priveați de sus și îi dădeați comenzi. Astăzi ați văzut că un cip minuscul de câțiva centimetri poate transmite video HD în direct prin aer. Gândiți-vă cum este condus roverul Perseverance pe suprafața planetei Marte: nimeni nu stă pe o stâncă lângă el cu o telecomandă. Oamenii de la NASA stau în centrul de control din Pasadena, California, privesc ecranele gigantice cu fluxul camerelor video și ghidează mașina prin cratere.*

*Aceasta este misiunea noastră supremă: **FPV Space Rover (First-Person View)**! În lecțiile următoare vom modela în Onshape un suport 3D elegant care să fixeze această cameră în vârful robotului, cu o înclinație optimă de 15 grade spre sol. Vom alimenta camera direct din bateria de 7.4V prin convertorul stabilizat la 5.0V, iar voi veți putea pilota robotul dintr-o altă încăpere, privind exclusiv ecranul laptopului!"*

Profesorul subliniază regula energetică esențială: camera nu va fi alimentată niciodată din pinul de 3.3V al plăcii principale (care ar produce un *brownout* instantaneu), ci exclusiv de pe linia de mare putere de 5.0V!

---

### Pasul 6: Quiz Kahoot & Debriefing de Echipă (10 min)

Elevii scot telefoanele sau deschid un tab nou pe laptop și se conectează la jocul Kahoot:
- Quiz-ul conține 10 întrebări axate strict pe teoria mecatronică parcursă astăzi (conform detaliilor din `quiz.md`).
- La finalul fiecărei întrebări, profesorul valorifică explicația pedagogică pentru a întări diferențele dintre BLE și Wi-Fi, importanța memoriei PSRAM și protecția împotriva scurtcircuitelor.
- Elevii deconectează cablurile USB, așază modulele ESP32-CAM în cutiile antistatice și depozitează roboții în standul oficial al laboratorului.
