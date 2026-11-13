# Lecția 11 [RBF2.11]: Controlul în Buclă Închisă: Calibrarea Senzorilor Optici IR, Algoritmul Line Follower & Navigația pe Circuitul Orbital

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.11
- **Modul**: Robotică Autonomă, Percepție Senzorială & Algoritmică de Control C++
- **Vârsta Țintă**: 11 – 15 ani (Nivelul 2 – Evolution)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune avansată de laborator mecatronic dedicată tranziției de la controlul manual teleoperat prin BLE la primul sistem de navigație complet autonom în buclă închisă (Closed-Loop Control). Elevii aprofundează fizica senzorilor optici în infraroșu (fototranzistori TCRT5000), înțelegând cum reflexia luminii pe suprafețe albe și absorbția pe banda neagră generează variații de tensiune măsurabile de convertorul analog-digital (ADC) al plăcii ESP32. Mentorul demonstrează cum zgomotul optic ambiental impune o procedură riguroasă de calibrare a pragului critic (threshold) folosind consola wireless din browser (BLE monitor). În a doua parte, cursanții implementează în C++ arhitectura algoritmului de urmărire a liniei (Line Follower): de la abordarea simplistă reactivă (Bang-Bang) la controlul proporțional diferențial prin semnale PWM pe driverul TB6612FNG, integrând o stare de siguranță pentru recuperarea traiectoriei în caz de pierdere a liniei (Line Lost Recovery). Lecția se încheie cu prima probă oficială de calificare pentru arena Orbit Odyssey: parcurgerea autonomă contra-cronometru a unui circuit orbital cu linii curbe și intersecții.

### Întrebări Esențiale:
1. Care este diferența fundamentală dintre un sistem în buclă deschisă (Open-Loop) și un sistem în buclă închisă (Closed-Loop) în controlul unui robot mobil?
2. Cum funcționează o pereche optică în infraroșu (LED emițător la 940 nm + fototranzistor) și de ce suprafețele negre absorb lumina în loc să o reflecte?
3. De ce este obligatorie calibrarea dinamică a pragului senzorial (threshold) la începutul fiecărei misiuni pe o suprafață nouă de concurs?
4. De ce algoritmul clasic de tip Bang-Bang produce oscilații violente (serpuire) și cum elimină controlul proporțional (P-Controller) aceste vibrații prin ajustarea fină a semnalelor PWM?
5. Ce strategie algoritmică poate aplica un robot autonom atunci când pierde complet contactul cu linia neagră într-un viraj strâns?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/
- **ESP32 Arduino Core Documentation**: https://docs.espressif.com/projects/arduino-esp32/
- **Interfața Web Bluetooth BLE Monitor**: https://rbfesp.local/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Configurare Digitală
- [ ] Mediul Arduino IDE instalat pe stațiile de lucru cu pachetul de plăci ESP32 și bibliotecile firmware-ului `RBFesp` actualizate.
- [ ] Schița demonstrativă de calibrare a senzorilor IR pregătită pe ecranul profesorului (`IR_Calibration_Diagnostic.ino`).
- [ ] Prezentarea teoretică încărcată pe videoproiector conform `presentation_interactive.md`.
- [ ] Quiz-ul Kahoot de 10 întrebări teoretice deschis în tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Roboții fizici RF 2.0 complet asamblați ai elevilor (cu placa ESP32, driverul TB6612FNG, acumulatorii 2S 18650 și bara frontală de senzori IR montată).
- [ ] Mostre de trasee orbitale de test la fiecare banc: foi albe A3 sau fâșii de plastic alb mat prevăzute cu linii negre trasate cu bandă izolatoare neagră de 19 mm lățime.
- [ ] Pista centrală master de competiție "Orbit Odyssey Track" întinsă pe podeaua laboratorului (circuit în buclă închisă cu viraje largi, o curbă strânsă în ac de păr și o zonă de start/stop marcată cu linie neagră dublă).
- [ ] Cabluri USB de programare și șurubelnițe de precizie pentru ajustarea înălțimii fizice a senzorilor IR (distanță recomandată: 5–10 mm deasupra solului).

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Deschiderea Misiunii & Briefing Tehnic** | Trecerea în revistă a geamănului digital Onshape din Lecția 10. Lansarea provocării: trecerea de la telecomanda manuală BLE la inteligența autonomă pe circuitul orbital. |
| **00:15 – 00:35** | **2. Teorie Inginerească: Percepția Optică IR & Bucla Închisă** | Prezentarea interactivă: fizica radiației la 940 nm, absorbție vs reflexie, conversia ADC, citirea zgomotului ambiental și matematica algoritmului proporțional. |
| **00:35 – 00:55** | **3. Laborator C++: Calibrarea Pragului Senzorial prin BLE** | Elevii încarcă schița de diagnoză, plasează robotul pe alb și pe negru, citesc valorile brute ADC în BLE monitor și calculează pragul optim de decizie (Threshold). |
| **00:55 – 01:30** | **4. Programare Algoritmică: Dezvoltarea Line Follower-ului** | Implementarea logicii de control diferențial pe motoarele TT: stările de viraj stânga/dreapta, avans sincron, algoritm de căutare a liniei pierdute și oprire la linia dublă. |
| **01:30 – 01:45** | **5. Sesiune de Tuning pe Banc & Reglarea Coeficienților PWM** | Teste pe pistele individuale A3: reglarea vitezei de bază (Base Speed) și a diferenței de virare pentru a elimina serpuirea excesivă pe viraje line. |
| **01:45 – 01:55** | **6. Marea Provocare: Calificările Orbit Odyssey Time-Trial** | Concurs autonom pe circuitul master: fiecare robot parcurge 2 tururi complete fără intervenție umană; cronometrare oficială și punctaj pentru acuratețe. |
| **01:55 – 02:00** | **7. Quiz Kahoot & Debriefing de Echipă** | Evaluare teoretică de 10 întrebări axate strict pe teoria senzorilor și controlul în buclă închisă (conform `quiz.md`), urmată de analiza performanțelor alianțelor. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Deschiderea Misiunii & Briefing Tehnic (15 min)
Profesorul deschide sesiunea aducând în fața clasei un robot RF 2.0 pornit, conectat prin BLE la ecranul mare:
*"În Lecția 10 ați asamblat complet geamănul digital în Onshape, demonstrând că stăpâniți mecanica fiecărui șurub M3. Până acum, însă, robotul vostru a fost un simplu executant orb: mergea înainte doar când apăsați un buton pe telefon. În misiunile spațiale reale, o sondă de explorare aflată pe Lună sau pe Marte nu poate fi condusă cu joystick-ul din cauza întârzierii semnalului radio de câteva minute. Robotul trebuie să aibă propriii ochi și propriul creier. Astăzi construim primul sistem de navigație autonomă în buclă închisă."*

Profesorul definește cele două concepte fundamentale:
- **Buclă Deschisă (Open-Loop)**: Trimitem comanda "mergi înainte cu 50% viteză timp de 3 secunde", fără să verificăm dacă roțile patinează, dacă traseul e drept sau dacă în față se află o prăpastie.
- **Buclă Închisă (Closed-Loop)**: Robotul citește continuu senzorii optici, compară starea reală cu traiectoria dorită și ajustează instantaneu turația fiecărui motor pentru a anula eroarea.

---

### Pasul 2: Teorie Inginerească: Percepția Optică IR & Bucla Închisă (20 min)
Se parcurge prezentarea conform `presentation_interactive.md`. Elevii citesc cu voce tare slide-urile teoretice, iar profesorul desenează la tablă fluxul optic:

**1. Anatomia Senzorului TCRT5000:**
- Modulul frontal conține două componente optice alăturate: un LED emițător de lumină infraroșie (cu lungimea de undă invizibilă de 940 nm) și un fototranzistor receptor acoperit cu un filtru negru (pentru a bloca lumina vizibilă).
- Când robotul se află deasupra unei foi albe, particulele de lumină infraroșie sunt reflectate puternic înapoi către fototranzistor. Fototranzistorul se deschide, permițând trecerea curentului, iar tensiunea citită de pinul ADC scade spre 0V.
- Când robotul ajunge deasupra benzii negre, pigmentul de carbon din bandă absoarbe aproape integral radiația de 940 nm. Fototranzistorul rămâne blocat, iar pinul ADC citește o tensiune ridicată (apropiată de 3.3V).

**2. Conversia Analog-Digitală (ADC pe ESP32) & Calculul Pragului (Threshold):**
Convertorul ADC de pe ESP32 transformă tensiunea citită într-un număr întreg între 0 și 4095 (pe o rezoluție de 12 biți):
- Valoarea tipică pe alb: aproximativ 400 – 900.
- Valoarea tipică pe negru: aproximativ 3200 – 3900.
- Pragul critic de decizie matematică (Threshold) se calculează ca media aritmetică a celor două valori:
  `Threshold = (Valoare_Alb + Valoare_Negru) / 2`
Dacă citirea curentă este mai mare decât Threshold, robotul decide că se află pe linie neagră; dacă este mai mică, decide că se află pe fundal alb.

---

### Pasul 3: Laborator C++: Calibrarea Pragului Senzorial prin BLE (20 min)
Elevii deschid Arduino IDE și încarcă schița simplificată de diagnoză senzorială:

```cpp
// Diagnostic & Calibrare Senzori IR - Robot Factory Evolution
#define PIN_IR_LEFT   34
#define PIN_IR_RIGHT  35

void setup() {
  Serial.begin(115200);
  pinMode(PIN_IR_LEFT, INPUT);
  pinMode(PIN_IR_RIGHT, INPUT);
}

void loop() {
  int rawLeft = analogRead(PIN_IR_LEFT);
  int rawRight = analogRead(PIN_IR_RIGHT);

  Serial.print("IR_S: ");
  Serial.print(rawLeft);
  Serial.print(" | IR_D: ");
  Serial.println(rawRight);

  delay(150);
}
```

**Protocolul de Calibrare pe Banc:**
1. Elevul plasează robotul astfel încât ambii senzori să fie deasupra suprafeței albe. Notează valorile din monitorul serial: de exemplu `rawLeft = 650`, `rawRight = 700`.
2. Deplasează robotul astfel încât senzorii să fie complet pe banda neagră. Notează valorile: de exemplu `rawLeft = 3600`, `rawRight = 3550`.
3. Elevul calculează pragul propriului robot:
   `Threshold_Stanga = (650 + 3600) / 2 = 2125`
   `Threshold_Dreapta = (700 + 3550) / 2 = 2125`
4. Această valoare de aproximativ `2100` devine constanta de referință în programul principal.

---

### Pasul 4: Programare Algoritmică: Dezvoltarea Line Follower-ului (35 min)
Profesorul explică la tablă mașina de stări a algoritmului de urmărire cu 2 senzori montați de o parte și de alta a liniei negre (la distanță de 22 mm între ei, astfel încât banda neagră de 19 mm să poată sta perfect între ei):

**Logica celor 4 Stări Fundamentale:**
1. **Drum Drept (Ambii senzori pe ALB)**:
   - Banda neagră este centrată între senzori.
   - Acțiune: Ambele motoare rulează înainte cu viteza de croazieră (`BaseSpeed = 160`).
2. **Deviație spre Dreapta (Senzorul STÂNG atinge banda NEAGRĂ)**:
   - Robotul a alunecat spre dreapta, linia este la stânga.
   - Acțiune: Viraj corector stânga (reducem motorul stâng la `60` sau îl oprim, accelerăm motorul drept la `200`).
3. **Deviație spre Stânga (Senzorul DREPT atinge banda NEAGRĂ)**:
   - Robotul a alunecat spre stânga, linia este la dreapta.
   - Acțiune: Viraj corector dreapta (accelerăm motorul stâng la `200`, reducem motorul drept la `60`).
4. **Punct de Control / Stop (Ambii senzori pe NEGRU)**:
   - Robotul a întâlnit o linie transversală perpendiculară (linia de sosire a orbitei).
   - Acțiune: Oprire completă și alertă acustică prin buzzer.

Elevii integrează această logică în schița principală C++ folosind funcțiile modulare ale driverului TB6612FNG (`setMotors(speedLeft, speedRight)`).

---

### Pasul 5: Sesiune de Tuning pe Banc & Reglarea Coeficienților PWM (15 min)
Elevii testează robotul pe traseele A3 de pe banc:
- **Problema Șerpuirii Excesive (Oscilație Armonică)**: Dacă la viraj diferența de viteză dintre motoare este prea brutală (de exemplu `0` pe stânga și `255` pe dreapta), robotul se smucește violent și iese de pe pistă.
- **Soluția**: Elevii reduc viteza de virare (de exemplu `110` și `180`) până când mișcarea devine fluidă și continuă, fără șocuri mecanice.

---

### Pasul 6: Marea Provocare: Calificările Orbit Odyssey Time-Trial (10 min)
Roboții sunt aduși la pista master întinsă pe podea:
- Fiecare cursant așază robotul la linia de start.
- La semnalul profesorului, se pornește comutatorul de alimentare fără telecomandă.
- Robotul parcurge autonom traseul orbital cu viraje line și curba strânsă în ac de păr.
- La detectarea liniei duble de finiș (ambii senzori pe negru), robotul se oprește automat și emite un semnal sonor victorios.
- Mentorul notează timpul oficial și numărul de corecții manuale necesare (un parcurs curat fără nicio atingere este considerat parcurs perfect de 100 de puncte).

---

### Pasul 7: Quiz Kahoot & Debriefing de Echipă (5 min)
Elevii finalizează sesiunea cu testul Kahoot de 10 întrebări teoretice (conform `quiz.md`). Se verifică înțelegerea conceptelor cheie: buclă închisă, fototranzistor, lungime de undă IR, rezoluție ADC pe 12 biți, calculul pragului și controlul diferențial al vitezei.
