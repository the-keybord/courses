# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 11 [RBF2.11]

Acest document reprezintă instrumentul de analiză preventivă a riscurilor pentru instructorul cursului **Robot Factory: Evolution**, identificând potențialele blocaje hardware, interferențe optice și provocări didactice pentru adolescenții de 11–15 ani în cadrul Lecției 11.

---

## 1. Riscuri Tehnice & Puncte Critice Hardware

### Risc 1: Înălțimea Incorectă a Senzorilor IR Față de Sol (Distanță focală greșită)
- **Descriere**: Senzorul TCRT5000 are o distanță optimă de detecție situată între 5 mm și 10 mm deasupra suprafeței. Dacă bara de senzori este montată prea sus (de exemplu la peste 18 mm), lumina reflectată devine prea difuză, iar fototranzistorul nu mai poate distinge banda neagră de albul podelei. Dacă este montată prea jos (sub 3 mm), senzorul agață îmbinările benzii adezive și lovește denivelările podelei.
- **Soluție / Safeguard Pedagogic**:
  - Mentorul verifică la începutul orei înălțimea fizică a barei frontale pe fiecare robot cu un distanțier sau o bucată de lemn/plastic de 7 mm grosime.
  - Reglarea rapidă se face prin ajustarea șuruburilor metrice M3 ale suportului frontal sau adăugarea/scoaterea unei piulițe distanțiere.

### Risc 2: Variațiile de Iluminare Solară (Geamuri deschise / Schimbarea vremii)
- **Descriere**: Dacă în timpul laboratorului de 120 de minute soarele iese din nori și luminează direct pista de pe podea, radiația infraroșie naturală a soarelui poate satura fototranzistorul, făcând ca pragul calculat la începutul orei să devină invalid.
- **Soluție / Safeguard Pedagogic**:
  - Traseul de concurs se plasează departe de ferestrele expuse la soare direct, de preferat sub iluminat artificial fluorescent sau LED uniform.
  - Elevii învață comanda rapidă din BLE monitor prin care pot trimite caracterul `c` pentru a forța o re-calibrare automată de 2 secunde direct pe pistă.

### Risc 3: Căderea de Tensiune la Accelerarea Concomitentă a Motoarelor (Brownout Reset pe ESP32)
- **Descriere**: La comutarea bruscă a sensului de rotație a motoarelor TT pe un viraj agresiv, curentul de vârf cerut din baterie poate scădea tensiunea logicii sub 2.7V, provocând resetarea spontană a plăcii ESP32 (Brownout detector).
- **Soluție / Safeguard Pedagogic**:
  - Bateriile 2S Li-Ion trebuie să aibă o tensiune de cel puțin 7.4V la startul orei.
  - În codul C++, viteza motoarelor nu se comută instantaneu de la `+255` la `-255`, ci se impune o rampă de accelerare software de 20 milisecunde pentru a reduce șocurile de curent inductive.

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 4: "Blocajul în Cod" la Scăderea Toleranțelor C++
- **Descriere**: Spre deosebire de blocurile vizuale din MakeCode, în C++ o singură paranteză lipsă sau un punct și virgulă uitat produce erori de compilare care pot demoraliza elevii mai puțin experimentați.
- **Soluție / Safeguard Pedagogic**:
  - Codul este furnizat modular: funcțiile de bază pentru driverul TB6612FNG și citirea ADC sunt deja incluse în schița master `RBFesp`, elevii completând doar corpul instrucțiunilor condiționale `if - else if - else` din funcția `runLineFollower()`.
  - Liderii Cyber Rangers din fiecare alianță asistă la depanarea erorilor de sintaxă la stațiile colegilor.

### Risc 5: Frustrarea "Robotul Meu Sare de pe Linie la Curbe Strânse"
- **Descriere**: Elevii au tendința de a mări viteza la maxim (`255`), provocând ieșirea violentă a mașinii în decor la curba în ac de păr.
- **Soluție / Safeguard Pedagogic**:
  - Mentorul impune regula "Slow is Smooth, Smooth is Fast": prima calificare se face la viteză de siguranță (`BaseSpeed = 140`), iar mărirea vitezei este permisă doar după realizarea a 2 tururi complete fără nicio ieșire de pe traseu.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Pista centrală de concurs Orbit Odyssey este curățată de praf și scame, iar banda izolatoare neagră este presată ferm pe podea fără bule de aer.
- [ ] Bateriile Li-Ion 18650 din roboți au tensiunea verificată (peste 7.6V pentru întregul pachet 2S).
- [ ] Iluminatul sălii este stabil, iar jaluzelele sunt coborâte pentru a preveni razele directe de soare pe pistă.
- [ ] Șuruburile de prindere ale barei frontale de senzori sunt strânse pentru a nu vibra în timpul deplasării.
- [ ] Cronometrul digital oficial este pregătit pe ecranul mare pentru manșele oficiale Time-Trial.
