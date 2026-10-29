# Prezentare: Lecția 09 [RBF2.9] – Alianțele Cromatice roboRangers, Senzorii Robotului (IR & Ultrasonic) și Pianul Wireless în `RBFesp`

---

## 🎨 Canva AI Master Prompt (Copy-Paste Ready)

> **Prompt pentru generare automată în Canva AI / Gamma:**
> Creează o prezentare modernă (format 16:9) pentru elevi de 11–15 ani la cursul de robotică avansată **Robot Factory: Evolution — Lecția 09 [RBF2.9]**.
> - **Stil vizual**: Inginerie de competiție, dark slate (`#0F172A`), electric cyan (`#00E5FF`), crimson (`#DC143C`) și verde smarald (`#50C878`), carduri moderne cu diagrame de senzori și unde sonore.
> - **Structură**: 10 slide-uri care acoperă recapitularea `RBFesp`, formarea Alianțelor Cromatice (`roboRangers` + 30 nuanțe `#HEX`), regula testării izolate a senzorilor, senzorul optic IR de linie (`TCRT5000`), senzorul ultrasonic de distanță (`HC-SR04`), acustica buzzer-ului pasiv (`Hz`) și logica `event.isPressed()` pentru un pian wireless.
> - Include marcajele `[Placeholder Imagine: ...]` pe fiecare slide.

---

## Slide 1: Titlu & Misiunea Zilei
- **Titlu**: Lecția 09 [RBF2.9]: Alianțele Cromatice, Senzorii Robotului și Pianul Wireless BLE
- **Subtitlu**: Robot Factory: Evolution — De la Recapitularea `RBFesp` la Simțuri și Sunet
- **Conținut pe Slide**:
  - **1. Scurtă Recapitulare `RBFesp`**: Cum comunică browserul cu ESP32 prin Bluetooth.
  - **2. Alianțele Cromatice (`roboRangers`)**: Roluri în echipă, botezul robotului și cele 30 de culori `#HEX`.
  - **3. Senzori Pas cu Pas (Câte Unul Singur!)**: Senzorul IR de linie -> Senzorul Ultrasonic -> Buzzer-ul.
  - **4. Marea Provocare de Final**: Construirea unui Pian Muzical Wireless cu `event.isPressed()`!
- **[Placeholder Imagine: Robotul RF 2.0 inconjurat de un senzor IR, un senzor ultrasonic HC-SR04, un modul Buzzer si note muzicale luminoase.]**
- **Note pentru Profesor**:
  - Salutați elevii și anunțați că astăzi trecem de la structura de bază `RBFesp` la conectarea primilor senzori și la un proiect muzical surpriză la final!

---

## Slide 2: Recapitulare Rapidă — Cum Funcționează `RBFesp`?
- **Titlu**: Recapitulare Rapidă: Arhitectura `RBFesp`
- **Conținut pe Slide**:
  - **`RBFesp.ino` (Linia 24)**: Locul unde dăm numele Bluetooth unic al robotului (`#define BLUETOOTH_NAME`).
  - **`ButtonHandler.h`**: Fișierul în care scriem `userSetup()` și `onButton(KeyEvent event)`.
  - **`event.isPressed('W')`**: Devine `true` când ținem tasta apăsată în browser și `false` (`else`) când ridicăm degetul!
  - **`monitor.println("...")`**: Trimite mesajele și valorile senzorilor wireless prin Bluetooth direct pe ecranul din browser.
- **[Placeholder Imagine: Diagrama simpla cu tab-urile RBFesp.ino si ButtonHandler.h conectate prin Bluetooth la interfata web espwasd.]**
- **Note pentru Profesor**:
  - Faceți un scurt ping-pong de întrebări de 2 minute ca să vă asigurați că toți își amintesc cum au folosit `ButtonHandler.h` și `monitor.println()` data trecută.

---

## Slide 3: Cele 3 Roluri din Alianța `roboRangers`
- **Titlu**: Formarea Alianțelor: Cele 3 Specializări `roboRangers`
- **Conținut pe Slide**:
  - **1 Robot Per Cursant**: Fiecare își construiește, își botează și își programează propriul robot!
  - 🛠️ **Forge Ranger (Hardware & Cablaje)**: Specialistul în conectarea corectă a pinilor `VCC`, `GND` și semnal pe placa de extensie.
  - 💻 **Cyber Ranger (Software C++ & `RBFesp`)**: Specialistul în codul din `ButtonHandler.h`, citirea senzorilor și frecvențe PWM.
  - 🎯 **Vanguard Ranger (Identitate `#HEX` & Testare)**: Căpitanul de calibrare, telemetrie în browser și sincronizare a echipei.
- **[Placeholder Imagine: Trei embleme moderne pentru Forge Ranger, Cyber Ranger si Vanguard Ranger.]**
- **Note pentru Profesor**:
  - Subliniați că rolurile arată cine este expertul-consultant din echipă pe fiecare domeniu, dar fiecare elev cablază și programează propriul său robot.

---

## Slide 4: Botezul Robotului & Cele 30 de Alianțe Cromatice (`Hue Alliances`)
- **Titlu**: Un Nume pentru Fiecare Robot & O Culoare Oficială pentru Alianță
- **Conținut pe Slide**:
  - **Numele Individual al Robotului**: Ales de proprietar (*Viper*, *Nova*, *Bolt*, *Shadow*, *Titan*).
  - **Numele Alianței = Strict o Culoare Oficială (`Hue Alliance`)** din catalogul celor **30 de nuanțe cu cod `#HEX`**:
    - *SkyBlue (`#87CEEB`)*, *Scarlet (`#FF2400`)*, *Yellow (`#FFD700`)*, *Mint (`#3EB489`)*, *Cobalt (`#0047AB`)*, *Emerald (`#50C878`)*, *Cyan (`#00E5FF`)*, *Violet (`#8F00FF`)*, *Obsidian (`#1B1B1B`)*...
  - **Formatul `BLUETOOTH_NAME`**: `"Culoare_NumeRobot"` (ex: `"Scarlet_Viper"`, `"Mint_Nova"`).
- **[Placeholder Imagine: Grila colorata cu cele 30 de nuante Hue Alliances si codurile lor HEX.]**
- **Note pentru Profesor**:
  - Explicați de ce formatul `"Culoare_NumeRobot"` ajută enorm când toți roboții din clasă au Bluetooth-ul pornit în același timp.

---

## Slide 5: Regula de Aur a Inginerului — Testăm Câte o Componentă pe Rând!
- **Titlu**: De Ce Nu Conectăm Toți Senzorii Deodată?
- **Conținut pe Slide**:
  - **Greșeala Începătorului**: Conectează 3 senzori simultan și scrie 200 de linii de cod. Când ceva nu merge, nu știe care fir sau care linie de cod e de vină!
  - **Metoda Inginerească (`Unit Testing Hardware`)**:
    1. Conectăm și programăm **doar Senzorul IR de Linie**.
    2. Conectăm și programăm **doar Senzorul Ultrasonic**.
    3. Conectăm și programăm **doar Buzzer-ul Pasiv**.
- **[Placeholder Imagine: Trei etape clare numerotate 1, 2, 3 cu bife verzi: 1. IR Sensor -> 2. Ultrasonic -> 3. Buzzer Piano.]**
- **Note pentru Profesor**:
  - Insistați pe această regulă: în laboratorul de azi nu amestecăm senzorii între ei, ci îi stăpânim pe rând!

---

## Slide 6: Componenta 1 — Senzorul Optic de Linie IR (`TCRT5000`)
- **Titlu**: Pasul 1: Senzorul Infraroșu de Linie (`IR Line Sensor`)
- **Conținut pe Slide**:
  - **Cum Funcționează**: LED-ul transparent emite lumină infraroșie invizibilă, iar fototranzistorul negru măsoară câtă lumină se reflectă înapoi.
  - **Suprafață Albă**: Reflectă lumina IR înapoi către senzor (`0` / `LOW`).
  - **Bandă Neagră**: Absoarbe lumina IR — nimic nu se mai întoarce (`1` / `HIGH`).
  - **Conectarea celor 3 Pini**:
    - `VCC` -> `3.3V` / `5V` | `GND` -> `GND` | `DO` (`OUT`) -> `GPIO 32` (`digitalRead(32)`).
- **[Placeholder Imagine: Schema clara a senzorului IR TCRT5000 deasupra unei suprafete albe vs banda neagra si cei 3 pini VCC, GND, DO.]**
- **Note pentru Profesor**:
  - Arătați elevilor micul LED indicator de pe modulul IR care se aprinde și se stinge când apropie mâna sau banda neagră.

---

## Slide 7: Componenta 2 — Senzorul Ultrasonic de Distanță (`HC-SR04`)
- **Titlu**: Pasul 2: Ecolocația cu Senzorul Ultrasonic (`HC-SR04`)
- **Conținut pe Slide**:
  - **Inspirat de Lilieci și Delfini**: Măsoară distanța folosind ultrasunete de `40.000 Hz` (invizibile și inaudibile pentru om).
  - **Cei 4 Pini ai Senzorului**:
    - `VCC` -> `5V` | `GND` -> `GND`
    - `TRIG` (`GPIO 18` — `OUTPUT`): Difuzorul care lansează un impuls scurt de `10 microsecunde`.
    - `ECHO` (`GPIO 19` — `INPUT`): Microfonul care măsoară timpul ecoului cu `pulseIn()`.
  - **Formula Distanței**: `Distanța (cm) = (Durata * 0.034) / 2` (împărțim la 2 pentru că sunetul parcurge drumul dus-întors!).
- **[Placeholder Imagine: Diagrama senzorului HC-SR04 emitand unde sonore din cilindrul TRIG catre un obstacol si primind ecoul in cilindrul ECHO.]**
- **Note pentru Profesor**:
  - Întrebați clasa: „De ce împărțim rezultatul la 2?” Pentru că sunetul a mers de la robot la perete și apoi de la perete înapoi la robot!

---

## Slide 8: Componenta 3 — Buzzer-ul Pasiv și Fizica Notelor Muzicale (`Hz`)
- **Titlu**: Pasul 3: Cum Transformă Buzzer-ul Curentul Electric în Muzică?
- **Conținut pe Slide**:
  - **Ce este Sunetul?**: O vibrație a aerului măsurată în **Hertzi (`Hz`)** — adică de câte ori pe secundă vibrează membrana buzzer-ului.
  - **Frecvențele Gamei DO Major**:
    - `DO = 262 Hz` | `RE = 294 Hz` | `MI = 330 Hz` | `FA = 349 Hz`
    - `SOL = 392 Hz` | `LA = 440 Hz` | `SI = 494 Hz` | `DO2 = 523 Hz`
  - **Funcțiile în C++**:
    - `tone(PIN_BUZZER, 262)` -> Pornește vibrația la `262 Hz` (nota DO).
    - `noTone(PIN_BUZZER)` -> Oprește instantaneu sunetul!
- **[Placeholder Imagine: Clapele unui pian cu cele 8 note DO-RE-MI-FA-SOL-LA-SI-DO si frecventele lor in Hz deasupra fiecarei clape.]**
- **Note pentru Profesor**:
  - Explicați că frecvența `440 Hz` (nota LA) este standardul internațional după care își acordează instrumentele toate orchestrele din lume.

---

## Slide 9: Secretul Pianului Wireless în `RBFesp` — `event.isPressed()`
- **Titlu**: Cum Funcționează o Clapă de Pian cu `event.isPressed()`?
- **Conținut pe Slide**:
  - **Cum se comportă un pian adevărat?**
    - Când **ții degetul apăsat** pe clapă (`+W`), nota muzicală sună continuu.
    - În clipa în care **ridici degetul** de pe clapă (`-W`), sunetul se oprește imediat!
  - **Traducerea în `ButtonHandler.h`**:
    - `if (event.isPressed('W'))` -> `tone(PIN_BUZZER, 262);` (Pornește nota DO!)
    - `else` -> `noTone(PIN_BUZZER);` (Oprește nota când eliberezi tasta!)
- **[Placeholder Imagine: Diagrama logica: Apasare tasta W -> event.isPressed('W') este TRUE -> tone(262 Hz) | Eliberare tasta W -> ELSE -> noTone().]**
- **Note pentru Profesor**:
  - Întrebați elevii: „Ce s-ar întâmpla dacă am uita să punem `noTone(PIN_BUZZER)` pe ramura `else`?” Buzzer-ul ar țipa la nesfârșit după prima apăsare!

---

## Slide 10: Briefing-ul Laboratorului Practic (În Ordine, Pas cu Pas!)
- **Titlu**: Misiunile Noastre Practice de Astăzi
- **Conținut pe Slide (Text-Only Briefing)**:
  1. **Alianța & Numele Robotului**: Alegem culoarea `#HEX` a alianței și setăm `#define BLUETOOTH_NAME "Culoare_NumeRobot"` în `RBFesp.ino`.
  2. **Misiunea 1 (Senzorul IR)**: Conectăm senzorul IR la `GPIO 32` și afișăm `ALB` / `NEGRU` în browser la apăsarea tastei `Q`.
  3. **Misiunea 2 (Senzorul Ultrasonic)**: Conectăm `HC-SR04` (`TRIG=18`, `ECHO=19`) și afișăm distanța în `cm` în browser la apăsarea tastei `E`.
  4. **Misiunea Finală (Pianul Wireless BLE)**: Conectăm Buzzer-ul la `GPIO 23`, programăm cele 8 note pe tastele `W, A, S, D, Q, E, R, F` cu `event.isPressed()` și cântăm împreună în concertul alianțelor!
- **Note pentru Profesor**:
  - Lăsați acest slide pe proiector în timp ce începeți lucrul practic pas cu pas.
