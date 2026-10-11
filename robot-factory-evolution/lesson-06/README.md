# Lecția 06 [RBF2.6]: Senzori Optici de Podea & Asamblarea Tracțiunii Funcționale RF 2.0

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.6
- **Modul**: Percepție Senzorială, Robotică Competițională & Asamblare Electronică RF 2.0
- **Vârsta Țintă**: 11 – 15 ani
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Prezentare teoretică captivantă despre senzorii optici de podea (infraroșu reflexiv, matrice de senzori și senzori de culoare RGB) și strategiile de competiție (Line Follower, Labirint pe linii – Regula Mâinii Stângi, zone colorate), urmată de atelier practic ghidat de conectare completă a cablajului electronic (ESP32 + driver TB6612FNG + alimentare) și încărcarea primului firmware de diagnostic al tracțiunii (fără roți montate, test pe bancul de lucru).
- **Proiect Practic**: Finalizarea conectării electrice și a logicii de control pentru robotul RF 2.0: montarea plăcii de extensie ESP32 pe șasiu, conectarea semnalelor de comandă (PWM, direcție, Standby) la driverul TB6612FNG, alimentarea din bateria 2S Li-Ion prin switch, și rularea unui program de test C++ în Arduino IDE pentru diagnosticarea rotației independente a celor două motoare TT (înainte, înapoi, viraje) direct pe bancul de lucru.
- **Rezultat Final**: Fiecare elev deține un robot 100% funcțional pe partea de tracțiune și control logic, gata verificat și calibrat, pregătit pentru montarea senzorilor în etapele următoare.

### Întrebări Esențiale:
1. Cum funcționează reflexia luminii infraroșii (IR) pe suprafețe albe vs negre și cum transformă un fototranzistor lumina în semnal electric digital sau analogic?
2. Cum funcționează senzorii de culoare RGB (TCS34725) pe podea și de ce sunt folosiți în competiții internaționale (RoboCup, WRO) pentru recunoașterea zonelor speciale?
3. Cum funcționează algoritmii de bază pentru urmărirea liniei (Bang-Bang pe 2 senzori vs Control Proporțional) și algoritmul „Regula Mâinii Stângi” în labirinturi de linii?
4. De ce testăm întotdeauna motoarele și direcția de rotație **fără roți montate** pe bancul de lucru înainte de rularea liberă pe podea?
5. Care este rolul semnalelor `STBY` (Standby) și `PWM` pe driverul TB6612FNG în controlul vitezei și al frânării motoarelor de curent continuu?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: *(link către Google Slides / Canva)*
- **Kahoot**: *(link către jocul live Kahoot din `quiz.md`)*
- **Alte Materiale**: Sketch Arduino IDE `Motor_Diagnostics.ino`

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Echipamente Digitale
- [ ] Prezentarea teoretică încărcată pe proiector (optica IR, matrice de senzori, senzori RGB, algoritmi de Line Follower și Labirint).
- [ ] Arduino IDE instalat pe toate calculatoarele elevilor, cu nucleul ESP32 configurat și porturile USB recunoscute.
- [ ] Sketch-ul de test `Motor_Diagnostics.ino` pregătit pe un stick USB sau distribuit pe rețea.
- [ ] Tab-ul de mini quiz Kahoot deschis pe proiector (bazat pe întrebările din `quiz.md`).

### Componente Hardware per Banc de Lucru (1 Set per Elev)
- [ ] **Șasiul mecanic asamblat în Lecția 05** (ramă 3D cu cele 2 motoare TT, suportul de driver TB6612FNG și switch-ul montat).
- [ ] **Microcontroller ESP32** + Placă de extensie (*ESP32 Expansion Shield* cu pini de alimentare 5V/GND/Signal).
- [ ] **Baterie Li-Ion 2S (7.4V)** încărcată sau suport de baterii 18650 cu cablu de conectare.
- [ ] **Cabluri de conexiune DuPont Mamă-Mamă (8–10 fire)** de 10–15 cm pentru semnalele de control ale driverului:
  - `PWMA`, `AIN1`, `AIN2`, `STBY`, `BIN1`, `BIN2`, `PWMB`, `VCC`, `GND`.
- [ ] Cablu de date USB (Micro-USB sau USB-C, în funcție de placa ESP32) pentru programare.
- [ ] Suport elevat / stand de testare (sau o cutie mică) pentru ca șasiul să stea suspendat în timpul rotației axelor.
- [ ] **ATENȚIE**: Roțile galbene de cauciuc rămân în cutie; **NU se montează roțile în această lecție** pentru siguranța testelor pe masă.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:10** | **1. Introducere & Conectare** | Primirea elevilor, recapitulare scurtă a asamblării din Lecția 05 și anunțarea obiectivului: astăzi dăm viață robotului și îi înțelegem simțul vederii de sol! |
| **00:10 – 00:30** | **2. Prezentare Teoretică: Senzori de Podea & Navigație pe Linie** | Livrarea prezentării teoretice: fizica IR (alb vs negru), senzori de culoare RGB, algoritmi Line Follower (Bang-Bang vs Proporțional) și rezolvarea labirinturilor (Regula Mâinii Stângi). |
| **00:30 – 00:45** | **3. Montarea Plăcii ESP32 pe Șasiul RF 2.0** | Fixarea mecanică a plăcii de extensie ESP32 pe șasiul 3D și organizarea zonei de conexiuni. |
| **00:45 – 01:15** | **4. Cablarea Completă a Semnalelor de Control (TB6612FNG $\leftrightarrow$ ESP32)** | Conectarea ghidată a pinilor de control (PWM stâng/drept, direcție, Standby, masă comună GND și alimentare logică VCC). |
| **01:15 – 01:40** | **5. Încărcarea Firmware-ului de Diagnostic & Testul Tracțiunii pe Banc** | Deschiderea Arduino IDE, încărcarea sketch-ului de test `Motor_Diagnostics.ino`, verificarea rotației axelor fără roți, inversarea direcției dacă este cazul. |
| **01:40 – 01:50** | **6. Inspecția Tehnică Individuală a Robotului Funcțional** | Validarea funcționării fiecărui robot de către profesor: motoarele pornesc lin, răspund la comenzi de viraj și se opresc la Standby. |
| **01:50 – 01:58** | **7. Mini Quiz Kahoot** | Sesiune interactivă de 10 întrebări scurte despre optica IR, senzori de culoare, Bang-Bang și labirinturi (din `quiz.md`). |
| **01:58 – 02:00** | **8. Concluzii & Depozitarea Roboților Activi** | Oprirea comutatorului de alimentare, deconectarea cablurilor USB, stocarea roboților complet funcționali în cutiile de echipă. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Introducere & Conectare (00:00 – 00:10)
Profesorul deschide sesiunea așezând pe masă șasiul asamblat în Lecția 05 și o foaie cu o pistă neagră de Line Following:
*"Lecția trecută am asamblat scheletul mecanic al robotului nostru RF 2.0. Astăzi facem doi pași uriași: teoretic, învățăm cum pot roboții să navigheze autonom pe trasee complexe și labirinturi folosind lumina infraroșie și senzorii de culoare; practic, conectăm creierul ESP32 la mușchii robotului (motoarele TT) și rulăm primul program de test pentru a vedea tracțiunea funcționând live!"*

---

### Etapa 2: Prezentare Teoretică – Senzori Optici de Podea & Navigație în Competiții (00:10 – 00:30)
Profesorul livrează prezentarea structurată (ghidat de `presentation.md` / `presentation_interactive.md`):

#### 1. Cum funcționează Senzorul Infraroșu Reflexiv (ex. TCRT5000)?
- **Spectrul Infraroșu (850–950 nm)**: O lumină invizibilă pentru ochiul uman, utilizată special pentru a nu fi bruiată de iluminatul ambiental din încăpere.
- **Principiul Emițător-Receptor**:
  - Un LED emițător trimite un fascicul IR spre sol.
  - Un fototranzistor măsoară cantitatea de radiație reflectată înapoi.
- **Fizica Culorilor (Alb vs Negru)**:
  - **Suprafața Albă**: Reflectă aproape integral radiația IR $\to$ fototranzistorul deschide circuitul (nivel logic `LOW` pe modul cu comparator).
  - **Linia Neagră**: Pigmentul negru absoarbe radiația IR $\to$ nicio rază nu se întoarce la receptor (nivel logic `HIGH`).
- **Înălțimea Critică de Lucru**: Senzorul IR funcționează optim la **3–8 mm** față de sol. Prea sus = dispersie a luminii; prea jos = risc de frecare mecanică.

#### 2. Senzori de Culoare RGB (ex. TCS34725)
- Pe lângă simplul contrast alb/negru, roboții avansați folosesc senzori cu LED alb și fotodiode filtrate cromatic (Red, Green, Blue, Clear).
- Ei transmit prin magistrala **I2C** valorile exacte ale intensității culorilor, permițând robotului să recunoască marcaje de viraj verde, zone de pericol roșii sau puncte de încărcare albastre în competițiile RoboCup Junior Rescue și WRO.

#### 3. Algoritmi de Urmărire a Liniei (Line Follower)
- **Algoritmul Binar Bang-Bang (2 Senzori)**:
  - Senzor Stânga pe Alb, Senzor Dreapta pe Alb $\to$ Mergi **Înainte**.
  - Senzor Stânga pe Negru $\to$ Virează **Stânga** (oprește motorul stâng).
  - Senzor Dreapta pe Negru $\to$ Virează **Dreapta** (oprește motorul drept).
  - Ambii senzori pe Negru $\to$ Oprește (**Stop / Intersecție**).
  - *Caracteristică*: Mișcare ușor oscilantă („wobble”), dar extrem de simplă și robustă.
- **Controlul Proporțional (Tranziție spre PID)**: Pe matrice cu 5–8 senzori, calculăm deviația milimetrică față de centru și reglăm fin viteza PWM a motoarelor pentru un parcurs ultra-rapid și lin.

#### 4. Navigarea în Labirint de Linii (Grid Line Maze)
- **Regula Mâinii Stângi (*Left-Hand Rule*)**:
  1. Dacă poți vira la stânga $\to$ virează stânga.
  2. Altfel, dacă poți merge înainte $\to$ mergi înainte.
  3. Altfel, dacă poți vira la dreapta $\to$ virează dreapta.
  4. Altfel (fundătură) $\to$ rotește-te 180°.
- **Optimizarea Drumului (*Dead-End Elimination*)**: La prima parcurgere robotul memorează deciziile; apoi simplifică secvențele greșite (ex. viraj stânga + întoarcere 180° + viraj stânga = mers drept înainte) pentru a zbura direct spre ieșire la a doua încercare!

---

### Etapa 3: Montarea Plăcii ESP32 pe Șasiul RF 2.0 (00:30 – 00:45)
Fiecare elev are pe banc șasiul asamblat în Lecția 05 (cu motoarele și driverul TB6612FNG deja montate):

1. **Poziționarea Plăcii de Extensie ESP32**:
   - Se plasează placa de extensie (*Expansion Shield*) pe turnurile de prindere superioare ale șasiului 3D.
   - Se fixează ferm cu 4 șuruburi scurte M3 (6–8 mm) sau prin clipsare pe distanțierele integrate în șasiu.
2. **Orientarea Conectorilor**:
   - Portul USB al plăcii ESP32 trebuie să fie orientat spre spatele robotului, pentru a fi ușor accesibil la conectarea cablului de programare de la laptop.
3. **Verificare**: Placa este perfect orizontală, rigidă și nu presează cablurile de forță montate dedesubt.

---

### Etapa 4: Cablarea Semnalelor de Control (TB6612FNG $\leftrightarrow$ ESP32) (00:45 – 01:15)

Profesorul proiectează tabelul pinilor și demonstrează fiecare fir pas cu pas. Elevii folosesc cabluri DuPont Mamă-Mamă:

#### Tabelul Conexiunilor de Semnal:

| Pin TB6612FNG | Funcție Semnal | Pin ESP32 (Shield) | Explicație Rol Funcțional |
| :--- | :--- | :--- | :--- |
| **PWMA** | Control Viteză Motor A (Stânga) | **GPIO 25** | Semnal PWM ($0 - 255$) pentru reglarea turației motorului stâng |
| **AIN1** | Direcție 1 Motor A | **GPIO 26** | Control sens rotație motor stâng |
| **AIN2** | Direcție 2 Motor A | **GPIO 27** | Control sens rotație motor stâng |
| **STBY** | Standby (Activare Driver) | **GPIO 14** | `HIGH` = Driver activ; `LOW` = Motoare oprite / Economisire energie |
| **BIN1** | Direcție 1 Motor B | **GPIO 12** | Control sens rotație motor drept |
| **BIN2** | Direcție 2 Motor B | **GPIO 13** | Control sens rotație motor drept |
| **PWMB** | Control Viteză Motor B (Dreapta) | **GPIO 33** | Semnal PWM ($0 - 255$) pentru reglarea turației motorului drept |
| **VCC** | Alimentare Logică Cip | **5V / 3.3V** | Alimentează circuitele logice interne ale cipului TB6612FNG |
| **GND** | Masă Comună Logică | **GND** | Referința comună de tensiune între ESP32 și driver |

#### Instrucțiuni de Rutare Curată:
1. Firele se grupează în două fascicule ordonate: canalul A (stânga) și canalul B (dreapta).
2. Se introduc mufele DuPont ferm pe pinii plăcii de extensie până la capăt.
3. Se verifică dublu conexiunea **STBY $\to$ GPIO 14**: dacă acest pin rămâne flotant sau pe `LOW`, driverul este dezactivat complet și motoarele nu se vor învârti deloc!

---

### Etapa 5: Încărcarea Firmware-ului de Diagnostic & Testul Tracțiunii pe Banc (01:15 – 01:40)

#### ⚠️ Regula de Siguranță Numărul 1: Șasiul Suspendat, FĂRĂ ROTI!
Înainte de a conecta cablul USB sau bateria, profesorul verifică:
- **Roțile NU sunt montate pe axele motoarelor.**
- Șasiul este așezat pe un mic stand / cutie, astfel încât axele albe din plastic să se poată roti liber în aer fără a atinge bancul de lucru.

#### Codul de Test `Motor_Diagnostics.ino` (Încărcat în Arduino IDE):

```cpp
/*
  Robot Factory: Evolution (RF 2.0)
  Sketch de Diagnostic Traciune Motoare TB6612FNG
  Lecția 06 [RBF2.6]
*/

// Definire pini Motor Stanga (Motor A)
const int PIN_PWMA = 25;
const int PIN_AIN1 = 26;
const int PIN_AIN2 = 27;

// Definire pin Standby
const int PIN_STBY = 14;

// Definire pini Motor Dreapta (Motor B)
const int PIN_BIN1 = 12;
const int PIN_BIN2 = 13;
const int PIN_PWMB = 33;

void setup() {
  Serial.begin(115200);
  Serial.println("--- Test Diagnostic Traciune RF 2.0 Initializat ---");

  // Configurare pini ca iesiri digitale
  pinMode(PIN_PWMA, OUTPUT);
  pinMode(PIN_AIN1, OUTPUT);
  pinMode(PIN_AIN2, OUTPUT);
  pinMode(PIN_STBY, OUTPUT);
  pinMode(PIN_BIN1, OUTPUT);
  pinMode(PIN_BIN2, OUTPUT);
  pinMode(PIN_PWMB, OUTPUT);

  // Activare driver prin pinul STBY
  digitalWrite(PIN_STBY, HIGH);
}

void loop() {
  Serial.println("1. Test Motor Stanga INAINTE (2 secunde)");
  digitalWrite(PIN_AIN1, HIGH);
  digitalWrite(PIN_AIN2, LOW);
  analogWrite(PIN_PWMA, 200); // Viteza 200 din 255
  delay(2000);

  Serial.println("2. Stop Motor Stanga (1 secunda)");
  analogWrite(PIN_PWMA, 0);
  delay(1000);

  Serial.println("3. Test Motor Dreapta INAINTE (2 secunde)");
  digitalWrite(PIN_BIN1, HIGH);
  digitalWrite(PIN_BIN2, LOW);
  analogWrite(PIN_PWMB, 200);
  delay(2000);

  Serial.println("4. Stop Motor Dreapta (1 secunda)");
  analogWrite(PIN_PWMB, 0);
  delay(1000);

  Serial.println("5. Ambele Motoare INAINTE Sincron (3 secunde)");
  digitalWrite(PIN_AIN1, HIGH);
  digitalWrite(PIN_AIN2, LOW);
  digitalWrite(PIN_BIN1, HIGH);
  digitalWrite(PIN_BIN2, LOW);
  analogWrite(PIN_PWMA, 180);
  analogWrite(PIN_PWMB, 180);
  delay(3000);

  Serial.println("6. Oprire Completa Standby (3 secunde)");
  digitalWrite(PIN_STBY, LOW); // Test dezactivare driver
  delay(3000);
  digitalWrite(PIN_STBY, HIGH); // Reactivare pentru urmatorul ciclu
}
```

#### Procedura de Testare:
1. Elevii conectează cablul USB la laptop.
2. Selectează placa **ESP32 Dev Module** și portul COM corespunzător.
3. Apasă **Upload**.
4. După încărcare, pornesc comutatorul de alimentare al bateriei.
5. Urmăresc axele albe ale reductoarelor:
   - Se învârte axul stâng spre înainte timp de 2 secunde?
   - Se învârte axul drept spre înainte timp de 2 secunde?
   - Se învârt ambele sincron spre înainte timp de 3 secunde?
6. **Depanare Direcție Rotație**: Dacă un ax se învârte în marșarier când codul cere „Înainte”, elevul pur și simplu inversează bornele motorului respectiv la ieșirile driverului (**AO1 $\leftrightarrow$ AO2** sau **BO1 $\leftrightarrow$ BO2**).

---

### Etapa 6: Inspecția Tehnică Individuală a Robotului Funcțional (01:40 – 01:50)
Profesorul validează fiecare banc de lucru:
- [ ] Alimentarea este stabilă, fără căderi de tensiune sau reporniri ale ESP32.
- [ ] Ambele motoare funcționează independent și sincron.
- [ ] Cablajul este bine fixat în ghidaje și nu atinge piesele în mișcare.
- [ ] Elevul a înțeles cum controlează pinii `AIN1/AIN2` și `BIN1/BIN2` sensul de rotație, iar `PWMA/PWMB` viteza.

---

### Etapa 7: Mini Quiz Kahoot (01:50 – 01:58)
Profesorul lansează jocul Kahoot din `quiz.md` (10 întrebări rapide, axate pe teoria optică IR, senzori RGB, Bang-Bang, labirinturi și rolul pinului Standby).

---

### Etapa 8: Concluzii & Depozitarea Roboților Activi (01:58 – 02:00)
1. Elevii opresc comutatorul de alimentare (Switch pe `OFF`).
2. Se deconectează cablul USB.
3. Roboții complet funcționali sunt așezați în cutiile de stocare ale echipelor.
4. Profesorul concluzionează: *"Felicitări inginerilor! Astăzi robotul vostru a prins viață. Are șasiu rigid, creier ESP32, driver TB6612FNG și motoare complet testate. În lecția următoare, vom monta senzorii pe șasiu și vom adăuga roțile pentru primul test pe traseul de navigare!"*
