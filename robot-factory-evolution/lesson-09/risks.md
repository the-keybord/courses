# Analiza Riscurilor (Pre-Mortem): Lecția 09 [RBF2.9] – Alianțele Cromatice, Senzorii (IR & Ultrasonic) și Pianul Wireless în `RBFesp`

---

## 1. Riscuri Tehnice & Hardware (Cablare Senzori, Ultrasonic & Buzzer)

### Risc 1.1: Amestecarea Firelor sau a Codului între Cei 3 Senzori
- **Descriere**: Unii elevi entuziaști pot încerca să lase toate firele conectate sau să lipească bucăți din codul senzorului IR peste codul senzorului ultrasonic și peste cel al buzzer-ului, generând erori de compilare (de exemplu, două funcții `onButton` sau două `userSetup` în același `ButtonHandler.h`).
- **Măsură de Prevenție**:
  - Impuneți regula strictă de laborator: în `ButtonHandler.h` există **un singur `userSetup()` și un singur `onButton(KeyEvent event)`**. Când trecem de la Experimentul 1 (IR) la Experimentul 2 (Ultrasonic) și apoi la Experimentul 3 (Pianul cu Buzzer), înlocuim curat conținutul din `ButtonHandler.h`.

### Risc 1.2: Conectarea Greșită a Pinilor `VCC` și `GND` la Senzorul IR sau Ultrasonic
- **Descriere**: Inversarea alimentării (`VCC` cu `GND`) pe modulul IR `TCRT5000` sau pe senzorul ultrasonic `HC-SR04` poate încălzi puternic comparatorul LM393 sau poate opri placa ESP32.
- **Măsură de Prevenție**:
  - **Forge Ranger**-ul fiecărei alianțe verifică obligatoriu regula culorilor pe placa de extensie înainte de conectarea cablului USB: `GND` merge întotdeauna la șirul de pini negri (`G`), iar `VCC` la șirul de pini roșii (`V` / `5V` / `3.3V`).

### Risc 1.3: Senzorul IR Rămâne Blocat pe `0` sau pe `1` Indiferent de Culoare
- **Descriere**: Potențiometrul albastru de pe modulul `TCRT5000` poate fi dereglat (prea sensibil sau prea puțin sensibil), astfel încât LED-ul de detecție stă mereu aprins sau mereu stins.
- **Măsură de Prevenție**:
  - Aveți la îndemână o șurubelniță mică în cruce. Dacă un senzor IR nu își schimbă starea când este apropiat la `5–8 mm` de masa albă, rotiți ușor potențiometrul modulului până când LED-ul indicator se aprinde pe alb și se stinge pe banda neagră.

### Risc 1.4: Confuzia între Buzzer Pasiv și Buzzer Activ la Pianul Wireless
- **Descriere**: Dacă în trusă s-a strecurat un buzzer **activ** (care are un oscilator intern fix și adesea un abțibild alb pe spate), acesta va scoate un singur țiuit ascuțit pe orice notă, ignorând frecvențele `262 Hz – 523 Hz` din `tone()`.
- **Măsură de Prevenție**:
  - Verificați înainte de lecție ca toate modulele împărțite elevilor să fie **buzzere pasive** (cele cu cablajul verde vizibil pe spate, fără abțibild alb peste capsulă, capabile să redea frecvențe PWM variabile).

---

## 2. Riscuri Software & Pacing (Gestionarea Timpului și a Sunetului)

### Risc 2.1: Uitarea Apelului `noTone(PIN_BUZZER)` pe Ramura `else`
- **Descriere**: Dacă un elev scrie doar `if (event.isPressed('W')) { tone(PIN_BUZZER, 262); }` fără ramura `else { noTone(PIN_BUZZER); }`, după prima apăsare a tastei `W` buzzer-ul va cânta nota DO fără oprire, creând zgomot continuu în clasă.
- **Măsură de Prevenție**:
  - Subliniați la proiector că în `RBFesp` perechea `if (event.isPressed(...)) { tone(...); } else { noTone(...); }` este indivizibilă! Pentru a adăuga toate cele 8 clape rapid (în 5 minute), elevii scriu prima clapă (`W`), o testează, iar apoi o copiază (`Copy-Paste`) de 7 ori, schimbând doar litera tastei (`A, S, D, Q, E, R, F`) și constanta notei (`NOTA_RE` ... `NOTA_DO2`).

### Risc 2.2: Depășirea Timpului la Sondaj și Alegerea Culorii Alianței
- **Descriere**: Alegerea nuanței din tabelul celor 30 de Alianțe Cromatice poate dura prea mult dacă elevii negociază îndelung, reducând timpul pentru cele 3 experimente cu senzori.
- **Măsură de Prevenție**:
  - Limitați etapa de sondaj + formare alianțe la **exact 20 de minute** cu cronometru pe proiector. Imediat ce o echipă și-a ales culoarea `#HEX`, o bifează pe tablă și trece la setarea `#define BLUETOOTH_NAME` în `RBFesp.ino`.

---

## 3. Checklist Rapid de Verificare (Cu 5 Minute Înainte de Oră)
- [ ] Proiectul `RBFesp` și pagina Web Bluetooth (`index.html`) sunt deschise pe fiecare laptop în Google Chrome / Edge?
- [ ] Fiecare banc are pregătite cele 3 componente: **1 x Senzor IR**, **1 x Senzor Ultrasonic `HC-SR04`** și **1 x Modul Buzzer Pasiv** + cabluri DuPont Mamă-Mamă (`F-F`)?
- [ ] Partitura în taste (`W - A - S - W...` pentru *Frère Jacques* și *Oda Bucuriei*) este pregătită pentru a fi afișată pe proiector la finalul lecției?
