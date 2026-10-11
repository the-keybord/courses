# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 06 [RBF2.6] – Senzori Optici de Podea & Asamblarea Tracțiunii

---

## 📌 Context & Scopul Documentului
Acest document reprezintă analiza pre-mortem dedicată exclusiv profesorului / mentorului pentru **Lecția 06 [RBF2.6]**. Scopul său este de a identifica potențialele riscuri electrice, de cablaj, erori de upload firmware și blocaje de ritm în timpul primei testări a motoarelor robotului RF 2.0.

---

## ⚠️ 1. Riscuri Electrice & de Cablaj Hardware

### A. Omiterea sau Conectarea Greșită a Pinului `STBY` (Standby) pe Driverul TB6612FNG
- **Scenariu de Risc**: Elevul conectează corect pinii `PWMA`, `PWMB`, `AIN1`, `AIN2`, dar uită să lege pinul `STBY` la `GPIO 14` sau îl lasă neconectat (*floating*).
- **Impact**: Driverul rămâne în modul de oprire de urgență (Standby logic 0), iar motoarele nu reacționează deloc la încărcarea programului, creând impresia falsă că placa este arsă sau codul este greșit.
- **Măsuri de Prevenire**:
  - Profesorul subliniază la tablă regula de aur a driverului TB6612FNG: **„Pinul STBY este cheia generală de contact a motoarelor!”**.
  - În ghidul de verificare, primul pas la depanare este măsurarea stării logice pe `STBY` (trebuie să fie `HIGH` în cod).

### B. Inversarea Polarității sau Direcției Motoarelor (Motorul se învârte înapoi în loc de înainte)
- **Scenariu de Risc**: La asamblare, firele roșu/negru ale unui motor TT sunt conectate invers la bornele driverului (`AO1/AO2`), determinând ca un ax să se rotească înainte, iar celălalt înapoi.
- **Impact**: Elevul este confuz și încearcă să modifice haotic conexiunile sau codul.
- **Măsuri de Prevenire**:
  - Profesorul explică la începutul testului: *„Dacă un motor merge invers, nu este o greșeală, ci doar o polaritate inversată. Avem două soluții rapide: inversăm cele două fire de motor la ieșirea driverului sau inversăm stările HIGH/LOW din cod!”*.

### C. Cădere de Tensiune sau Resetare ESP32 la Pornirea Motoarelor
- **Scenariu de Risc**: Elevul încearcă să alimenteze motoarele direct din ieșirea de 3.3V sau 5V a plăcii ESP32 (din portul USB) în loc să folosească alimentarea de forță `VM` din bateria 2S (7.4V).
- **Impact**: Curentul absorbit de motoare la pornire depășește limita regulatorului USB $\to$ ESP32 suferă un *brownout* și se resetează continuu în buclă.
- **Măsuri de Prevenire**:
  - Schema de cablare separă strict: alimentarea logică `VCC` (5V de la shield) de alimentarea de forță `VM` (legată la bateria de 7.4V prin comutator).

---

## 💻 2. Riscuri Software & Programare în Arduino IDE

### A. Erori de Port COM sau Lipsa Driverului USB-UART (CH340 / CP2102)
- **Scenariu de Risc**: Un laptop nu recunoaște placa ESP32 sau elevul selectează un port COM greșit, primind eroarea `Failed to connect to ESP32: Timed out waiting for packet header`.
- **Impact**: Blocaj de 10–15 minute pe un singur banc de lucru.
- **Măsuri de Prevenire**:
  - Toate laptopurile din laborator trebuie verificate înainte de oră cu un ESP32 de test conectat.
  - Elevii sunt instruiți să țină apăsat scurt butonul `BOOT` pe ESP32 în momentul în care consola afișează `Connecting.......___`.

---

## 🛡️ 3. Riscuri de Siguranță & Mecanice

### A. Montarea Accidentală a Roților înainte de Testare
- **Scenariu de Risc**: Un elev nerăbdător montează roțile de cauciuc pe axele motoarelor înainte de upload-ul codului. La pornirea bruscă a motoarelor, robotul demarează nesupravegheat pe bancul de lucru, căzând pe podea sau smulgând cablul USB conectat la laptop.
- **Impact**: Risc de rupere a portului USB de pe laptop, crăparea ramei 3D sau smulgerea pinilor din cablaj.
- **Măsuri de Prevenire**:
  - **Regulă de Laborator Absolută**: Roțile rămân în cutiile de piese până la finalul lecției.
  - Toate testele se fac exclusiv cu **șasiul așezat pe standul de testare (suspendat)**, axele rotindu-se liber în aer.

---

## ⏱️ 4. Riscuri de Pacing (Gestionarea Timpului de 120 Minute)

- **Minutul 30**: Prezentarea teoretică trebuie finalizată pentru a asigura cel puțin 70 de minute de lucru practic efectiv.
- **Minutul 75**: Toate plăcile ESP32 trebuie să fie cablate la drivere; se trece sincron la deschiderea Arduino IDE.
- **Minutul 100**: Fiecare elev trebuie să fi rulat cel puțin o dată secvența de testare pe banc.

---

## ✅ 5. Quick Verification Checklist (Pentru Profesor în timpul orei)

- [ ] **Minutul 15**: Prezentarea teoretică este în plină desfășurare, cu focus pe optica IR și Regula Mâinii Stângi.
- [ ] **Minutul 40**: Toate plăcile ESP32 sunt montate rigid pe suporturile 3D ale șasiului.
- [ ] **Minutul 65**: Conexiunile de semnal (`PWMA`, `AIN1`, `AIN2`, `STBY`, `BIN1`, `BIN2`, `PWMB`) sunt verificate vizual.
- [ ] **Minutul 85**: Șasiurile sunt așezate pe suporturi suspendate, **fără roți**, și conectate prin USB la Arduino IDE.
- [ ] **Minutul 105**: Testul de diagnostic `Motor_Diagnostics.ino` a fost rulat cu succes pe toate bancurile.
- [ ] **Minutul 115**: Mini Quiz-ul Kahoot rulează cu participare maximă din partea cursanților.
- [ ] **Minutul 120**: Comutatoarele de baterie sunt pe `OFF` și roboții sunt depozitați ordonat în cutiile de echipă.
