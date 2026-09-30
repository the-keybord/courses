# Lecția 04 [RBF2.4]: Tipuri de Cabluri, Conectori și Asamblarea Fasciculului Central de Cabluri RF 2.0 (Crimp & Solder)

Bine ați revenit în laboratorul de inginerie avansată! În sesiunea precedentă am explorat anatomia microcontrolerului ESP32, funcționarea pinilor GPIO și arhitectura punților H pentru controlul motoarelor. Astăzi abordăm una dintre cele mai critice componente ale oricărui robot de competiție, adesea trecută cu vederea de începători, dar responsabilă pentru peste 80% din defecțiunile apărute pe teren: **cablajul și conectorii electrici**.

Un robot poate avea cel mai inteligent cod C++ și cel mai puternic procesor dual-core, dar dacă un cablu este prea subțire și pierde tensiune sub sarcină, dacă o îmbinare este lipită rece sau dacă un conector iese din locaș la prima vibrație mai puternică, mașina se va opri instantaneu pe traseu. În prima parte a lecției, disecăm fizica și standardele din spatele cablurilor: din ce materiale sunt realizate conductoarele și izolațiile, ce reprezintă standardul AWG și secțiunea în milimetri pătrați, de ce cablurile subdimensionate provoacă căderi de tensiune dramatice și încălzire periculoasă prin efect Joule, ce sunt conectorii DuPont, JST-PH, 7: A doua parte a lecției, inima laboratorului nostru, este dedicată integral asamblării practice a **fasciculului central de cabluri (Main Cable Harness)** pentru robotul RF 2.0. Fiecare cursant va măsura traseele pe propriul șasiu, va învăța să folosească sculele profesionale (wire stripper, crimper cu clichet și stația de lipit cu letconul), va realiza sertizări curate DuPont și JST cu test mecanic de tracțiune, va lipi comutatorul de alimentare și ramificațiile de putere cu tub heat shrink și va verifica întregul sistem cu multimetrul digital înainte de instalare.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: RBF2.4
- **Grupa de Vârstă**: 11 – 15 ani
- **Durată Totală**: 120 minute (2 ore)
- **Tipul Lecției**: Masterclass teoretic (cabluri, izolații, AWG, cădere de tensiune, conectori JST/DuPont/XT, trusă de scule) & atelier practic de sertizare (crimping), lipire comutator și asamblare fascicul central de cabluri
- **Dinamica de Lucru**: Individual asistat (1 robot per elev pe bancul individual de lucru)
- **Proiect Practic**: Realizarea integrală a fasciculului principal de cabluri RF 2.0 (măsurare, tăiere la lungime, sertizare profesională pini DuPont & JST, lipire comutator ON/OFF și distribuție 7.4V, izolare cu tub heat shrink și test de continuitate)
- **Obiectiv Major**: Înțelegerea profundă a fizicii conductoarelor electrice și a standardelor de conectori, urmată de dobândirea dexterității manuale în sertizare și lipire pentru crearea unui cablaj robust, fiabil și modular.

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1tY8X_example_rbf2_lesson04_cables/edit?usp=drive_link
- **Kahoot**: https://create.kahoot.it/details/rbf2-lesson04-cables-connectors-quiz

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să identifice materialele unui cablu** (conductor din cupru pur / tinned copper vs aluminiu CCA, izolație din silicon vs PVC vs Teflon) și structura miezului (stranded wire vs solid core), argumentând de ce cablurile stranded din silicon sunt optime în robotică mobilă.
2. **Să decodeze standardul AWG (American Wire Gauge)** și să înțeleagă sistemul de numerotare inversat (număr mic = fir gros; număr mare = fir subțire), corelând AWG cu secțiunea în milimetri pătrați ($mm^2$) și curentul maxim admisibil (Ampacity).
3. **Să explice consecințele fizice ale folosirii cablurilor nepotrivite**: căderea de tensiune (voltage drop, $V = I \cdot R$) și reseturile de procesor (brownout) pentru cabluri prea subțiri, respectiv încălzirea prin efect Joule ($P = I^2 \cdot R$), versus rigiditatea mecanică și problemele de gabarit pentru cabluri supradimensionate.
4. **Să definească noțiunea de pas al pinilor (pin pitch)** și să compare principalele tipuri de conectori: DuPont (2.54 mm), JST-XH (2.50 mm / 2.54 mm), JST-PH (2.0 mm), JST-SM (2.5 mm aerian) și XT30/XT60 pentru baterii.
5. **Să utilizeze corect trusa de scule de cablare**: wire stripper calibrat pe AWG, flush cutter (clește de tăiat fin), crimper (clește de sertizat pini cu dublă strângere), letcon (soldering iron), tub heat shrink și multimetru digital.
6. **Să realizeze un fascicul complet de cabluri pentru RF 2.0**: tăiere la cote optime, dezizolare la 2 mm pentru sertizare și 5 mm pentru lipituri, sertizarea a cel puțin 6 pini metalici DuPont/JST și introducerea în carcase conform codului standard de culori (Roșu = VCC, Negru = GND, Galben/Verde/Albastru = Semnal).
7. **Să efectueze testul de continuitate și de izolație cu multimetrul** pe funcția de buzzer pentru fiecare conductor în parte, garantând absența oricărui scurtcircuit între șina pozitivă și masă înainte de montarea pe robot.

#### Întrebări Esențiale de Inginerie
- *De ce un fir cu numărul 18 AWG este mult mai gros decât un fir cu numărul 28 AWG?*
- *De ce un cablu subțire poate face ca robotul să se reseteze chiar dacă bateria este complet încărcată la 8.4V?*
- *Prin ce se deosebește un conector JST-PH (2.0mm) de un conector clasic DuPont (2.54mm) în condiții de vibrații intense?*
- *Cum asigură un crimper profesional două strângeri distincte pe același pin metalic?*

---

## 2. Pregătirea Lecției (Checklist Profesor)

Înainte de sosirea cursanților în laborator, profesorul verifică și pregătește următoarele elemente operaționale:

### Software & Resurse Digitale
- [ ] Prezentarea Google Slides deschisă pe ecranul principal al laboratorului.
- [ ] Tab-ul de Kahoot pregătit în modul "Classic Live Game" pe ecranul de proiecție.
- [ ] Diagrama schematică detaliată a fasciculului central RF 2.0 proiectată pe ecranul secundar sau imprimată pe foi A4 pe fiecare masă de lucru.

### Hardware, Scule & Materiale pe Bancurile Elevilor (16 Stații)
- [ ] **Clești de dezizolat (Wire Strippers)**: 1 bucată per banc, cu ghidaje calibrate pentru 20–30 AWG.
- [ ] **Clești de tăiat cu tăiș plat (Flush Cutters)**: 1 bucată per banc, bine ascuțiți.
- [ ] **Clești de sertizat (Crimpers - SN-28B / IWISS mini)**: cel puțin 1 bucată la 2 elevi (8 clești în total).
- [ ] **Stații de lipit / Letcoane reglabile**: încălzite la 320°C–350°C, cu suport stabil, burete umed și fludor subțire de 0.8 mm cu miez de flux (sacâz).
- [ ] **Tub termic (Heat Shrink)**: segmente pre-tăiate de diametru 1.5 mm, 2.5 mm și 4.0 mm, plus suflantă de aer cald (heat gun) sau brichete cu flacără antivânt la dispoziția profesorului.
- [ ] **Cabluri flexibile din silicon**: role/fire de 22 AWG (Roșu și Negru pentru alimentare) și 26/28 AWG (Galben, Verde, Albastru, Alb pentru semnale).
- [ ] **Pini și carcase conectori**: pungi cu pini metalici DuPont mamă/tată, pini JST-PH 2.0 mm, carcase plastice DuPont 1P, 2P, 3P, 4P și carcase JST-PH 3P/4P.
- [ ] **Multimetre digitale**: 1 multimetru setat pe modul test de continuitate (Buzzer) pe fiecare banc de lucru.
- [ ] **Șasiurile RF 2.0 ale elevilor**: aduse de la vestiarul tehnic, pregătite pentru măsurarea fizică a lungimilor cablurilor.

---

## 3. Structura Sesiunii de 120 Minute (Timeline Table)

| Interval Timp | Durată | Etapă | Descriere Operațională |
| :---: | :---: | :--- | :--- |
| **00:00 – 00:05** | 5 min | **Pasul 1: Recap Rapid & Conexiunea Tematică** | Recapitulare de 5 minute a noțiunilor din Lecția 03 (ESP32, limită curent GPIO ~40mA, rolul driverului TB6612FNG și alimentarea la 7.4V). Lansarea temei: importanța vitală a cablurilor și a conexiunilor. |
| **00:05 – 00:30** | 25 min | **Pasul 2: Masterclass Teoretic – Cabluri, AWG, Conectori și Scule** | Prezentare pe ecran: structura cablului (tinned copper, silicon vs PVC, stranded vs solid core), standardul AWG și căderea de tensiune (voltage drop, $V=I \cdot R$), tipuri de conectori (DuPont, JST-PH, JST-XH, XT30, pin pitch) și demonstrația uneltelor (wire stripper, crimper, letcon, multimetru). |
| **00:30 – 00:35** | 5 min | **Pasul 3: Pauză Operațională & Organizarea Bancului** | Hidratare, distribuirea truselor de sertizare, a rolelor de cablu siliconic și a schemelor de cablaj pe fiecare masă. |
| **00:35 – 01:45** | 70 min | **Pasul 4: Laborator Practic – Asamblarea Fasciculului Central RF 2.0** | Lucru individual asistat pe șasiul propriu: măsurarea lungimilor, tăiere, dezizolare, sertizarea pinilor DuPont și JST-PH, lipirea comutatorului de alimentare, aplicarea tubului heat shrink și testarea riguroasă a continuității cu multimetrul. |
| **01:45 – 02:00** | 15 min | **Pasul 5: Quiz Kahoot de Evaluare (13 Întrebări)** | Test interactiv pe ecranul mare, axat 100% pe teoria cablurilor, a materialelor, a standardului AWG și a tipurilor de conectori. Întrebările și explicațiile complete se află în `quiz.md`. |

---

## 4. Desfășurarea Detaliată a Lecției

---

### Pasul 1: Recap Rapid & Conexiunea Tematică (00:00 – 00:05)

Profesorul deschide sesiunea punctual și realizează o punte rapidă de legătură cu lecția precedentă:

1. *Câți miliamperi poate livra în siguranță un singur pin GPIO al ESP32?* Răspuns așteptat: maximum 40 mA (recomandat sub 20 mA).
2. *De ce am conectat alimentarea motoarelor direct la bateria de 7.4V prin pinul VM al driverului și nu prin placa ESP32?* Răspuns așteptat: motoarele pot consuma peste 800 mA - 1000 mA la pornire, ceea ce ar arde regulatoarele interne ale microcontrolerului.
3. *Ce se întâmplă dacă firele care leagă bateria de driverul de motoare sunt prea subțiri și slăbite?* Răspuns așteptat: tensiunea scade brusc, robotul pierde putere și procesorul se poate reseta din cauza căderii de tensiune (brownout).

Profesorul concluzionează: *„În laboratorul de robotică, cablurile nu sunt simple sfori colorate care transportă curent la întâmplare. Ele sunt arterele și sistemul nervos al robotului. O alegere greșită de cablu sau un conector improvizat vă poate distruge șansele într-un meci oficial chiar dacă aveți cel mai bun program de navigare. Astăzi învățăm să construim cablaje de nivel profesional."*

---

### Pasul 2: Masterclass Teoretic – Cabluri, AWG, Conectori și Scule (00:05 – 00:30)

Profesorul susține prezentarea teoretică de 25 de minute, structurată pe 4 module didactice strâns legate, având mostre fizice pe masa demonstrativă.

#### Modulul A: Anatomia Cablului – Conductori și Izolații

Orice cablu electric este alcătuit din două elemente de bază: **conductorul intern** (prin care circulă electronii) și **izolația externă** (care oprește contactul electric cu alte piese și protejează miezul de oxidare și frecare).

1. **Materialul Conductorului**:
   - **Cuprul Pur (OFC - Oxygen Free Copper)**: Este cel mai utilizat metal în electronica de performanță datorită conductivității electrice extrem de ridicate și a flexibilității bune.
   - **Tinned Copper (cupru cu strat de staniu)**: Fiecare liță microscopică de cupru este acoperită cu un strat subțire de staniu. Această acoperire previne oxidarea cuprului și face firul incredibil de ușor de lipit cu letconul. Acesta este standardul de aur în robotica mobilă.
   - **Aluminiul Cupru-Placat (CCA - Copper Clad Aluminum)**: Un miez ieftin de aluminiu învelit într-o pojghiță subțire de cupru. Este rigid, casant la îndoiri repetate, are o rezistență electrică cu 60% mai mare decât cuprul pur și se lipește extrem de greu. *Nu se folosește niciodată pe roboți de competiție.*

2. **Structura Miezului: Stranded Wire (fir flexibil) vs Solid Core (fir rigid)**:
   - **Firul Solid Core (sârmă rigidă)**: Conține o singură sârmă groasă de metal. Își păstrează forma când este îndoit, fiind bun pentru breadboard fix. Însă, pe un robot mobil supus la vibrații continue, sârma masivă obosește mecanic și se rupe în interiorul izolației.
   - **Firul Stranded Wire (fir flexibil)**: Conține zeci de lițe minuscule de cupru răsucite împreună. Este extrem de flexibil, poate suporta mii de cicluri de mișcare și nu se rupe la vibrațiile robotului.

3. **Materialul Izolației: Silicon vs PVC vs Teflon (PTFE)**:
   - **Siliconul (Silicone Wire)**: Izolația modernă preferată în robotică. Este ultra-flexibilă, rezistă la temperaturi extreme (-60°C până la +200°C) și nu se topește dacă atingeți accidental vârful letconului încins la 350°C.
   - **PVC (cabluri standard ieftine)**: Izolația clasică, mai rigidă. Se topește instantaneu la căldura letconului, retrăgându-se și lăsând sârma dezvelită.
   - **Teflon (PTFE)**: Izolație ultra-subțire și extrem de rezistentă chimic și termic, folosită în industria aerospațială, dar costisitoare și dificil de tăiat fără stripper special.

---

#### Modulul B: Măsurarea Cablurilor, Standardul AWG și Fizica Pierderilor de Energie

În lumea internațională a electronicii și a roboticii, grosimea conductoarelor electrice este standardizată prin sistemul **AWG (American Wire Gauge)**, alături de sistemul metric european (secțiune în $mm^2$).

1. **Logica Inversată a AWG**:
   - Sistemul AWG a fost creat în secolul XIX pornind de la procesul mecanic de tragere a sârmei prin filiere succesive. Cu cât o sârmă trecea prin mai multe matrițe de subțiere, cu atât numărul era mai mare.
   - **Regulă de Fier**: **Număr AWG MIC = Fir GROS** (capacitate mare de curent). **Număr AWG MARE = Fir SUBȚIRE** (destinat exclusiv semnalelor slabe).
   - *Exemple practice*:
     - **14–16 AWG** ($1.3 - 2.0\ mm^2$): Cabluri groase pentru alimentarea principală a bateriilor mari de drone și motoare grele (suportă 20A–40A).
     - **20–22 AWG** ($0.33 - 0.52\ mm^2$): Cabluri medii pentru alimentarea plăcii de extensie, a driverului TB6612FNG și a bateriei 2S pe robotul RF 2.0 (suportă 3A–7A).
     - **26–28 AWG** ($0.08 - 0.13\ mm^2$): Cabluri subțiri pentru semnale logice de senzori (I2C, PWM, UART, linii de date GPIO, suportă sub 1A).
     - **30 AWG** ($0.05\ mm^2$): Fir microscopic pentru punți de reparat pe plăci de circuit imprimat (PCB).

2. **De ce NU putem folosi cabluri PREA SUBȚIRI pentru linii de putere?**:
   - **Rezistența electrică a conductorului**: Formula rezistenței este:
     $$R = \rho \cdot \frac{L}{A}$$
     unde $\rho$ este rezistivitatea cuprului, $L$ este lungimea cablului, iar $A$ este aria secțiunii transversale. Când secțiunea $A$ este minusculă (fir subțire de 28 AWG), rezistența $R$ a cablului crește considerabil.
   - **Căderea de tensiune (Voltage Drop)**: Conform Legii lui Ohm:
     $$V_{drop} = I \cdot R$$
     Dacă motoarele accelerează brusc și trag un curent $I = 2A$, iar rezistența cablului subțire de alimentare este $R = 0.8\ \Omega$, pe cablu se pierd:
     $$V_{drop} = 2A \cdot 0.8\ \Omega = 1.6V$$
     Dacă bateria livrează 7.4V, la placa ESP32 mai ajung doar $7.4V - 1.6V = 5.8V$. În momentul în care tensiunea scade sub pragul minim reglementat, detectorul de brownout (BOD) declanșează și **resetează instantaneu procesorul**, blocând robotul în arenă!
   - **Încălzirea prin Efect Joule**: Energia pierdută pe rezistența cablului se disipă sub formă de căldură:
     $$P_{heat} = I^2 \cdot R$$
     Un curent mare trecut printr-un fir subțire îl va încinge până la topirea izolației, creând un scurtcircuit direct și risc de incendiu.

3. **De ce NU putem folosi cabluri PREA GROASE peste tot?**:
   - Deși un cablu de 14 AWG are rezistență aproape nulă, el este greu, foarte rigid și ocupă un spațiu imens în interiorul șasiului.
   - Forța mecanică necesară pentru a îndoi un fir masiv acționează ca o pârghie asupra mufelor, smulgând pinii și pad-urile de cupru de pe plăcile electronice.
   - Pinii metalici ai conectorilor compacți (de exemplu JST de 2.0 mm) au aripioare de strângere proiectate strict pentru cabluri de 24–28 AWG; o sârmă de 18 AWG nu va încăpea fizic în canalul de sertizare.

---

#### Modulul C: Ecosistemul de Conectori în Electronică și Robotică

Conectorii permit asamblarea modulară a robotului, facilitând înlocuirea rapidă a pieselor defecte fără a fi nevoie de tăierea sau dezlipirea cablurilor.

1. **Ce înseamnă "Pitch" (Pasul Pinilor)?**:
   - Pasul unui conector reprezintă distanța măsurată exact între centrele a doi pini adiacenți (vecini).
   - Standardul istoric din electronica occidentală este de **2.54 mm**, echivalentul a exact **0.1 inch (100 mils)**, regăsit pe breadboard-uri clasice, barete de pini Arduino și plăci de prototipare.
   - În electronica miniaturizată modernă, pasul s-a redus la **2.00 mm**, **1.25 mm** sau chiar **1.00 mm**.

2. **Tipuri Majore de Conectori**:
   - **Conectorii DuPont (Pas 2.54 mm / 0.1")**:
     - Conectori universali de laborator, alcătuiți dintr-un pin metalic sertizat (tată sau mamă) introdus într-o carcasă neagră din plastic dreptunghiulară.
     - *Avantaje*: Se cuplează direct pe orice baretă de pini standard; ușor de recombinat manual.
     - *Dezavantaje*: Nu au zăvor mecanic de blocare (latch). La vibrații sau șocuri mecanice, pot aluneca și întrerupe contactul.
   - **Conectorii JST (Japan Solderless Terminal)**:
     - Standard industrial de înaltă precizie, proiectat special pentru sertizare fără lipire.
     - **JST-XH (Pas 2.50 mm sau 2.54 mm)**: Conectori albi cu ghidaj polarizat și clipsuri de reținere prin fricțiune. Sunt conectorii standard folosiți pe porturile de balans ale bateriilor Li-Po și pe plăcile de extensie 3D printer.
     - **JST-PH (Pas 2.00 mm)**: Conectori compacți, folosiți masiv pe module moderne de senzori inteligenți (I2C, telemetrie, camere), având o buză de blocare fermă împotriva decuplării accidentale.
     - **JST-SM (Pas 2.50 mm)**: Conectori aerieni negri (wire-to-wire) cu o clemă elastică care emite un clic mecanic la închidere. Excelenți pentru cabluri care traversează părți mobile ale robotului.
   - **Conectori de Forță pentru Baterii (Gama XT)**:
     - **XT30** (suportă 30A continuu) și **XT60** (suportă 60A continuu).
     - Carcasă din nylon rezistent la temperaturi înalte, contacte tubulare aurite din alamă și formă asimetrică trapezoidală (**keyed / polarizată**), care face fizic imposibilă conectarea inversă a polilor plus și minus.

3. **Conceptul de Polarizare (Keying)**:
   - Orice conector de calitate superioară are șanțuri, ghidaje sau forme asimetrice care împiedică utilizatorul să îl introducă invers sau decalat. Inversarea polarității pe alimentarea unui microcontroler distruge cipul în câteva milisecunde.

---

#### Modulul D: Trusa de Scule pentru Cablaj și Tehnica Sertizării Corecte

Profesorul prezintă sculele așezate pe masa demonstrativă și explică rolul fiecăreia:

1. **Cleștele de Dezizolat (Wire Stripper)**:
   - Are lamele tăiate cu profile circulare calibrate pe diametre AWG exacte (de la 20 la 30 AWG).
   - Tăierea corectă implică secționarea exclusivă a izolației din plastic/silicon, fără a ciupi, zgâria sau tăia niciunul dintre firișoarele de cupru din interior. O liță tăiată scade rezistența mecanică și capacitatea de curent a cablului.

2. **Cleștele de Tăiat cu Tăiș Plat (Flush Cutter)**:
   - Are fălcile ascuțite perfect netede pe o parte, permițând tăierea firelor la nivelul dorit, fără bavuri ascuțite care ar putea perfora tubul termocontractil.

3. **Cleștele de Sertizat (Crimping Pliers – mecanism cu clichet)**:
   - Un pin metalic de sertizare (DuPont sau JST) are **două perechi de aripioare metalice (lugs)**:
     - **Aripioarele din față (miezul conductor)**: Se strâng direct peste cuprul dezizolat, realizând contactul electric intim de rezistență zero (formează profilul literei B încastrată în cupru).
     - **Aripioarele din spate (izolația)**: Se strâng strâns peste mantaua de silicon/PVC, realizând ancorarea mecanică (strain relief). Când tragem de cablu, forța mecanică este preluată de izolație, nu de firișoarele delicate de cupru.
   - Mecanismul cu clichet (ratchet) garantează că fălcile nu se deschid până când presiunea completă de deformare a metalului nu a fost atinsă.

4. **Ciocanul de Lipit & Tubul Termocontractil (Heat Shrink)**:
   - Folosit pentru conexiuni permanente (lipirea comutatorului basculant ON/OFF și a nodurilor de ramificare a tensiunii).
   - Regula de aur: **Pre-tinning obligatoriu** (cositorirea prealabilă a firului și a terminalului înainte de unire).
   - Tubul termocontractil se introduce pe fir *înainte* de lipire și se strânge cu aer cald peste îmbinare, asigurând izolație electrică desăvârșită și protecție la îndoiri.

5. **Multimetrul Digital (Testul de Continuitate cu Buzzer)**:
   - Înainte de a alimenta orice circuit nou realizat, multimetrul verifică două reguli esențiale:
     - **Continuitate**: Bip sonor clar între un capăt al firului și celălalt capăt al aceluiași fir (rezistență sub $1\ \Omega$).
     - **Izolație (Absența Scurtcircuitului)**: Liniște absolută (fără bip, valoare infinită/OL) între șina pozitivă (VCC) și șina de masă (GND).

---

### Pasul 3: Pauză Operațională & Pregătirea Truselor de Cablare pe Bancuri (00:30 – 00:35)

Elevii se hidratează și își aerisesc atenția timp de 5 minute. Profesorul distribuie pe fiecare masă de lucru:
- Suporturile cu role de cabluri siliconice 22 AWG (roșu/negru) și 26 AWG (colorate).
- Cutiuțele cu pini metalici DuPont și JST-PH.
- Cleștii de sertizat și cleștii de dezizolat.
- Foaia A4 laminată cu **Harta Fasciculului Central RF 2.0**, care indică lungimile exacte recomandate pentru fiecare ramură și pinii de destinație.

---

### Pasul 4: Laborator Practic – Asamblarea Fasciculului Central RF 2.0 (00:35 – 01:45)

Această etapă practică de 70 de minute se desfășoară individual pe bancul fiecărui elev, profesorul demonstrând fiecare sub-etapă pe rând la masa camerei demonstrative.

Inima circuitului de alimentare al robotului RF 2.0 este structurată astfel: de la borna pozitivă a bateriei 2S (7.4V), firul roșu intră în comutatorul basculant ON/OFF. Din ieșirea comutatorului, tensiunea se ramifică în două direcții: prima linie merge către intrarea VIN a plăcii de extensie ESP32 (care alimentează microcontrolerul prin regulatorul său intern și livrează 5V pentru senzori și servomotoare), iar a doua linie merge direct la pinul VM al driverului TB6612FNG pentru a furniza curentul brut de tracțiune către motoare. Linia de masă (firul negru GND) pleacă de la baterie și se leagă comun atât la GND-ul plăcii de extensie, cât și la GND-ul driverului de motoare.

#### Faza 1: Măsurarea Traseelor Fizice și Debitarea Cablurilor (10 minute)
1. Fiecare elev așază șasiul robotului RF 2.0 în fața sa, cu suportul de baterie 18650, placa de extensie ESP32 și driverul TB6612FNG montate pe distanțierele lor mecanice.
2. Folosind o bucată de sârmă de ghidaj sau o riglă flexibilă, elevii măsoară traseul real pe care îl vor parcurge cablurile prin canalele interne ale șasiului (cable routing).
3. Se debitează cu cleștele tăietor lateral:
   - 1x Fir Roșu 22 AWG (10 cm) – de la baterie la comutatorul de pornire.
   - 2x Fire Roșii 22 AWG (8 cm) – ramificația de la ieșirea comutatorului către VIN placă extensie și VM driver.
   - 2x Fire Negre 22 AWG (10 cm și 8 cm) – linia comună de masă GND (baterie -> placă extensie -> driver).
   - 4x Fire Colorate 26 AWG (12 cm: Galben, Verde, Albastru, Alb) – cablul de semnal PWM și direcție pentru driverul motoarelor (AIN1, AIN2, BIN1, BIN2).

#### Faza 2: Dezizolarea de Precizie (10 minute)
1. Elevii calibrează cleștele de dezizolat pe profilul corespunzător (22 AWG pentru firele groase de alimentare, 26 AWG pentru firele subțiri de date).
2. **Pentru pini de sertizat (DuPont / JST)**: Se dezizolează **strict 2.0 – 2.5 mm** de la capăt. Dacă dezizolăm prea mult, aripioarele mecanice vor prinde cuprul în loc de izolație, iar firul va fi vulnerabil la smulgere.
3. **Pentru lipire pe comutator și ramificații**: Se dezizolează **5.0 – 6.0 mm** de la capăt, iar lițele de cupru se răsucesc strâns între degete pentru a nu lăsa firișoare rebele.

#### Faza 3: Masterclass & Atelier de Sertizare DuPont și JST (20 minute)
1. **Poziționarea pinului în fălcile cleștelui**:
   - Profesorul arată la lupă/cameră cum se așază pinul metalic în fanta cleștelui (fanta de 0.25–0.5 $mm^2$ pentru 22 AWG; fanta de 0.08–0.25 $mm^2$ pentru 26 AWG).
   - Aripioarele metalice trebuie să fie orientate spre interiorul arcului fălcii (profilul în formă de M).
   - Se strânge cleștele cu un singur clic pentru a ține pinul pe loc, fără a-l deforma.
2. **Introducerea firului și sertizarea**:
   - Se introduce firul dezizolat până când mantaua de silicon atinge marginea aripioarelor din față.
   - Se strânge complet cleștele până când clichetul se eliberează automat.
3. **Controlul de Calitate (Tug Test)**:
   - Fiecare elev efectuează „Testul de Tracțiune": se ține pinul cu o pensetă și se trage ferm de cablu. Dacă firul alunecă afară, sertizarea a fost incorectă (se taie și se reface).
4. **Inserarea în carcasele de plastic**:
   - Pinii metalici se introduc în carcasele negre DuPont sau carcasele albe JST în direcția corectă (cu călcâiul metalic orientat spre fanta dreptunghiulară de blocare din plastic), până când se aude un *clic* metalic subtil.
   - Se respectă ordinea pinilor conform schemei (GND, VIN, Semnal 1, Semnal 2).

#### Faza 4: Lipirea Comutatorului ON/OFF și a Ramificațiilor de Tensiune (20 minute)
1. **Introducerea tubului termocontractil**:
   - Înainte de orice lipire, elevii introduc un segment de 15 mm de tub termocontractil de 2.5 mm pe fiecare fir. *Dacă uităm acest pas, tubul nu mai poate fi adăugat după lipire!*
2. **Pre-tinning (Pre-cositorirea)**:
   - Se aplică vârful letconului pe firul răsucit timp de 2 secunde, apoi se atinge fludorul. Cositorul trebuie să curgă uniform între toate lițele de cupru, transformând firul într-un conector solid și strălucitor.
   - Se aplică o picătură de cositor și pe pinii metalici ai comutatorului basculant.
3. **Îmbinarea și Lipirea**:
   - Se introduce firul pre-cositorit prin orificiul terminalului comutatorului, se încălzește cu letconul timp de 2-3 secunde până când cele două suprafețe de cositor fuzionează într-o singură picătură netedă și lucioasă.
   - Se lasă să se răcească 5 secunde fără a mișca firul (pentru a evita „lipitura rece").
4. **Termocontracția**:
   - Se glisează tubul termocontractil peste terminalul lipit, acoperind complet metalul dezvelit.
   - Se încălzește uniform cu suflanta de aer cald timp de 3 secunde până când tubul se mulează perfect pe conturul îmbinării.

#### Faza 5: Verificarea Riguroasă cu Multimetrul Digital (10 minute)
1. Comutatorul se pune în poziția **OFF**.
2. Cu sondele multimetrului setat pe **Test de Continuitate (Buzzer)**:
   - Se verifică firul de la borna pozitivă a bateriei până la intrarea comutatorului -> *Trebuie să sune (Continuitate OK)*.
   - Se verifică între borna pozitivă și ieșirea comutatorului când acesta este OFF -> *Trebuie să fie LINIȘTE (Zero conductanță)*.
   - Se comută în poziția **ON** -> *Trebuie să sune (Circuit Închis OK)*.
   - Se verifică linia de masă GND de la baterie până la toți conectorii de masă ai roboților -> *Trebuie să sune*.
3. **Verificarea Supremă Anti-Scurtcircuit (Safety Check)**:
   - Se plasează sonda roșie pe pinul VIN / VCC al conectorului și sonda neagră pe pinul GND al aceluiași conector.
   - **Regulă critică**: Multimetrul trebuie să rămână **complet tăcut** (rezistență infinită). Dacă multimetrul emite chiar și un sunet scurt, înseamnă că există o liță rătăcită care atinge masa; circuitul NU se conectează la baterie până la izolarea completă a defectului!
4. Profesorul inspectează și semnează fișa tehnică de conformitate a fiecărui elev.

---

### Pasul 5: Quiz Tehnic de Evaluare (01:45 – 02:00)

Sesiunea se încheie cu un quiz interactiv Kahoot de 12 întrebări, proiectat pe ecranul mare al sălii. Quiz-ul este conceput cu opțiuni ultra-scurte (1–3 cuvinte per variantă), lungimi echilibrate și întrebări care testează exclusiv conceptele teoretice predate în Masterclass (materiale, fizica AWG, căderea de tensiune, conectori JST/DuPont, pitch, trusa de scule).

Întrebările complete, cele 4 opțiuni de răspuns, marcarea variantei corecte și explicațiile pedagogice detaliate se regăsesc în fișierul dedicat din acest pachet: [`quiz.md`](quiz.md).

---

## 5. Încheiere & Managementul Resurselor

- **Curățenia pe Bancul de Lucru (3 minute)**: Resturile de izolație și capetele de sârmă tăiate se mătură în coșul de reciclare a metalelor. Letcoanele se curăță pe buretele umed, se cositoresc ușor vârfurile pentru protecție împotriva oxidării și se opresc din alimentarea generală.
- **Păstrarea Fasciculului de Cabluri**: Elevii atașează fasciculul finalizat pe șasiul RF 2.0 folosind două coliere mici de plastic (zip-ties), gata pentru instalarea senzorilor din lecțiile următoare.
- **Preview Lecția Următoare**: În Lecția 05 vom adăuga primii „ochi" robotului nostru: senzorul ultrasonic HC-SR04, învățând cum se calculează distanța prin ecou sonor și cum transmitem semnale de trigger și echo prin noul nostru cablaj robust!
