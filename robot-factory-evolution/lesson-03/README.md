# Lecția 03 [RBF2.3]: Platforme de Microcontrolere, Anatomia ESP32 și Reconstrucția Circuitului Robotic RF 2.0

Bine ați revenit la masa de lucru! După ce în sesiunile anterioare ne-am reconectat ca echipă de ingineri, am disecat secretele tensiunii electrice și am modelat în Fusion 360 suportul mecanic de baterie 18650, astăzi facem un pas esențial în înțelegerea creierelor digitale ale roboților noștri: **microcontrolerele**. Vom descoperi ce platforme de microcontrolere există pe piață, de ce am ales ESP32 pentru proiectul RF 2.0, cum funcționează pinii GPIO prin care procesorul comunică cu lumea fizică, de ce motoarele de curent continuu au nevoie de un circuit driver dedicat și de ce servomotoarele micro sunt o excepție elegantă de la această regulă.

A doua parte a lecției, cea mai lungă și mai importantă, este dedicată integral reconstrucției fizice a circuitului robotic. Vom înlocui complet cablurile DuPont vechi cu unele noi, mai scurte și de calitate superioară. Vom lipi cu cositor un comutator de alimentare pe linia pozitivă a bateriei pentru a putea porni și opri robotul printr-o singură apăsare. Vom reface conexiunea de putere folosind pachetul de acumulatori Li-Ion 2S de 7.4V, alimentând întregul sistem prin placa de extensie violet a ESP32 care acceptă tensiune externă și o distribuie către microcontroler, driverul de motoare și toți senzorii periferici.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: RBF2.3
- **Grupa de Vârstă**: 11 – 15 ani
- **Durată Totală**: 120 minute (2 ore)
- **Tipul Lecției**: Masterclass teoretic (microcontrolere, GPIO, drivere) & atelier practic de recablare și lipire cu cositor
- **Dinamica de Lucru**: Individual asistat (1 robot per elev pe bancul individual de lucru)
- **Proiect Practic**: Reconstrucția completă a circuitului electric RF 2.0 (cablare nouă DuPont, lipire comutator ON/OFF, alimentare 7.4V prin placa de extensie violet)
- **Obiectiv Major**: Înțelegerea arhitecturii microcontrolerelor și a driverelor de putere, urmată de asamblarea unui circuit electric modular, sigur și stabil pentru noul robot

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1rNkfqVASjig2hac6dOm4YioYN91vCUHcW0oVrhIq0xU/edit?usp=drive_link
- **Kahoot**: https://create.kahoot.it/details/1efe7a08-bb05-4b55-b865-635307a6e826

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să enumere și să descrie pe scurt cel puțin 5 platforme de microcontrolere** utilizate în educație și industrie (Arduino, BBC Micro:Bit, Makeblock, CyberBrick, ESP32, Raspberry Pi Pico).
2. **Să explice arhitectura și capabilitățile principale ale ESP32**: procesor dual-core, Wi-Fi, Bluetooth Low Energy, GPIO, ADC, PWM, pini capacitivi touch și modul deep sleep.
3. **Să definească și să clasifice tipurile de pini GPIO** (ieșire digitală, intrare digitală, intrare analogică ADC, ieșire PWM) și să înțeleagă limitele de curent electric pe care un singur pin le poate furniza.
4. **Să explice de ce motoarele DC au nevoie de un driver H-Bridge** (curentul mare depășește capacitatea GPIO, necesitatea inversării sensului de rotație) și cum funcționează driverul TB6612FNG.
5. **Să explice de ce servomotoarele micro funcționează fără driver extern** (circuit intern de control integrat, consum redus de curent, protocol PWM de poziționare).
6. **Să efectueze reconstrucția completă a circuitului robotic RF 2.0**: înlocuirea cablurilor DuPont, lipirea cu cositor a comutatorului de alimentare și refacerea distribuției de putere de la bateria 2S Li-Ion de 7.4V prin placa de extensie violet ESP32.
7. **Să verifice cu multimetrul tensiunile pe fiecare nod al circuitului** (VMotor pe driverul de motoare, alimentarea plăcii ESP32 și șina de 5V pentru servomotoare).

#### Întrebări Esențiale de Inginerie
- *De ce am ales ESP32 în locul unui Arduino clasic sau al unui BBC Micro:Bit pentru robotul nostru de competiție?*
- *Ce se întâmplă dacă conectăm un motor DC de 7.4V direct la un pin GPIO al ESP32?*
- *De ce un servomotor SG90 nu are nevoie de un driver TB6612FNG, în timp ce un motor DC TT da?*
- *Cum ajunge tensiunea de 7.4V de la baterie la fiecare component al robotului prin intermediul plăcii de extensie?*

---

## ⏱️ Structura Sesiunii de 120 Minute

- **Cod Lecție**: RBF2.3
- **Grupa de Vârstă**: 11 – 15 ani
- **Durată Totală**: 120 minute

Sesiunea este organizată în cinci secvențe:

- **00:00 – 00:05 (5 minute) | Pasul 1: Recap Rapid – Tensiune și Baterii**
  Recapitulare de 5 minute a conceptelor cheie din Lecția 02: tensiune nominală, configurație 2S, brownout și rolul BMS. Profesorul verifică prin 2-3 întrebări rapide dacă noțiunile sunt consolidate.

- **00:05 – 00:30 (25 minute) | Pasul 2: Masterclass Teoretic – Platforme, ESP32 și Drivere de Motoare**
  Prezentarea ecosistemului de microcontrolere educaționale și industriale, analiza detaliată a capabilităților ESP32, explicarea funcționării pinilor GPIO, demonstrarea necesității unui driver H-Bridge pentru motoarele DC și clarificarea excepției servomotoarelor micro.

- **00:30 – 00:35 (5 minute) | Pasul 3: Pauză Operațională & Pregătirea Bancurilor de Lucru**
  Elevii se hidratează, profesorul distribuie pe fiecare banc seturile de cabluri DuPont noi, comutatoarele de alimentare, cositorul și schemele electrice imprimate.

- **00:35 – 01:45 (70 minute) | Pasul 4: Laborator Practic – Reconstrucția Completă a Circuitului RF 2.0**
  Înlocuirea integrală a cablurilor DuPont, lipirea comutatorului de alimentare pe firul pozitiv al bateriei, refacerea conexiunii de putere prin placa de extensie violet ESP32 cu alimentare de 7.4V, verificarea distribuției de tensiune pe fiecare nod cu multimetrul digital.

- **01:45 – 02:00 (15 minute) | Pasul 5: Quiz Tehnic de Evaluare (10 Întrebări)**
  Test interactiv Kahoot de 10 întrebări care acoperă platformele de microcontrolere, capabilitățile ESP32, funcționarea GPIO, logica driverelor de motoare și principiile de alimentare ale circuitului. Întrebările complete, variantele de răspuns și explicațiile sunt organizate în fișierul dedicat: [quiz.md](quiz.md).

---

## 🛠️ Desfășurarea Detaliată a Lecției

---

### Pasul 1: Recap Rapid – Tensiune și Baterii (00:00 – 00:05)

Profesorul deschide sesiunea direct, fără activitate socială extinsă (aceasta a fost acoperită în lecțiile anterioare). Timp de 5 minute, verifică prin dialog rapid cu clasa dacă noțiunile fundamentale din Lecția 02 sunt stabile:

1. **Ce tensiune nominală livrează pachetul nostru 2S Li-Ion?** Răspuns așteptat: 7.4V (două celule de 3.7V în serie).
2. **Ce se întâmplă cu ESP32 dacă tensiunea scade brusc sub 2.9V?** Răspuns așteptat: detectorul de brownout (BOD) resetează procesorul automat.
3. **Ce rol are modulul BMS pe acumulator?** Răspuns așteptat: protejează celulele la scurtcircuit, supratensiune și descărcare profundă.

Profesorul confirmă răspunsurile, corectează eventualele lacune și face tranziția către noul subiect: *„Acum că știm cum alimentăm robotul cu energie, este momentul să înțelegem creierul care procesează toată această energie și dă comenzile."*

---

### Pasul 2: Masterclass Teoretic – Platforme, ESP32 și Drivere de Motoare (00:05 – 00:30)

Această secțiune teoretică de 25 de minute acoperă trei blocuri de conținut strâns interconectate. Profesorul folosește prezentarea pe ecranul laboratoarului, completată de mostre fizice ale plăcilor de microcontrolere disponibile pe masa demonstrativă.

#### Blocul A: Peisajul Platformelor de Microcontrolere

Profesorul începe prin a explica ce este un microcontroler: un computer miniaturizat integrat pe un singur cip, care conține un procesor, memorie RAM, memorie de stocare flash, pini de intrare/ieșire și, în funcție de model, module de comunicație fără fir. Spre deosebire de un computer obișnuit (laptop sau desktop), un microcontroler nu are sistem de operare vizual, nu are ecran și nu rulează aplicații precum browsere web sau jocuri. Rolul său este de a citi semnale de la senzori, de a procesa aceste date conform unui program scris de inginer și de a trimite comenzi către actuatori (motoare, LED-uri, buzzer-uri).

Pe piața educațională și industrială, există zeci de platforme de microcontrolere. Profesorul le trece în revistă pe cele mai relevante:

**Arduino (ATmega328P / ATmega2560)**
Arduino este cea mai celebră platformă de microcontrolere din lume, creată în 2005 la Ivrea, Italia, de o echipă de profesori și studenți care doreau un instrument simplu și accesibil pentru predarea electronicii. Placa Arduino Uno folosește procesorul ATmega328P de la Microchip, un cip cu un singur nucleu tactat la doar 16 MHz, cu 32 KB de memorie flash și 2 KB de RAM. Arduino este open-source, ceea ce a generat o comunitate imensă de milioane de utilizatori și mii de biblioteci software gratuite. Punctul său slab principal este lipsa completă a oricărei conectivități wireless integrate: nu are Wi-Fi, nu are Bluetooth. Pentru a adăuga comunicație fără fir, trebuie cumpărate module suplimentare externe (shield-uri), ceea ce crește costul și complexitatea cablării.

**BBC Micro:Bit**
Micro:Bit este un microcontroler educațional creat de BBC (British Broadcasting Corporation) în 2015, distribuit gratuit la peste un milion de copii din Regatul Unit. Placa integrează o matrice de 25 de LED-uri, doi butoane programabile, un accelerometru, o busolă magnetică, un senzor de temperatură și un modul radio de 2.4 GHz pentru comunicarea între plăci Micro:Bit. Poate fi programat în blocuri vizuale (MakeCode) sau în MicroPython. Este excelent pentru copiii mai mici sau pentru proiecte de introducere, dar are un procesor relativ limitat și puțini pini de intrare/ieșire disponibili, ceea ce îl face nepotrivit pentru roboți complecși cu mai mulți senzori și motoare.

**Makeblock (mBot / mBot2)**
Makeblock este un ecosistem educațional chinez care combină un microcontroler proprietar (bazat pe ATmega sau ESP32 în versiunile recente) cu un set de module senzoriale și mecanice care se conectează prin mufe RJ25 standardizate. Mediul de programare este mBlock, o extensie vizuală a Scratch-ului. Este o platformă excelentă pentru copiii de 8-12 ani care fac primii pași în robotică, dar modulele proprietare limitează posibilitățile de personalizare și de utilizare a componentelor universale din comerțul electronic.

**CyberBrick**
CyberBrick este un sistem modular de electronică snap-together, compatibil cu piese LEGO, proiectat pentru ateliere educaționale pentru copii. Plăcile se interconectează fără lipire și fără cabluri prin conectori magnetici sau de presare. Este rapid de asamblat și sigur pentru categorii de vârstă mici, dar flexibilitatea inginerească este puternic limitată: nu putem controla pini individuali, nu putem scrie cod de nivel jos și nu putem integra componente din afara ecosistemului.

**ESP32 (Espressif Systems – Platforma Noastră)**
ESP32 este microcontrolerul ales pentru proiectul Robot Factory 2.0 și este subiectul analizei detaliate din blocul următor. Profesorul menționează aici doar poziționarea sa: este un cip de putere industrială, fabricat de compania chineză Espressif Systems, care oferă un procesor dual-core la 240 MHz, Wi-Fi, Bluetooth Low Energy, zeci de pini GPIO și o gamă largă de interfețe de comunicație, totul la un preț de câțiva dolari.

**Raspberry Pi Pico (RP2040)**
Raspberry Pi Pico este un microcontroler lansat în 2021 de fundația britanică Raspberry Pi. Folosește cipul RP2040 cu două nuclee ARM Cortex-M0+ la 133 MHz. Este programabil în MicroPython sau C/C++, are un preț foarte accesibil (sub 5 dolari) și oferă 26 pini GPIO multifuncționali. Varianta Pico W adaugă Wi-Fi, dar nu are Bluetooth. Este o alternativă solidă pentru proiecte educaționale, însă ecosistemul de biblioteci pentru robotica mobilă este mai puțin matur decât cel al ESP32.

**STM32 (STMicroelectronics)**
STM32 este familia de microcontrolere de clasă industrială produsă de compania franco-italiană STMicroelectronics. Procesoarele ARM Cortex-M din gama STM32 se regăsesc în automobile, echipamente medicale, sisteme de automatizare industrială și drone profesionale. Puterea de procesare și perifericele hardware sunt superioare tuturor platformelor educaționale, dar curba de învățare este abruptă: mediul de dezvoltare (STM32CubeIDE) este complex, documentația este scrisă pentru ingineri profesioniști, iar configurarea registrelor hardware necesită cunoștințe avansate.

Profesorul concluzionează trecerea în revistă subliniind de ce ESP32 este alegerea optimă pentru RF 2.0: oferă putere de calcul comparabilă cu soluțiile industriale, integrează Wi-Fi și BLE pe același cip (eliminând nevoia de module externe), suportă Arduino IDE (mediul familiar din anul trecut), are un preț sub 5 dolari per unitate și dispune de o comunitate open-source imensă cu biblioteci testate pentru fiecare tip de senzor și actuator din trusa noastră.

#### Blocul B: ESP32 în Detaliu – Arhitectură și Capabilități

Profesorul afișează pe ecran diagrama bloc a modulului ESP32-WROOM și trece prin fiecare subsistem:

**Procesorul Dual-Core Xtensa LX6 la 240 MHz**: ESP32 are două nuclee de procesare care pot rula simultan sarcini independente. În robotica mobilă, acest lucru este extrem de valoros: un nucleu poate gestiona bucla de control a motoarelor (citirea senzorilor, calculul PWM, trimiterea comenzilor) în timp ce al doilea nucleu se ocupă exclusiv de comunicația Bluetooth Low Energy cu telefonul, fără ca cele două procese să se încurce sau să se întârzie reciproc.

**Wi-Fi 802.11 b/g/n (2.4 GHz)**: Modulul radio Wi-Fi permite ESP32 să se conecteze la rețele locale sau să creeze propriul punct de acces (Access Point). În primul an (RF 1.0), am folosit Wi-Fi AP pentru controlul robotului, dar am constatat că metoda deconecta telefonul de la internet și crea interferențe în sala de clasă. În RF 2.0 vom trece la BLE.

**Bluetooth Low Energy (BLE 4.2)**: BLE este un protocol de comunicație fără fir cu consum energetic extrem de redus, optimizat pentru transmisii scurte și frecvente de date. Vom folosi BLE în lecțiile următoare pentru a conecta telefonul ca gamepad virtual al robotului, fără a pierde conexiunea la internet.

**34 de Pini GPIO (General Purpose Input/Output)**: Aceștia sunt liniile fizice prin care ESP32 comunică cu lumea exterioară. Fiecare pin poate fi configurat prin software ca intrare sau ieșire. Nu toți pinii sunt egali: unii sunt doar de intrare (GPIO 34, 35, 36, 39), alții au funcții speciale la pornire (GPIO 0, 2, 12, 15). Profesorul subliniază că placa de extensie violet simplifică accesul la acești pini prin conectori tripli organizați (Semnal, VCC, GND).

**Convertor Analog-Digital (ADC) pe 12 biți**: ESP32 poate citi tensiuni analogice variabile (de la 0V la 3.3V) pe 18 pini și le convertește în valori numerice între 0 și 4095. Aceasta permite citirea senzorilor analogici precum potențiometre, fotoresistoare sau senzori de temperatură.

**PWM (Pulse Width Modulation) pe orice pin GPIO**: ESP32 poate genera semnale PWM pe oricare dintre pinii săi de ieșire prin periferalul hardware LEDC (LED Control). PWM înseamnă comutarea ultra-rapidă a unui pin între starea HIGH (3.3V) și LOW (0V), la o frecvență de mii de ori pe secundă. Prin varierea proporției de timp în care pinul este HIGH (Duty Cycle), controlăm viteza aparentă a motoarelor sau poziția unui servomotor.

**10 Pini Capacitivi Touch**: ESP32 are senzori tactili capacitivi integrați pe 10 pini, care detectează atingerea unui deget fără a necesita butoane mecanice. Pot fi folosiți pentru interfețe de control simple direct pe carcasa robotului.

**Modul Deep Sleep (~10 µA)**: ESP32 poate intra într-un mod de somn profund în care consumă sub 10 microamperi, permițând funcționarea pe baterie timp de luni de zile pentru aplicații IoT. În robotică, această funcție nu este critică, dar demonstrează versatilitatea platformei.

**Interfețe de Comunicație: SPI, I2C, UART**: ESP32 suportă protocoale standard de comunicație cu senzori și periferice: I2C pentru senzorul IMU BNO055, SPI pentru ecrane sau module SD card și UART pentru comunicație serială clasică.

#### Blocul C: GPIO, Drivere de Motoare și Excepția Servomotoarelor

Profesorul trece la partea cea mai importantă din punct de vedere practic: înțelegerea limitelor electrice ale pinilor GPIO și consecințele directe asupra modului în care conectăm motoarele.

**Ce este un pin GPIO și ce poate face el?**
Un pin GPIO este o linie electrică configurabilă. Când este setat ca ieșire digitală, el poate fi într-una din două stări: HIGH (tensiune de 3.3V pe ESP32) sau LOW (0V, conectat la masă GND). Când este setat ca intrare digitală, pinul citește starea logică aplicată din exterior (un buton apăsat sau un senzor care trimite un semnal). Când este configurat pentru ADC, pinul măsoară o tensiune analogică variabilă.

**Limita critică: curentul maxim per pin GPIO**
Fiecare pin GPIO al ESP32 poate furniza (în modul „source") sau absorbi (în modul „sink") un curent maxim de aproximativ 40 mA (miliamperi). Curentul recomandat pentru operare de durată este de doar 12 mA. Această cantitate de curent este suficientă pentru a aprinde un LED (care consumă 10-20 mA) sau pentru a citi un senzor digital, dar este complet insuficientă pentru un motor electric.

**De ce motoarele DC au nevoie de un driver extern (TB6612FNG)?**
Un motor DC TT cu reductor, precum cele din trusa RF 2.0, consumă între 200 mA la mers liber și 800-1000 mA sub sarcină mecanică. Aceasta înseamnă de 20 până la 80 de ori mai mult curent decât poate furniza un pin GPIO. Dacă am conecta un motor direct la un pin GPIO, s-ar produce unul din două scenarii catastrofale: fie pinul GPIO se arde ireversibil din cauza supracurentului, fie motorul pur și simplu nu se mișcă deloc (primește prea puțin curent pentru a învinge frecarea internă a reductorului).

Pe lângă problema curentului, motoarele DC trebuie să se rotească în ambele sensuri (înainte și înapoi). Pentru a inversa sensul de rotație, trebuie inversată polaritatea tensiunii aplicate pe bornele motorului. Acest lucru nu este posibil cu un singur pin GPIO care poate doar să comute între 3.3V și 0V.

**Soluția: Circuitul H-Bridge (Puntea H)**
Un H-Bridge este un aranjament de 4 tranzistoare de putere (sau MOSFET-uri) dispuse în formă de litera H, cu motorul plasat în mijlocul barei orizontale. Prin activarea selectivă a perechilor de tranzistoare diagonale, curentul din bateria de 7.4V este dirijat prin motor fie într-un sens, fie în celălalt. Driverul TB6612FNG din trusa noastră conține două astfel de punți H complete (una pentru fiecare motor), integrate pe un singur circuit. Pinii de control (AIN1, AIN2, BIN1, BIN2) primesc semnale digitale de la GPIO-urile ESP32 pentru a selecta direcția, iar pinii PWM (PWMA, PWMB) primesc semnalul de modulare pentru controlul vitezei. Pinul STBY (Standby) activează sau dezactivează complet driverul. Alimentarea motoarelor vine pe pinul VM (motor voltage) direct de la bateria de 7.4V, complet separată de semnalele logice de control de 3.3V.

**De ce servomotoarele micro NU au nevoie de driver extern?**
Un servomotor micro (cum este SG90 sau MG90S din trusa noastră) este un actuator complet autonom care conține în interiorul carcasei sale trei componente esențiale: un motor DC miniaturizat, o cutie de viteze cu reductor și un circuit electronic de control integrat pe o plachetă minusculă. Acest circuit intern funcționează ca propriul „driver": el citește semnalul PWM primit pe firul de semnal, compară poziția curentă a axului (prin intermediul unui potențiometru intern) cu poziția cerută și comandă automat motorul DC intern în direcția corectă, cu curentul necesar, până când axul ajunge la unghiul dorit.

Din perspectiva ESP32, tot ce trebuie să facem este să trimitem un singur semnal PWM pe firul de semnal al servomotorului. Frecvența standard este de 50 Hz (o perioadă de 20 ms), iar lățimea impulsului determină unghiul: un impuls de aproximativ 500 µs corespunde poziției de 0°, iar un impuls de 2500 µs corespunde poziției de 180°. Curentul consumat de acest semnal de control de pe pinul GPIO este neglijabil (câțiva microamperi). Curentul de putere pentru motorul intern al servomotorului (100-250 mA la blocaj) vine direct de pe linia de alimentare de 5V a plăcii de extensie, nu de pe pinul GPIO.

Profesorul rezumă diferența cheie: *„Driverul de motoare TB6612FNG este necesarul intermediar care amplifică semnalele slabe ale ESP32 în curenți de putere pentru motoarele DC mari. Servomotoarele micro au driverul lor construit direct în interior, motiv pentru care le conectăm doar cu un fir de semnal la un GPIO, un fir de 5V la alimentare și un fir de masă GND."*

---

### Pasul 3: Pauză Operațională & Pregătirea Bancurilor de Lucru (00:30 – 00:35)

Elevii se ridică, se hidratează și se pregătesc pentru sesiunea practică de 70 de minute. În acest interval, profesorul:
1. Distribuie pe fiecare banc de lucru setul de **cabluri DuPont noi** (mai scurte și de calitate superioară, cu contacte metalice mai rigide și izolație mai groasă).
2. Distribuie câte un **comutator basculant (toggle switch sau slide switch)** pentru fiecare robot.
3. Distribuie **schemele electrice imprimate** care arată clar arhitectura de alimentare a circuitului RF 2.0.
4. Verifică că fiecare stație are la dispoziție: **stația de lipit cu cositor**, **cositor cu flux**, **cutter de sârmă**, **clește de dezizolat** și **multimetru digital**.

---

### Pasul 4: Laborator Practic – Reconstrucția Completă a Circuitului RF 2.0 (00:35 – 01:45)

Aceasta este secvența principală a lecției: 70 de minute dedicate integral reconstrucției fizice a circuitului robotic. Profesorul coordonează lucrările pas cu pas, demonstrând fiecare operațiune pe masa demonstrativă sau pe ecranul mare înainte ca elevii să o replice pe propriul robot.

#### Etapa A: Demontarea Circuitului Vechi și Inventarierea Componentelor (00:35 – 00:45, ~10 minute)

Profesorul le cere elevilor să deconecteze complet bateria și să fotografieze cu telefonul propriu circuitul actual (pentru referință în caz de nevoie). Apoi, fiecare elev îndepărtează sistematic toate cablurile DuPont vechi din circuitul robotului, depozitându-le într-o pungă de plastic etichetată cu „Cabluri Vechi – Lecția 03". Elevii verifică integritatea fiecărei componente (ESP32, placa de extensie violet, driverul TB6612FNG, motoarele TT, servomotoarele) și raportează profesorului dacă observă pini îndoiți, mufe deformate sau urme de oxidare.

#### Etapa B: Recablarea cu Cabluri DuPont Noi (00:45 – 01:05, ~20 minute)

Elevii urmăresc schema electrică imprimată distribuită de profesor. Cablurile noi sunt mai scurte, ceea ce reduce drammatic riscul de cabluri agățate în roți sau prinse sub șasiu, și au o calitate mecanică superioară (contactele metalice sunt mai rigide, asigurând o conexiune fermă pe pinii plăcii de extensie, fără deconectări accidentale la vibrațiile produse de deplasarea robotului).

Profesorul ghidează recablarea în ordinea logică a schemei, verificând pe rând:
1. **Conexiunile driverului TB6612FNG la placa de extensie ESP32**: Pinii de control direcție (AIN1, AIN2, BIN1, BIN2), pinii de viteză PWM (PWMA, PWMB), pinul STBY, alimentarea logică VCC și masa GND.
2. **Conexiunile celor două motoare DC TT la driverul de motoare**: Fiecare motor are două fire (Motor A la ieșirile A01/A02 și Motor B la ieșirile B01/B02).
3. **Conexiunile servomotoarelor**: Firul de semnal (portocaliu sau galben) la pinul GPIO desemnat pe placa de extensie, firul de alimentare (roșu) la șina de 5V a plăcii de extensie, firul de masă (maro sau negru) la GND.
4. **Conexiunile senzorilor disponibili**: Senzorul ultrasonic HC-SR04 (pinii Trigger și Echo) și orice alt senzor prezent pe bancul de lucru.

Profesorul trece pe la fiecare banc, verificând fizic că fiecare cablu este inserat complet și pe pinul corect. Cablurile care cad la o mișcare ușoară sunt înlocuite imediat.

#### Etapa C: Lipirea Comutatorului de Alimentare (01:05 – 01:25, ~20 minute)

Aceasta este operațiunea de lipire cu cositor a lecției. Profesorul demonstrează procedura completă pe ecranul mare sau pe masa demonstrativă înainte ca elevii să înceapă:

1. **Pregătirea firelor bateriei**: Se identifică firul pozitiv (roșu) al cablului de conectare al pachetului de acumulatori Li-Ion 2S de 7.4V. Firul pozitiv este tăiat la jumătatea lungimii sale.
2. **Dezizolarea capetelor**: Folosind cleștele de dezizolat, se îndepărtează câte 5-7 mm de izolație de pe fiecare capăt tăiat al firului, expunând conductorul de cupru.
3. **Cositorirea preventivă (pre-tinning)**: Se aplică un strat subțire de cositor pe fiecare capăt de conductor expus și pe fiecare terminal al comutatorului. Această operațiune asigură o lipire rapidă, curată și cu aderență mecanică maximă.
4. **Lipirea firelor pe terminalele comutatorului**: Se fixează comutatorul într-o menghină de ajutor („helping hands" sau „third hand") și se lipesc cele două capete ale firului pozitiv pe cele două terminale ale comutatorului. Se verifică că lipitura este strălucitoare, uniformă și fără globuri reci de cositor.
5. **Izolarea joncțiunilor cu tub termocontractibil sau bandă izolantă**: Fiecare punct de lipire este protejat cu tub termocontractibil (heat shrink tubing) încălzit cu aerul cald al stației de lipit sau, în absența tubului, cu bandă izolantă electrică.
6. **Testul de continuitate**: Cu multimetrul setat pe funcția de continuitate (pictograma de diodă/buzzer), elevii verifică că atunci când comutatorul este în poziția ON, circuitul este închis (multimetrul sună), iar în poziția OFF circuitul este deschis (multimetrul tace).

Profesorul subliniază regulile de siguranță la lipit: letconul se ține ca un stilou, vârful fierbinte nu atinge niciodată cabluri de alimentare sub tensiune, după utilizare letconul se așază pe suport, niciodată pe masă.

#### Etapa D: Refacerea Conexiunii de Putere prin Placa de Extensie ESP32 (01:25 – 01:40, ~15 minute)

Profesorul explică arhitectura de alimentare a circuitului RF 2.0 folosind schema imprimată:

Pachetul de acumulatori Li-Ion 2S de 7.4V este sursa primară de energie a întregului robot. Firul pozitiv al bateriei trece prin comutatorul de alimentare proaspăt lipit (care permite pornirea și oprirea completă a robotului), iar apoi intră pe conectorul de alimentare externă al plăcii de extensie violet ESP32. Placa de extensie violet este un hub central de distribuție a puterii cu mai multe funcții integrate:

1. **Alimentarea ESP32**: Placa de extensie conține un regulator de tensiune intern (de obicei un regulator comutat sau un LDO) care coboară tensiunea brută de intrare (7.4V) la 5V și apoi la 3.3V necesari procesorului ESP32 montat direct pe placă.
2. **Șina de 5V pentru servomotoare și senzori**: Placa pune la dispoziție pini de alimentare de 5V pe conectorii tripli, de unde servomotoarele și senzorii își trag energia de funcționare.
3. **Alimentarea driverului de motoare TB6612FNG (pinul VM)**: Tensiunea brută de 7.4V de la baterie este conectată și la pinul VM (motor voltage) al driverului TB6612FNG. Motoarele DC TT vor primi direct tensiunea de 7.4V prin intermediul punții H interne a driverului atunci când ESP32 trimite comenzi de activare pe pinii de control.

Elevii conectează:
- Firul pozitiv al bateriei (după comutator) la borna de intrare VIN a plăcii de extensie violet.
- Firul negativ (GND) al bateriei la borna de masă GND a plăcii de extensie.
- Un cablu suplimentar de la borna de intrare VIN a plăcii de extensie la pinul VM al driverului TB6612FNG (astfel motoarele primesc tensiunea integrală de 7.4V).
- Un cablu de masă GND comun între placa de extensie și driverul de motoare.

#### Etapa E: Verificare Finală cu Multimetru și Test de Pornire (01:40 – 01:45, ~5 minute)

Înainte de a apăsa comutatorul pentru prima pornire, fiecare elev verifică cu multimetrul setat pe voltmetru DC:

1. **Cu comutatorul pe OFF**: Tensiunea pe VIN al plăcii de extensie trebuie să fie 0V (circuitul este deconectat).
2. **Cu comutatorul pe ON**: Tensiunea pe VIN al plăcii de extensie trebuie să fie între 7.0V și 8.4V (în funcție de starea de încărcare a acumulatorilor).
3. **Tensiunea pe pinul VM al driverului de motoare**: Trebuie să fie identică cu tensiunea de pe VIN (7.0V – 8.4V).
4. **Tensiunea pe șina de 5V a plăcii de extensie**: Trebuie să indice aproximativ 5.0V (±0.2V).
5. **LED-ul de stare al ESP32**: Trebuie să se aprindă, confirmând că procesorul primește alimentare.

Dacă toate tensiunile sunt corecte, profesorul felicită elevul și confirmă că robotul este pregătit electric pentru lecțiile viitoare de programare BLE și integrare senzorială.

---

### Pasul 5: Quiz Tehnic de Evaluare – 10 Întrebări (01:45 – 02:00)

În ultimele 15 minute ale sesiunii, cunoștințele teoretice și abilitățile practice sunt consolidate printr-un test interactiv de 10 întrebări pe platforma Kahoot. Profesorul proiectează pin-ul de joc pe ecranul mare, elevii se conectează pe telefoane sau calculatoare și parcurg întrebările într-un ritm alert. După fiecare întrebare, profesorul discută pe scurt de ce varianta corectă este cea validă tehnic.

Toate cele 10 întrebări, variantele de răspuns cu opțiuni echilibrate și explicațiile pedagogice detaliate sunt organizate în fișierul dedicat: [quiz.md](quiz.md).

---

## 📦 Sinteza Echipamentelor & Fișă de Verificare la Finalul Lecției

Înainte de părăsirea laboratorului, profesorul parcurge următoarele puncte de verificare:
- Fiecare robot are comutatorul setat pe **OFF** (circuitul deconectat).
- Toate stațiile de lipit sunt **oprite** și letconurile sunt plasate pe suporți.
- Cablurile DuPont vechi sunt depozitate în pungile etichetate.
- Surplusul de cositor și bucățile de izolație tăiate sunt aruncate la gunoi.
- Schemele electrice imprimate sunt păstrate în dosarul de laborator al fiecărui elev.
- Multimetrele sunt oprite cu selectorul pe poziția OFF.
