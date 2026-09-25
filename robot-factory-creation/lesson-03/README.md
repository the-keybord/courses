# Lecția 03 [RBF1.3]: Platforme de Microcontrolere, Descoperirea BBC Micro:Bit și Primii Pași în MakeCode

Bine ați venit la cea de-a treia sesiune din cursul **Robot Factory: Creation**! Astăzi facem un pas esențial spre construirea robotului nostru: înțelegem ce este un microcontroler, descoperim ce platforme de microcontrolere există pe piața educațională și industrială, și ne focalizăm în detaliu pe platforma pe care o vom folosi pe tot parcursul cursului: **BBC Micro:Bit**. Vom descoperi ce face Micro:Bit-ul atât de special, ce senzori are integrați direct pe placă fără a necesita cablare externă, cât curent consumă, cum poate comanda motoare și servomotoare prin intermediul plăcii de expansiune robot:bit și ce module externe îi pot extinde capacitățile.

A doua parte a lecției, cea mai lungă și mai interactivă, este dedicată integral primelor noastre experiențe de programare. Deoarece nu avem încă plăcile Micro:Bit fizice, vom lucra pe **simulatorul virtual din Microsoft MakeCode** (makecode.microbit.org). Vom explora categoriile de blocuri disponibile în editorul MakeCode, vom rezolva exerciții dedicate fiecărei categorii principale și vom construi programe mai complexe care combină mai multe tipuri de blocuri.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: RBF1.3
- **Grupa de Vârstă**: 11 – 14 ani
- **Durată Totală**: 120 minute (2 ore)
- **Tipul Lecției**: Masterclass teoretic (microcontrolere & arhitectură Micro:Bit) & laborator practic pe simulator MakeCode
- **Dinamica de Lucru**: Individual (fiecare elev lucrează la propriul calculator pe simulatorul MakeCode)
- **Proiect Practic**: 6 Programe MakeCode (de la Salutul Robotului la provocarea Zarurile Digitale)
- **Obiectiv Major**: Înțelegerea arhitecturii microcontrolerelor și a ecosistemului Micro:Bit, urmată de dezvoltarea primelor algoritmi funcționali cu blocuri vizuale în MakeCode

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1ePB7_QTXLetggl9BVh-vHdgw_6uNx492pfInG1XtIdY/edit?usp=sharing
- **Kahoot**: https://create.kahoot.it/details/91bd438a-a0e4-47a6-93e2-b08629ce80f4
- **Simulator MakeCode**: https://makecode.microbit.org

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să enumere și să descrie pe scurt cel puțin 5 platforme de microcontrolere** utilizate în educație și industrie (Arduino, Makeblock, CyberBrick, ESP32, BBC Micro:Bit, Raspberry Pi Pico).
2. **Să explice arhitectura și capabilitățile principale ale BBC Micro:Bit**: procesor ARM Cortex-M4, matrice de 25 LED-uri, 2 butoane programabile, accelerometru, busolă, senzor de temperatură, microfon, difuzor, logo tactil, radio și BLE.
3. **Să descrie cum Micro:Bit-ul poate comanda motoare, servomotoare și senzori** prin intermediul plăcii de expansiune robot:bit (driver de motoare integrat, conectori pentru servomotoare, pini GPIO accesibili).
4. **Să deschidă și să navigheze interfața Microsoft MakeCode**, identificând categoriile de blocuri din Toolbox: Basic, Input, Music, LED, Radio, Loops, Logic, Variables, Math.
5. **Să construiască programe funcționale pe simulatorul virtual** folosind blocuri din categoriile Basic, Input, Logic, Loops, Variables și LED.
6. **Să rezolve exerciții practice individuale** care demonstrează înțelegerea fiecărei categorii principale de blocuri.
7. **Să combine mai multe categorii de blocuri într-un program complex** (provocarea finală: Zarurile Digitale).

#### Întrebări Esențiale
- *Ce este un microcontroler și prin ce se deosebește de un computer obișnuit?*
- *De ce am ales BBC Micro:Bit pentru cursul nostru și nu Arduino sau ESP32?*
- *Ce senzori are Micro:Bit-ul integrat direct pe placă, fără a necesita cablare suplimentară?*
- *Cum funcționează blocurile „on start" și „forever" din MakeCode și care este diferența dintre ele?*

---

## ⏱️ Structura Sesiunii de 120 Minute

- **Cod Lecție**: RBF1.3
- **Grupa de Vârstă**: 11 – 14 ani
- **Durată Totală**: 120 minute

Sesiunea este organizată în cinci secvențe:

- **00:00 – 00:05 (5 minute) | Pasul 1: Deschidere & Introducere în Subiect**
  Profesorul prezintă agenda lecției și introduce întrebarea principală: „Ce este creierul unui robot?"

- **00:05 – 00:30 (25 minute) | Pasul 2: Masterclass Teoretic – Platforme de Microcontrolere & Deep-Dive Micro:Bit**
  Prezentarea ecosistemului de microcontrolere educaționale și industriale, analiza detaliată a capabilităților BBC Micro:Bit (senzori integrați, LED-uri, butoane, radio, BLE, consum energetic), explicarea modului în care Micro:Bit comandă motoare și servomotoare prin placa robot:bit și ce face platforma specială în comparație cu alternativele.

- **00:30 – 00:35 (5 minute) | Pasul 3: Pauză & Pregătirea Calculatoarelor**
  Elevii deschid browsere-le pe calculatoare și accesează makecode.microbit.org. Profesorul verifică că fiecare stație are simulatorul funcțional.

- **00:35 – 01:45 (70 minute) | Pasul 4: Laborator Practic – Exerciții pe Simulatorul MakeCode**
  Parcurgerea categoriilor de blocuri (Basic, Input, Logic, Loops, Variables, LED) prin exerciții individuale ghidate, urmată de o provocare combinată finală.

- **01:45 – 02:00 (15 minute) | Pasul 5: Quiz Tehnic de Evaluare (10 Întrebări)**
  Test interactiv de 10 întrebări care acoperă platformele de microcontrolere, capabilitățile Micro:Bit, funcționarea blocurilor MakeCode și logica programelor construite. Întrebările complete, variantele de răspuns și explicațiile sunt organizate în fișierul dedicat: [quiz.md](quiz.md).

---

## 🛠️ Pregătirea Lecției (Checklist Profesor)

Înainte de intrarea elevilor în sala de clasă, profesorul verifică:
- **Software & Digital**: Fiecare calculator are un browser funcțional cu acces la internet. Pagina makecode.microbit.org este accesibilă (nu este blocată de firewall). Prezentarea lecției este deschisă pe ecranul mare. Tab-ul Kahoot este pregătit.
- **Materiale Fizice (opțional)**: Dacă sunt disponibile, un exemplar fizic de placă BBC Micro:Bit (v2) pentru demonstrație vizuală pe masa profesorului. Alte plăci de microcontrolere (Arduino Uno, ESP32) pentru comparație vizuală.
- **Proiector / Ecran Mare**: Conectat și funcțional pentru demonstrații live pe MakeCode.

---

## 🛠️ Desfășurarea Detaliată a Lecției

---

### Pasul 1: Deschidere & Introducere în Subiect (00:00 – 00:05)

Profesorul deschide sesiunea cu o întrebare directă adresată clasei: *„Dacă un robot este ca un corp uman, care este creierul lui?"* Lasă câteva secunde pentru răspunsuri spontane (computer, procesor, cip). Apoi clarifică: *„Creierul unui robot se numește microcontroler. Astăzi vom descoperi ce microcontrolere există, de ce am ales una anume pentru cursul nostru și vom scrie primele noastre programe pentru ea."*

Profesorul anunță structura lecției: 25 de minute de teorie cu prezentare vizuală, apoi 70 de minute de practică pe calculator pe simulatorul MakeCode, și 15 minute de quiz la final.

---

### Pasul 2: Masterclass Teoretic – Platforme de Microcontrolere & Deep-Dive Micro:Bit (00:05 – 00:30)

Această secțiune de 25 de minute acoperă trei blocuri de conținut interconectate. Profesorul folosește prezentarea pe ecranul laboratorului și, dacă sunt disponibile, mostre fizice ale plăcilor pe masa demonstrativă.

#### Blocul A: Ce Este un Microcontroler?

Profesorul începe prin a explica ce este un microcontroler: un computer miniaturizat integrat pe un singur cip, care conține un procesor, memorie RAM, memorie de stocare flash și pini de intrare/ieșire. Spre deosebire de un laptop sau un telefon, un microcontroler nu are sistem de operare vizual, nu are ecran propriu și nu rulează aplicații obișnuite precum jocuri sau browsere web. Rolul său este precis și dedicat: citește semnale de la senzori (temperatură, lumină, mișcare, distanță), procesează aceste date conform unui program scris de inginer și trimite comenzi către actuatori (motoare, LED-uri, buzzer-uri, ecrane).

#### Blocul B: Peisajul Platformelor de Microcontrolere

Pe piața educațională și industrială, există multe platforme de microcontrolere. Profesorul le trece în revistă pe cele mai relevante:

**Arduino (ATmega328P)**
Arduino este cea mai celebră platformă de microcontrolere din lume, creată în 2005 la Ivrea, Italia. Placa Arduino Uno folosește procesorul ATmega328P, un cip cu un singur nucleu tactat la doar 16 MHz, cu 32 KB de memorie flash și 2 KB de RAM. Arduino este open-source, ceea ce a generat o comunitate imensă de milioane de utilizatori și mii de biblioteci software gratuite. Se programează în limbajul C/C++ prin mediul Arduino IDE. Punctul slab principal pentru cursul nostru este lipsa completă a conectivității wireless integrate (nu are Wi-Fi, nu are Bluetooth) și necesitatea de a scrie cod textual, ceea ce poate fi dificil pentru începători.

**Makeblock (mBot / mBot2)**
Makeblock este un ecosistem educațional care combină un microcontroler cu module senzoriale proprietare conectate prin mufe RJ25 standardizate. Mediul de programare este mBlock, o extensie vizuală a Scratch-ului. Este o platformă excelentă pentru copii mai mici care fac primii pași în robotică, dar modulele proprietare limitează posibilitățile de personalizare și nu permit utilizarea componentelor universale din comerțul electronic.

**CyberBrick**
CyberBrick este un sistem modular de electronică snap-together, compatibil cu piese LEGO, proiectat pentru ateliere educaționale. Plăcile se interconectează fără lipire și fără cabluri, prin conectori magnetici sau de presare. Este rapid de asamblat și sigur pentru copii mici, dar nu oferă acces la pini individuali, nu permite scrierea de cod real și nu acceptă componente din afara ecosistemului proprietar.

**ESP32 (Espressif Systems)**
ESP32 este un microcontroler de putere industrială fabricat de compania chineză Espressif Systems. Are un procesor dual-core la 240 MHz, Wi-Fi, Bluetooth Low Energy, zeci de pini GPIO și o gamă largă de interfețe de comunicație, totul la un preț sub 5 dolari. Este platforma folosită în cursul avansat Robot Factory: Evolution (RBF2). Se programează în C/C++ prin Arduino IDE, ceea ce necesită experiență prealabilă în programare textuală.

**Raspberry Pi Pico (RP2040)**
Raspberry Pi Pico este un microcontroler lansat în 2021 de fundația britanică Raspberry Pi. Folosește cipul RP2040 cu două nuclee ARM la 133 MHz. Este programabil în MicroPython sau C/C++, are un preț sub 5 dolari și oferă 26 pini GPIO. Varianta Pico W adaugă Wi-Fi. Este o alternativă solidă, dar nu are senzori integrați pe placă și necesită cablare externă pentru orice interacțiune.

**BBC Micro:Bit (Platforma Noastră)**
BBC Micro:Bit este microcontrolerul ales pentru cursul Robot Factory: Creation și este subiectul analizei detaliate din blocul următor. Profesorul menționează aici doar poziționarea sa: este o placă proiectată special pentru educație, cu senzori integrați direct pe ea, programabilă cu blocuri vizuale (fără a scrie o singură linie de cod la început), dar capabilă și de programare în Python pentru cei care avansează.

Profesorul concluzionează trecerea în revistă subliniind de ce Micro:Bit este alegerea ideală pentru RBF1: nu necesită experiență prealabilă în programare (blocurile vizuale sunt intuitive), are senzori integrați pe placă (nu trebuie să cablăm nimic pentru a începe), suportă comunicare radio între plăci (ideal pentru proiecte de echipă), și poate fi extins cu placa robot:bit pentru a controla motoare și a construi un robot complet.

#### Blocul C: BBC Micro:Bit în Detaliu – Arhitectură și Capabilități

Profesorul afișează pe ecran o imagine a plăcii Micro:Bit v2 și trece prin fiecare componentă:

**Procesorul ARM Cortex-M4 la 64 MHz**: Micro:Bit v2 folosește procesorul Nordic nRF52833, un cip ARM Cortex-M4 eficient energetic, tactat la 64 MHz. Deși este mai lent decât ESP32 (240 MHz), este mai mult decât suficient pentru programele noastre educaționale, controlul de motoare și citirea senzorilor.

**Matricea de 25 LED-uri (5x5)**: Fața frontală a plăcii conține 25 de LED-uri roșii aranjate într-o grilă de 5 pe 5. Aceste LED-uri pot afișa numere, litere, icoane, animații sau mesaje text derulante. Surprinzător, aceleași LED-uri funcționează și ca **senzor de lumină**: Micro:Bit-ul poate măsura intensitatea luminii ambientale prin inversarea polarității LED-urilor și citirea curentului generat de fotonii din mediu.

**Două Butoane Programabile (A și B)**: Pe laturile stângă și dreaptă ale matricei LED se află două butoane fizice, etichetate A și B. Programatorul poate defini acțiuni diferite pentru apăsarea butonului A, a butonului B sau a ambelor simultan (A+B). Acestea sunt principalele forme de input de la utilizator.

**Accelerometru (Senzor de Mișcare)**: Un senzor integrat care detectează mișcarea și orientarea plăcii în spațiu pe 3 axe (X, Y, Z). Poate recunoaște gesturi predefinite: agitare (shake), înclinare stânga/dreapta/față/spate, cădere liberă (free fall) și atingere de suprafață. Este esențial pentru controlul robotului prin mișcarea mâinii.

**Busolă (Magnetometru)**: Detectează câmpul magnetic terestru și calculează direcția cardinală (nord, sud, est, vest) în grade de la 0 la 359. Poate fi folosit pentru navigarea robotului pe o direcție specifică. Necesită calibrare la prima utilizare (rotirea plăcii pentru a desena un cerc pe LED-uri).

**Senzor de Temperatură**: Un senzor integrat pe cipul procesorului care măsoară temperatura ambientală în grade Celsius. Nu este un termometru de precizie medicală, dar oferă o lectură suficient de bună pentru proiecte educaționale.

**Microfon (Micro:Bit v2)**: Un microfon MEMS integrat pe spatele plăcii, capabil să detecteze nivelul sonor al mediului. Poate fi programat să reacționeze la sunete puternice (aplauze, strigăte) sau la praguri specifice de decibeli.

**Difuzor (Micro:Bit v2)**: Un buzzer piezoelectric integrat pe spatele plăcii care poate reda tonuri muzicale, melodii predefinite sau efecte sonore programate. Elimină necesitatea conectării unui buzzer extern.

**Logo Tactil (Micro:Bit v2)**: Logo-ul auriu de pe fața plăcii funcționează ca un buton capacitiv tactil. Atingerea logo-ului cu degetul generează un eveniment de input pe care programatorul îl poate utiliza ca al treilea buton.

**Radio (2.4 GHz)**: Un modul radio proprietar de 2.4 GHz care permite comunicarea wireless directă între două sau mai multe plăci Micro:Bit, fără a necesita configurare de rețea. Este ideal pentru proiecte multiplayer, telecomandă sau schimb de date între roboți.

**Bluetooth Low Energy (BLE)**: Pe lângă radio-ul proprietar, Micro:Bit v2 suportă și Bluetooth Low Energy pentru comunicarea cu telefoane și tablete prin aplicația oficială Micro:Bit.

**Conectorul Edge (Pini GPIO)**: Pe marginea inferioară a plăcii, un conector cu dinți de aur expune 25 de pini, dintre care 3 sunt pini GPIO mari (0, 1, 2) accesibili cu cleme crocodil, iar restul sunt pini mai mici accesibili prin conectori edge speciali. Pinii pot funcționa ca intrări/ieșiri digitale, intrări analogice sau ieșiri PWM.

**Consumul Energetic**: Micro:Bit-ul consumă în medie aproximativ 30 mA în funcționare normală (LED-uri aprinse, procesor activ). Poate fi alimentat prin portul micro-USB (5V de la calculator) sau prin conectorul de baterie cu un suport de 2 baterii AAA (3V). Consumul redus înseamnă că 2 baterii AAA pot alimenta placa timp de mai multe ore de utilizare continuă.

#### Blocul D: Cum Comandăm Motoare, Servomotoare și Senzori cu Micro:Bit?

Profesorul explică că pinii GPIO ai Micro:Bit-ului pot furniza maxim aproximativ 5 mA per pin (mult mai puțin decât ESP32). Acest curent este suficient pentru a aprinde un LED extern sau a citi un senzor digital, dar este complet insuficient pentru a roti un motor.

Pentru a construi un robot mobil cu Micro:Bit, avem nevoie de o **placă de expansiune** care adaugă:
1. **Driver de motoare integrat**: Placa robot:bit conține un circuit H-Bridge care primește semnale de control de la pinii Micro:Bit și le amplifică pentru a alimenta motoarele DC cu curent suficient din bateria externă.
2. **Conectori pentru servomotoare**: Placa robot:bit oferă conectori dedicați cu alimentare de 5V pentru servomotoare, care au nevoie doar de un semnal PWM de la Micro:Bit pentru a seta poziția.
3. **Alimentare externă**: Placa robot:bit acceptă o baterie externă (de obicei un pachet de 4 baterii AA / NiMH sau un acumulator Li-Ion) care furnizează curentul de putere pentru motoare, în timp ce Micro:Bit-ul primește tensiunea logică stabilizată de la regulatorul intern al plăcii.
4. **Pini GPIO accesibili**: Placa robot:bit expune toți pinii GPIO ai Micro:Bit-ului în conectori standardizați pentru conectarea ușoară a senzorilor externi (ultrasonici, infraroșu, etc.).

Profesorul subliniază: *„Micro:Bit-ul este creierul care gândește și decide. Placa robot:bit este corpul care amplifică deciziile creierului în mișcare fizică. Împreună formează un robot complet."*

#### Ce Face Micro:Bit-ul Special?

Profesorul rezumă calitățile unice ale platformei:
1. **Bariera de intrare zero**: Programarea cu blocuri vizuale în MakeCode nu necesită nicio experiență prealabilă de programare. Tragi blocurile, le conectezi, iar programul rulează instant pe simulatorul virtual.
2. **Senzori integrați fără cablare**: Spre deosebire de Arduino sau ESP32, unde trebuie să cumperi, conectezi și configurezi fiecare senzor separat, Micro:Bit-ul vine cu accelerometru, busolă, microfon, difuzor, senzor de temperatură și senzor de lumină integrate direct pe placă. Scoți placa din cutie și poți începe să experimentezi imediat.
3. **Tranziție naturală de la blocuri la Python**: MakeCode permite trecerea cu un singur clic de la vizualizarea cu blocuri la codul Python echivalent. Elevii pot vedea exact ce cod generează blocurile lor, învățând treptat sintaxa Python fără un salt brusc.
4. **Comunicare radio nativă**: Posibilitatea de a trimite și primi mesaje între plăci Micro:Bit fără configurare de rețea deschide ușa proiectelor colaborative și competițiilor multiplayer.

---

### Pasul 3: Pauză & Pregătirea Calculatoarelor (00:30 – 00:35)

Elevii se ridică, se hidratează și se pregătesc pentru sesiunea practică. În acest interval:
1. Fiecare elev deschide browserul (Chrome sau Edge recomandat) pe calculatorul propriu.
2. Accesează adresa **makecode.microbit.org**.
3. Creează un proiect nou (butonul „New Project" din pagina principală).
4. Profesorul verifică pe fiecare stație că simulatorul virtual Micro:Bit este vizibil în partea stângă a ecranului și că Toolbox-ul cu categorii de blocuri este accesibil în partea centrală.

---

### Pasul 4: Laborator Practic – Exerciții pe Simulatorul MakeCode (00:35 – 01:45)

Aceasta este secvența principală a lecției: 70 de minute dedicate primelor experiențe de programare pe platforma MakeCode. Profesorul demonstrează fiecare exercițiu pe ecranul mare, construind programul bloc cu bloc, iar elevii îl replică pe calculatoarele proprii.

#### Orientare Inițială: Interfața MakeCode (00:35 – 00:40, ~5 minute)

Profesorul prezintă componentele interfeței MakeCode:
- **Simulatorul** (stânga): O reprezentare virtuală a plăcii Micro:Bit care rulează programul în timp real, cu LED-uri, butoane A și B clicabile, senzori simulați (slider-e pentru temperatură, lumină, accelerometru).
- **Toolbox-ul** (centru): Meniul colorat cu categoriile de blocuri. Fiecare categorie are o culoare distinctă: Basic (albastru), Input (roz), Music (magenta), LED (roșu), Radio (orange), Loops (verde), Logic (albastru deschis), Variables (portocaliu), Math (violet).
- **Spațiul de lucru** (dreapta): Zona unde tragem și conectăm blocurile. Aici se construiește programul.
- **Blocurile fundamentale de structură**: Profesorul explică cele două blocuri esențiale care apar automat la crearea unui proiect nou:
  - **„on start"** (la pornire): Codul din acest bloc se execută o singură dată, la pornirea Micro:Bit-ului. Este locul pentru inițializări, mesaje de bun venit sau setări.
  - **„forever"** (pentru totdeauna): Codul din acest bloc se execută în buclă infinită, repetându-se continuu cât timp Micro:Bit-ul este alimentat. Este locul pentru comportamente continue (animații, citiri de senzori, verificări de condiții).

---

#### Exercițiul 1: Blocuri „Basic" – Salutul Robotului (00:40 – 00:48, ~8 minute)

**Obiectiv**: Familiarizarea cu blocurile din categoria Basic și înțelegerea diferenței dintre „on start" și „forever".

**Instrucțiuni pas cu pas**:

1. Profesorul deschide categoria **Basic** din Toolbox (culoare albastru închis).
2. Trage blocul **„show string"** în interiorul blocului **„on start"**. În câmpul de text, scrie: **„Salut!"**. La pornire, simulatorul va derula textul „Salut!" pe matricea de LED-uri.
3. Sub blocul „show string", adaugă un bloc **„show icon"** și selectează iconița **inimă (heart)**. După ce textul „Salut!" termină de derulat, pe ecran apare o inimă.
4. Acum, în blocul **„forever"**, profesorul trage un bloc **„show icon"** cu iconița **inimă mare (heart)**. Imediat sub el, adaugă un bloc **„pause (ms)"** setat pe **500** milisecunde. Sub pauză, adaugă un alt bloc **„show icon"** cu iconița **inimă mică (small heart)**. Adaugă încă un bloc **„pause (ms)"** de **500** ms.
5. **Rezultatul**: Simulatorul afișează „Salut!" la pornire, apoi inima, iar apoi alternează continuu între inima mare și inima mică la fiecare 500 ms, creând efectul vizual al unei inimi care bate.

**Întrebare de verificare**: *„De ce inima bate non-stop? Pentru că este în blocul forever, care se repetă la infinit."*

---

#### Exercițiul 2: Blocuri „Input" – Robotul Sensibil (00:48 – 00:58, ~10 minute)

**Obiectiv**: Utilizarea evenimentelor de input (butoane, agitare) pentru a declanșa acțiuni specifice.

**Instrucțiuni pas cu pas**:

1. Profesorul deschide categoria **Input** din Toolbox (culoare roz/magenta).
2. Trage blocul **„on button A pressed"** în spațiul de lucru (nu în „on start" sau „forever", ci separat – acesta este un bloc de eveniment independent).
3. În interiorul lui, adaugă un bloc **„show icon"** cu iconița **față fericită (happy)** din categoria Basic.
4. Trage un al doilea bloc **„on button B pressed"** și adaugă în interior **„show icon"** cu iconița **față tristă (sad)**.
5. Trage un al treilea bloc **„on shake"** (la agitare) și adaugă în interior **„show icon"** cu iconița **surpriză (surprised)**.
6. **Testare pe simulator**: Elevul apasă butonul A pe simulatorul virtual (clic pe butonul A de pe placa simulată) și vede față fericită. Apasă B și vede față tristă. Apasă pe butonul de „SHAKE" din panoul senzorilor simulați și vede fața surprinsă.

**Extensie** (dacă timpul permite): Profesorul arată cum să adauge un bloc **„on button A+B pressed"** și în interior un bloc **„show number"** conectat la blocul **„temperature (°C)"** din categoria Input. Când elevul apasă A+B simultan, pe LED-uri apare temperatura curentă raportată de simulator.

---

#### Exercițiul 3: Blocuri „Logic" – Jocul Deciziilor (00:58 – 01:08, ~10 minute)

**Obiectiv**: Utilizarea structurilor condiționale „if-then-else" pentru a lua decizii în funcție de datele senzorilor.

**Instrucțiuni pas cu pas**:

1. Profesorul deschide categoria **Logic** din Toolbox (culoare albastru deschis/turcoaz).
2. Șterge conținutul blocului **„forever"** (dacă există) și trage un bloc **„if true then ... else ..."** în interiorul lui.
3. În locul condiției „true", profesorul trage din categoria **Logic** un bloc de comparație **„0 < 0"** (bloc cu două câmpuri și un operator de comparare).
4. În primul câmp al comparației, trage blocul **„temperature (°C)"** din categoria **Input**. În câmpul operatorului, selectează **„>"** (mai mare). În al doilea câmp, tastează **25**.
5. Condiția completă citește: **„dacă temperatura > 25 atunci..."**
6. În ramura **„then"** (atunci), adaugă **„show icon"** cu iconița **soare (sun)** sau un **„show leds"** personalizat cu forma unui soare.
7. În ramura **„else"** (altfel), adaugă **„show icon"** cu iconița **umbrelă** sau un **„show string"** cu textul **„Frig!"**.
8. **Testare pe simulator**: Elevul modifică slider-ul de temperatură din panoul senzorilor simulați. Când setează temperatura peste 25°C, apare soarele. Când coboară sub 25°C, apare mesajul sau iconița de frig.

**Întrebare de verificare**: *„Ce se întâmplă dacă temperatura este exact 25? Nu este MAI MARE decât 25, deci intră pe ramura else."*

---

#### Exercițiul 4: Blocuri „Loops" & „Variables" – Numărătoarea Inversă (01:08 – 01:20, ~12 minute)

**Obiectiv**: Crearea și manipularea variabilelor, utilizarea buclelor „for" pentru repetiții controlate.

**Instrucțiuni pas cu pas**:

1. Profesorul deschide categoria **Variables** din Toolbox și apasă **„Make a Variable..."**. Denumește variabila **„contor"**.
2. Din categoria Variables, trage blocul **„set contor to 0"** în blocul **„on start"**.
3. Profesorul trage un bloc **„on button A pressed"** din Input. În interiorul lui:
   a. Din categoria **Loops** (verde), trage blocul **„for index from 0 to 4"**. Modifică limita superioară de la 4 la **9**.
   b. În interiorul buclei for, adaugă un bloc **„show number"** din Basic, și în câmpul numeric trage variabila **„index"** (disponibilă automat de la bucla for).
   c. Sub „show number", adaugă un bloc **„pause (ms)"** de **500** ms.
4. Profesorul trage un bloc **„on button B pressed"**. În interiorul lui face numărătoarea inversă:
   a. Din Variables, trage **„set contor to 9"**.
   b. Din Loops, trage un bloc **„while"**. Condiția: din Logic, un bloc de comparație **„contor ≥ 0"** (contor mai mare sau egal cu 0).
   c. În interiorul buclei while: **„show number"** cu variabila **„contor"**, apoi **„pause (ms) 500"**, apoi din Variables **„change contor by -1"**.
5. **Testare pe simulator**: Butonul A numără de la 0 la 9. Butonul B numără de la 9 la 0 (countdown).

**Punct didactic**: Profesorul subliniază diferența: bucla **for** știe dinainte de câte ori se repetă (de la 0 la 9 = 10 repetiții). Bucla **while** se repetă atâta timp cât condiția este adevărată și se oprește când devine falsă.

---

#### Exercițiul 5: Blocuri „LED" – Pixelul Călător (01:20 – 01:30, ~10 minute)

**Obiectiv**: Controlul individual al LED-urilor pe matricea 5x5 folosind coordonate X și Y.

**Instrucțiuni pas cu pas**:

1. Profesorul explică sistemul de coordonate al matricei LED: coloanele sunt axa **X** (de la 0 la 4, de la stânga la dreapta), iar rândurile sunt axa **Y** (de la 0 la 4, de sus în jos). LED-ul din colțul stânga-sus este la coordonatele (0, 0), iar cel din colțul dreapta-jos este la (4, 4).
2. Profesorul deschide categoria **LED** din Toolbox (culoare roșie).
3. Șterge conținutul blocului **„forever"** și construiește următorul program:
   a. Creează o variabilă nouă numită **„x"** și o setează pe 0 în „on start".
   b. În „forever": adaugă blocul **„plot x y"** din LED, unde x = variabila „x" și y = **2** (rândul din mijloc).
   c. Adaugă **„pause (ms) 300"**.
   d. Adaugă **„unplot x y"** cu aceleași coordonate (stinge LED-ul).
   e. Adaugă din Variables: **„change x by 1"**.
   f. Din Logic, adaugă un bloc **„if"**: dacă **„x > 4"** atunci **„set x to 0"** (resetează la prima coloană).
4. **Rezultatul**: Un singur punct luminos traversează rândul central al matricei LED de la stânga la dreapta, apoi revine la început, creând efectul unui „scanner" sau al unei bile care se mișcă.

**Extensie rapidă**: Profesorul demonstrează blocul **„toggle x y"** care comută starea unui LED (dacă era aprins, îl stinge; dacă era stins, îl aprinde) și **„brightness"** care setează intensitatea luminoasă.

---

#### Exercițiul 6: Provocarea Combinată – Zarurile Digitale (01:30 – 01:45, ~15 minute)

**Obiectiv**: Combinarea mai multor categorii de blocuri (Input, Variables, Math, Logic, Basic, LED) într-un program complet funcțional.

**Descrierea Provocării**: Elevii vor construi un program care simulează un zar digital. La agitarea Micro:Bit-ului (shake), pe matricea LED apare un număr aleatoriu de la 1 la 6, afișat ca pe o față clasică de zar (cu puncte dispuse corect).

**Instrucțiuni pas cu pas**:

1. Profesorul creează o variabilă numită **„numar"**.
2. Trage un bloc **„on shake"** din Input.
3. În interiorul lui: **„set numar to"** conectat la blocul **„pick random 1 to 6"** din categoria **Math** (violet).
4. Adaugă un bloc **„if ... else if ... else"** din Logic cu mai multe ramuri (profesorul arată cum se adaugă ramuri suplimentare apăsând butonul „+" de pe blocul if):
   - **Dacă numar = 1**: afișează cu **„show leds"** un singur punct central (rândul 2, coloana 2).
   - **Dacă numar = 2**: afișează cu „show leds" două puncte pe diagonală (stânga-sus și dreapta-jos).
   - **Dacă numar = 3**: afișează trei puncte pe diagonală (stânga-sus, centru, dreapta-jos).
   - **Dacă numar = 4**: afișează patru puncte în colțuri.
   - **Dacă numar = 5**: afișează patru puncte în colțuri plus unul central.
   - **Dacă numar = 6**: afișează șase puncte (trei pe coloana stângă, trei pe coloana dreaptă).
5. **Alternativă simplificată** (dacă timpul este scurt sau elevii au dificultăți cu „show leds" pentru fiecare caz): în loc de desene personalizate, se poate folosi simplu **„show number"** cu variabila „numar" pentru a afișa cifra pe LED-uri. Elevii avansați pot adăuga desenele de fețe de zar ca extensie.
6. **Testare pe simulator**: Elevii apasă butonul SHAKE pe simulator și observă un număr aleatoriu la fiecare agitare.

**Extensie opțională**: Profesorul arată cum să adauge un efect sonor cu **„play tone Middle C for 1/4 beat"** din categoria **Music** la fiecare aruncare.

**Întrebare de verificare finală**: *„Ce categorii de blocuri am folosit în programul Zarurile Digitale?"* Răspuns așteptat: Input (on shake), Variables (numar), Math (pick random), Logic (if-else), Basic (show leds / show number) și opțional Music.

---

### Pasul 5: Quiz Tehnic de Evaluare – 10 Întrebări (01:45 – 02:00)

În ultimele 15 minute ale sesiunii, cunoștințele teoretice și abilitățile practice sunt consolidate printr-un test interactiv de 10 întrebări pe platforma Kahoot. Profesorul proiectează pin-ul de joc pe ecranul mare, elevii se conectează pe telefoane sau calculatoare și parcurg întrebările într-un ritm alert. După fiecare întrebare, profesorul discută pe scurt de ce varianta corectă este cea validă.

Toate cele 10 întrebări, variantele de răspuns cu opțiuni echilibrate și explicațiile pedagogice detaliate sunt organizate în fișierul dedicat: [quiz.md](quiz.md).

---

## 📦 Sinteza & Fișă de Verificare la Finalul Lecției

Înainte de părăsirea sălii, profesorul parcurge:
- Fiecare elev și-a salvat proiectele MakeCode (butonul de salvare sau descărcare HEX).
- Browser-ele sunt închise sau lăsate pe pagina principală MakeCode.
- Calculatoarele sunt închise sau lăsate în standby conform regulilor laboratorului.
- Profesorul menționează ce urmează în lecția viitoare (anticipare: continuarea cu blocuri avansate sau primirea plăcilor fizice Micro:Bit).
