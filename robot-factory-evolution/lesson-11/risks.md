# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 11 [RBF2.11]

Acest document reprezintă instrumentul de analiză preventivă a riscurilor pentru instructorul cursului **Robot Factory: Evolution**, identificând potențialele blocaje hardware, interferențe de rețea Wi-Fi și provocări didactice pentru adolescenții de 11–15 ani în cadrul Lecției 11.

---

## 1. Riscuri Tehnice & Puncte Critice Hardware

### Risc 1: Deconectarea Pinilor Sertizați la Impacturile din Arena de Sumo
- **Descriere**: În timpul coliziunilor dintre șasiuri în ringul de luptă Sumo, șocurile mecanice pot scoate din lăcaș pinii care nu au fost zăvorâți cu click complet, lăsând un motor fără alimentare chiar în timpul meciului.
- **Soluție / Safeguard Pedagogic**:
  - Mentorul impune protocolul de verificare prealabilă „Tug-Test” la fiecare robot înainte de a permite intrarea în arenă.
  - Se verifică ca fasciculul de cabluri să fie asigurat cu un colier de plastic (zip-tie) de coloana centrală a șasiului, eliminând tensiunea directă pe pinii plăcii de extensie.

### Risc 2: Eroarea de Bootloader la Încărcarea Firmware-ului ESP32-CAM („Failed to connect to ESP32”)
- **Descriere**: Modulul AI-Thinker ESP32-CAM nu are un circuit automat avansat de comutare a stării pinului GPIO 0. Dacă elevii uită să lege pinul GPIO 0 la masă (GND) pe adaptoarele FTDI sau nu apasă butonul Reset în fereastra critică de 3 secunde (`Connecting.....___.....`), mediul Arduino IDE raportează eroare de conexiune pe portul serial.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul demonstrează procedura la videoproiector pas cu pas.
  - Dacă se utilizează placa de bază cu mufă USB (ESP32-CAM-MB), elevii sunt instruiți să țină apăsat butonul `IO0`, să apese scurt `RST`, apoi să elibereze `IO0` pentru a forța intrarea în modul de descărcare firmware.

### Risc 3: Căderea de Tensiune (Brownout Reset) la Pornirea Emisiei Wi-Fi și a LED-ului Flash
- **Descriere**: La activarea fluxului video prin Wi-Fi și aprinderea LED-ului Flash (GPIO 4), consumul de curent al modulului ESP32-CAM crește brusc de la 80 mA la peste 350–500 mA. Dacă este alimentat printr-un cablu USB lung și subțire sau dintr-un port USB 2.0 slab, tensiunea scade sub 4.5V, determinând resetarea în buclă a cipului (*Brownout detector was triggered*).
- **Soluție / Safeguard Pedagogic**:
  - Se folosesc exclusiv cabluri de date USB scurte (sub 50 cm), conectate direct în porturile USB 3.0 (albastre) ale calculatorului.
  - În viitorul montaj pe robot, camera se va alimenta exclusiv din linia stabilizată de 5.0V a convertorului de tensiune, niciodată din pinul de 3.3V al plăcii principale.

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 4: Congestionarea Rețelei Wi-Fi din Laborator (Blocarea Fluxurilor Video)
- **Descriere**: Dacă 10–15 module ESP32-CAM transmit simultan fluxuri video MJPEG VGA/SVGA pe același canal de 2.4 GHz al routerului din sală, lățimea de bandă se saturează, producând un lag masiv (3–5 secunde) sau deconectarea laptopurilor de la rețea.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul are pregătită în schiță alternativa autonomă `WiFi.softAP()`. În acest scenariu, fiecare modul ESP32-CAM devine el însuși un mini-router Wi-Fi cu nume propriu (ex: `Cam_Viper_01`), iar laptopul elevului se conectează direct la camera sa, ocolind complet routerul școlii.
  - Elevii sunt instruiți să folosească rezoluția `VGA (640x480)` sau `QVGA (320x240)` pentru o rată fluidă de 15–20 cadre pe secundă, evitând rezoluția maximă UXGA în timpul testelor de laborator.

### Risc 5: Frustrarea și Demotivarea la Pierderea Rundelor în Turneul de Arenă
- **Descriere**: Elevii ale căror mașini sunt împinse rapid afară din ringul de Sumo pot deveni frustrați sau pot da vina pe starea robotului.
- **Soluție / Safeguard Pedagogic**:
  - Turneul este prezentat ca un test tehnic de anduranță mecanică, nu ca un joc de eliminare.
  - Fiecare meci pierdut este analizat inginerește: pilotul a accelerat prea devreme? roțile au patinat din lipsă de greutate pe puntea motoare? bara de protecție a agățat solul?
  - Sistemul de punctaj include recompense speciale pentru „Cea mai rapidă recuperare mecanică” și „Cel mai stabil viraj de evitare”.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Toți roboții RF 2.0 au acumulatorii încărcați (tensiune verificată la catedră: peste 7.8V).
- [ ] Ringul de Sumo (cerc de 1 m diametru) și culoarul de sprint sunt delimitate vizibil pe podea cu bandă adezivă.
- [ ] Driverul ars TB6612FNG și conectorul DuPont desfăcut sunt pregătite la catedră pentru momentul demonstrativ de analiză tehnică.
- [ ] Driverele de port serial CH340 / CP2102 sunt verificate pe calculatoarele elevilor pentru recunoașterea imediată a portului COM.
- [ ] SSID-ul și parola rețelei Wi-Fi de test la 2.4 GHz sunt scrise clar pe tablă.
- [ ] Exemplul `CameraWebServer` este compilat de probă pe calculatorul profesorului înainte de începerea orei.
