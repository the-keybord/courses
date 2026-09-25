# Lecția 02 [RBF2.2]: Tensiune Electrică, Arhitectura Acumulatorilor și Modelarea Suportului de Baterie în Fusion 360

Bine ați venit la a doua sesiune din cadrul programului avansat **Robot Factory: Evolution**! După ce în prima sesiune ne-am reconectat ca echipă de laborator și am stabilit obiectivele pentru noul sezon mecatronic, astăzi pătrundem adânc în inima energetică a oricărui sistem mecatronic mobil: **alimentarea electrică, dinamica tensiunii și chimia acumulatorilor**.

Fără o alimentare corect dimensionată și stabilă, cel mai inteligent cod C++ și cei mai performanți algoritmi de orientare devin inutili. Căderile bruște de tensiune (*voltage sags*), repornirile spontane ale microcontrolerului (*brownouts*) și supraîncălzirea celulelor sunt cele mai frecvente capcane în robotica de competiție. Această lecție le oferă cursanților o înțelegere inginerească profundă a energiei electrice, urmată de o sesiune practică în Autodesk Fusion 360 pentru proiectarea unui suport mecanic dedicat acumulatorilor noii platforme RF 2.0.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: RBF2.2
- **Grupa de Vârstă**: 11 – 15 ani
- **Durată Totală**: 120 minute (2 ore)
- **Tipul Lecției**: Teorie electrochimică, calcule inginerești & laborator CAD în Fusion 360
- **Dinamica de Lucru**: Individual asistat (1 robot per elev, modelare pe calculator propriu)
- **Proiect Practic**: Modelarea parametrică 3D a suportului de baterie Li-Ion 18650 cu fante de prindere M3
- **Obiectiv Major**: Stăpânirea conceptelor de tensiune, capacitate, C-rating și configurare serie-paralel, plus proiectarea suportului fizic optimizat pentru printare FDM

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://drive.google.com/file/d/10cZlBknw7N3r_h8eZ-EXAMPLE_L02/view?usp=sharing
- **Kahoot**: https://create.kahoot.it/details/rbf2-lesson-02-battery-cad

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să definească și să explice conceptul de tensiune electrică (V)** folosind atât modelul fizic al diferenței de potențial, cât și analogia hidraulică a presiunii.
2. **Să compare și să clasifice principalele chimii de acumulatori** (Alcaline, NiMH, Li-Ion, LiPo) în funcție de densitatea energetică, rata de descărcare (C-rating) și comportamentul în sarcină.
3. **Să interpreteze corect notațiile tehnice de pe pachetele de baterii**: configurații serie și paralel ($1S, 2S, 3S, 4S$), capacitate ($\text{mAh} / \text{Ah}$), energie ($\text{Wh}$) și rată de descărcare continuă sau de vârf ($C$).
4. **Să calculeze tensiunile nominale și maxime** pentru pachete multicelulă și să determine curentul maxim livrabil în siguranță de o baterie.
5. **Să explice funcționarea și necesitatea convertoarelor de tensiune** (Step-Up Boost MT3608 vs Step-Down Buck și stabilizatoare liniare LDO) și a circuitelor de protecție (BMS).
6. **Să modeleze parametric în Autodesk Fusion 360** un suport mecanic modular de baterie Li-Ion 18650 cu fante de montaj M3 și toleranțe reale de imprimare 3D.
7. **Să rezolve un test tehnic grilă de 15 întrebări** demonstrând stăpânirea noțiunilor teoretice și a scenariilor de depanare electrică.

#### Întrebări Esențiale de Inginerie
- *De ce microcontrolerul ESP32 se resetează instantaneu atunci când motoarele de curent continuu pornesc în sarcină maximă de pe aceeași baterie?*
- *Care este diferența critică dintre o baterie alcalină AA de 1.5V și o celulă Li-Ion 18650 de 3.7V atunci când avem nevoie de un curent susținut de 2 Amperi?*
- *Ce reprezintă indicele "25C" tipărit pe un acumulator LiPo și cum ne asigură el că nu vom distruge chimia bateriei la accelerații bruște?*
- *Cum adaptăm dimensiunile unei piese 3D în CAD pentru a compensa contracția materialului plastic la printare?*

---

## ⏱️ Structura Sesiunii de 120 Minute

Sesiunea este structurată echilibrat în cinci secvențe didactice complementare:

- **00:00 – 00:20 (20 minute) | Pasul 1: Activitate Socială – Pălăria cu Componente Misterioase**
  O tragere la sorți a 20 de bilețele cu piese reale din laborator, unde fiecare elev își spune prenumele, explică pe scurt rolul componentei extrase și poate apela la ajutorul unui coleg pentru solidaritate tehnică.

- **00:20 – 00:50 (30 minute) | Pasul 2: Masterclass Teoretic – Tensiune, Baterii & Arhitecturi de Alimentare**
  O analiză aprofundată a tensiunii electrice ca presiune a electronilor, compararea formatelor și a chimiilor de baterii (Alcaline, NiMH, Li-Ion, LiPo), descifrarea configurațiilor serie-paralel (1S până la 4S), calculul ratei de descărcare C și funcționarea convertoarelor de tensiune.

- **00:50 – 01:00 (10 minute) | Pasul 3: Pauză Operațională**
  Moment de deconectare, hidratare și deschidere a mediului software Autodesk Fusion 360 pe stațiile de lucru.

- **01:00 – 01:45 (45 minute) | Pasul 4: Laborator Practic Fusion 360 – Suportul de Baterie 18650**
  Modelarea parametrică a unui leagăn de baterie cu toleranțe de printare FDM, fante laterale și urechi de prindere mecanică cu găuri M3.

- **01:45 – 02:00 (15 minute) | Pasul 5: Marea Provocare – Quiz Tehnic de Evaluare**
  Test grilă de 15 întrebări cu verificare imediată a răspunsurilor și clarificarea erorilor frecvente de laborator.

---

## 🛠️ Desfășurarea Detaliată a Lecției

---

### Pasul 1: Activitate Socială – "Pălăria cu Componente Misterioase" (00:00 – 00:20)

Pentru a continua cunoașterea reciprocă într-un mod relaxat, tehnic și interactiv, debutăm cu activitatea **"Pălăria cu Componente" (The Mystery Hardware Draw)**. În loc de cărți de joc abstracte, folosim chiar vocabularul și piesele reale ale laboratorului nostru mecatronic.

#### Organizare & Pregătire:
Profesorul pregătește într-un bol, o cutie sau o șapcă 20 de bilețele împăturite, fiecare având scris numele unei componente esențiale din robotica mobilă. Elevii sunt așezați în cerc sau la bancurile lor de lucru. Pe rând, fiecare elev extrage câte un bilețel la întâmplare.

#### Cum se Desfășoară Prezentarea Fiecărui Elev (~1 minut per cursant):
Fiecare elev se ridică sau ia cuvântul, își spune prenumele și citește cu voce tare componenta extrasă, răspunzând la trei repere simple:
1. **Ce este această componentă?** (Recunoaștere vizuală sau funcțională).
2. **Ce rol are ea într-un robot mobil?** (De ce avem nevoie de ea pe șasiu sau în circuit?).
3. **O mică poveste personală sau experiență:** *Ai folosit-o anul trecut? Ți-a pus vreodată probleme (s-a desprins firul, s-a încins, a funcționat perfect)? Dacă nu ai lucrat încă cu ea, ce bănuiești că face?*

#### Regula de Solidaritate: "Cere Sprijinul unui Coleg" (Call a Teammate):
Dacă un elev extrage o componentă pe care nu o recunoaște sau este timid, el are dreptul să ceară ajutorul spunând: *"Am nevoie de un inginer!"* și indicând un coleg din grupă. Colegul ales sare în ajutor și explică piesa împreună cu el. Această mecanică elimină complet frica de greșeală, sparge barierele sociale și creează conexiuni autentice între cursanți.

#### Cele 20 de Componente din Pălărie și Rolul Lor Didactic:
1. **Microcontrolerul ESP32-WROOM**: Creierul robotului; procesor dual-core de mare viteză cu module radio Wi-Fi și Bluetooth Low Energy integrate direct pe cip.
2. **Driverul Dual de Motoare TB6612FNG**: Puntea H modernă cu tranzistoare MOSFET de înaltă eficiență; controlează turația prin semnale PWM și sensul de rotație al celor două motoare DC.
3. **Convertorul Step-Up Boost MT3608**: Circuitul de ridicare a tensiunii; preia tensiunea joasă a unei baterii (cum ar fi 3.7V) și o crește inductiv la o valoare fixă de 6.0V sau 9.0V pentru motoare.
4. **Acumulatorul Li-Ion Format 18650**: Sursa cilindrică de putere reîncărcabilă, cu dimensiuni standardizate de 18 mm diametru și 65 mm lungime, oferind 3.7V nominal.
5. **Modulul de Protecție BMS (Battery Management System)**: Santinela electronică a bateriei; monitorizează tensiunea celulei și întrerupe instantaneu circuitul în caz de scurtcircuit, supracurent sau descărcare excesivă.
6. **Multimetrul Digital**: Instrumentul de diagnosticare fundamental al inginerului; verifică tensiunile electrice, continuitatea conductorilor și rezistența componentelor.
7. **Senzorul Ultrasonic HC-SR04**: Ochii acustici ai robotului; măsoară timpul necesar unui puls de ultrasunete să se reflecte de obstacole pentru a calcula distanța în milimetri.
8. **Modulul Senzor Infraroșu (IR Array)**: Urmăritorul optic de linie; emite lumină infraroșie și analizează reflexia pe suprafețe albe sau negre pentru a menține robotul pe traseu.
9. **Motorul Galben DC TT cu Reductor**: Mușchiul mecanic al tracțiunii; convertește energia electrică în rotație mecanică printr-o cascadă de roți dințate din plastic rezistent.
10. **Servomotorul Micro de 180° (SG90 sau MG90S)**: Actuatorul de precizie unghiulară; plasează un braț sau un senzor la un unghi exact determinat prin lățimea impulsurilor PWM.
11. **Roata Liberă Pivotantă (Caster Ball)**: Punctul pasiv de sprijin pe sol; oferă stabilitate pe trei puncte și permite viraje în orice direcție cu frecare minimă.
12. **Placa de Extensie (Expansion Shield)**: Hub-ul de conectare; grupează pinii microcontrolerului în conectori tripli standard (Semnal, Tensiune VCC, Masă GND) pentru cablare ordonată.
13. **Cablurile de Conexiune DuPont**: Sistemul nervos flexibil; conductori subțiri mufați tată-mamă sau mamă-mamă pentru interconectarea rapidă a modulelor.
14. **Regulatorul Liniar LDO (AMS1117-3.3)**: Stabilizatorul de finețe; coboară tensiunea brută de alimentare la o valoare impecabilă de 3.3V necesară nucleului logic ESP32.
15. **Dioda LED de Stare cu Rezistor de Limitare**: Semnalizatorul luminos; oferă feedback vizual instantaneu la pornire, la împerecherea Bluetooth sau la apariția unei defecțiuni.
16. **Comutatorul Basculant (Power Switch)**: Întrerupătorul mecanic general; decuplează fizic polul pozitiv al bateriei pentru a preveni descărcarea sau scurtcircuitele în repaus.
17. **Borna Terminală cu Șurub (Screw Block)**: Conectorul de forță; fixează mecanic capetele dezizolate ale firelor groase de alimentare fără a necesita lipire cu cositor.
18. **Șurubul Metric M3 cu Piuliță Autoblocantă**: Scheletul mecanic de fixare; unifică piesele printate 3D și motoarele fără riscul de a se desface din cauza vibrațiilor.
19. **Modulul IMU / Giroscop BNO055**: Busola spațială; măsoară rotațiile pe trei axe, accelerația și orientarea absolută pe baza câmpului magnetic terestru.
20. **Letconul / Stația de Lipit cu Cositor**: Unealta de fuziune metalică; topește aliajul de cositor pentru a crea conexiuni electrice trainice și rezistente la șocuri.

---

### Pasul 2: Masterclass Teoretic – Tensiune, Baterii & Management Energetic (00:20 – 00:50)

Profesorul preia conducerea discuției și aduce pe masa demonstrativă mostre fizice din fiecare tip de baterie: o celulă alcalină AA, un acumulator NiMH, o celulă Li-Ion 18650, un pachet LiPo de competiție, un convertor MT3608 și un multimetru digital.

#### Arhitectura Tensiunilor într-un Robot Mobil
Într-un robot mobil autonom sau teleoperat, energia electrică nu circulă printr-o singură linie uniformă. Bateria principală livrează o tensiune brută (de exemplu un pachet litiu-ion de tip 2S furnizează între 7.4V și 8.4V). Această sursă principală se ramifică imediat pe două magistrale distincte:
- **Magistrala de Mare Putere**: Merge direct către driverul de motoare TB6612FNG pentru a alimenta etajul de forță al motoarelor TT. Motoarele au nevoie de tensiune ridicată și curenți mari pentru a dezvolta viteză și cuplu mecanic.
- **Magistrala de Tensiune Stabilizată**: Trece printr-un regulator comutat (Step-Down Buck sau Step-Up Boost) pentru a genera o șină curată de 5.0V. Această linie hrănește senzorii ultrasonici și servomotoarele. Din această șină de 5.0V, un regulator liniar LDO extrage tensiunea de 3.3V dedicată exclusiv procesorului ESP32, protejându-l de zgomotul electromagnetic și de fluctuațiile cauzate de rotirea motoarelor.

#### 1. Ce este Tensiunea Electrică? (Diferența de Potențial)
Tensiunea electrică, notată cu simbolul V sau U și măsurată în **Volți (V)**, reprezintă diferența de potențial electric între două puncte distincte ale unui circuit. Ea măsoară lucrul mecanic necesar pentru a împinge o sarcină electrică printr-un conductor.

Cea mai intuitivă modalitate de a înțelege tensiunea este **analogia hidraulică**:
- Imaginați-vă un rezervor masiv de apă așezat pe un turn înalt, conectat la sol printr-o conductă cu o turbină la capăt.
- **Tensiunea electrică (Volții)** este echivalentul **presiunii apei** din conductă. Cu cât rezervorul este plasat mai sus, cu atât presiunea apei la baza țevii este mai mare și împinge apa cu o forță mai mare.
- **Curentul electric (Amperii - A)** reprezintă **debitul de apă**, adică volumul de lichid care traversează secțiunea țevii în fiecare secundă.
- **Rezistența electrică (Ohmul - $\Omega$)** este **gâtuirea conductei** sau frecarea internă care se opune curgerii libere a apei.
- **Puterea electrică (Wattul - W)** reprezintă lucrul mecanic total efectuat de turbină, fiind produsul direct dintre presiune și debit ($P = V \times I$).

#### 2. Ce Tensiuni Folosesc Roboții și De Ce Avem Nevoie de Trepte Diferite?
- **3.3V – Nivelul Logic al Microcontrolerului**: Nucleul de siliciu al procesorului ESP32 funcționează la 3.3V. Pinii săi de intrare/ieșire (GPIO) nu tolerează tensiuni superioare valorii de 3.6V. O tensiune mai mare aplicată din greșeală distruge ireversibil tranzistoarele microscopice interne.
- **5.0V – Standardul Senzorilor și al Servomotoarelor**: Majoritatea senzorilor (cum este HC-SR04 clasic) și servomotoarelor mici sunt calibrate istoric pentru nivelul TTL de 5V. La tensiuni inferioare, senzorul ultrasonic pierde din acuratețea undei de ecou, iar servomotoarele devin lente și lipsite de forță.
- **6.0V până la 12.0V – Etajul de Putere al Motoarelor DC**: Motoarele electrice de tracțiune convertesc tensiunea direct în turație. La o tensiune de 6V sau 7.4V, un motor TT oferă o viteză dublă și un cuplu substanțial mai mare la urcarea pantelor față de funcționarea la o tensiune firavă de 3V.

#### 3. Formate Fizice de Baterii (Form Factors)
- **Formatele AA și AAA**: Cele mai răspândite baterii cilindrice de consum casnic. Bateria AA măsoară 14.5 mm în diametru și 50.5 mm în lungime, în timp ce AAA măsoară 10.5 mm pe 44.5 mm. Deși sunt ușor de procurat, chimia lor standard livrează curenți foarte mici.
- **Formatul Industrial 18650**: Este standardul consacrat în electronica modernă, utilizat de la bateriile de laptop până la vehiculele electrice Tesla. Denumirea sa este un cod dimensional direct: primii doi digiți (18) indică diametrul de 18 mm, următorii doi digiți (65) reprezintă lungimea de 65 mm, iar cifra zero finală specifică forma cilindrică.
- **Formatul 21700**: Generația superioară a celulelor cilindrice, având 21 mm diametru și 70 mm lungime. Oferă o capacitate cu 40-50% mai mare decât 18650 la o creștere redusă de volum.
- **Celulele Plate tip Pouch (LiPo)**: Baterii fără carcasă metalică exterioară, ambalate într-o pungă ermetică din folie laminată de aluminiu. Sunt extrem de ușoare și flexibile ca formă, excelente pentru aeromodele și drone, însă sunt vulnerabile la perforare mecanică.

#### 4. Chimia Bateriilor: Analiză Comparativă Detaliată
Alegerea chimiei potrivite determină succesul sau eșecul robotului în arenă:
- **Bateriile Alcaline (Zinc / Dioxid de Mangan)**: Livrează 1.5V per celulă și nu sunt reîncărcabile. Marele lor defect în robotică este **rezistența internă uriașă**. Când motoarele pornesc și cer brusc un curent de 1-2 Amperi, rezistența internă a bateriei alcaline provoacă o cădere catastrofală de tensiune, prăbușind alimentarea microcontrolerului.
- **Acumulatorii NiMH (Nichel-Metal Hidrură)**: Celule reîncărcabile ce livrează 1.2V nominal. Sunt foarte sigure, nu riscă să ia foc la șocuri și suportă sute de cicluri de încărcare. Dezavantajul lor este greutatea mare și tensiunea atipică (avem nevoie de 4 sau 5 baterii în serie pentru a atinge 5V-6V).
- **Acumulatorii Li-Ion (Litiu-Ion cilindric, ex: 18650)**: Standardul ideal pentru robotica educațională terestră. Oferă o tensiune nominală generoasă de 3.7V per celulă (atingând 4.2V la încărcare maximă), o densitate energetică excelentă și o carcasă rigidă din oțel care protejează chimia internă în caz de coliziuni mecanice.
- **Acumulatorii LiPo (Litiu-Polimer)**: Folosiți în competițiile de viteză și drone datorită capacității lor incredibile de a descărca curenți masivi instantaneu (rate de 30C până la 70C). Sunt însă sensibili la deformare mecanică și necesită încărcătoare inteligente de balansare pentru a evita pericolele de autoaprindere.

#### 5. Configurații Serie vs. Paralel: Ce Înseamnă Notațiile 1S, 2S, 3S, 4S?
Când asamblăm un pachet de baterii din mai multe celule individuale, modul de interconectare schimbă fundamental proprietățile electrice ale pachetului:

- **Conexiunea în Serie (Notată cu litera "S")**:
  Înseamnă legarea bornei pozitive a primei celule la borna negativă a celei de-a doua celule, continuând în lanț. În serie, **tensiunile celulelor se adună**, în timp ce capacitatea totală rămâne neschimbată.
  - **Configurația 1S (1 celulă)**: Tensiune nominală de 3.7V (4.2V încărcată complet, 3.0V descărcată).
  - **Configurația 2S (2 celule în serie)**: Tensiune nominală de 7.4V ($2 \times 3.7\text{V}$) și tensiune maximă de 8.4V ($2 \times 4.2\text{V}$). Aceasta este configurația optimă pentru roboții noștri RF 2.0.
  - **Configurația 3S (3 celule în serie)**: Tensiune nominală de 11.1V și tensiune maximă de 12.6V, utilizată la motoare de viteză mare.
  - **Configurația 4S (4 celule în serie)**: Tensiune nominală de 14.8V și tensiune maximă de 16.8V, standard în dronele de curse FPV.

- **Conexiunea în Paralel (Notată cu litera "P")**:
  Înseamnă legarea tuturor bornelor pozitive împreună și a tuturor bornelor negative împreună. În paralel, **tensiunea rămâne identică cu a unei singure celule (3.7V)**, însă **capacitățile celulelor se adună**, dublând sau triplând autonomia robotului.
  Dacă unim două celule de 2500 mAh în paralel (configurație 1S2P), obținem un pachet de 3.7V cu o capacitate uriașă de 5000 mAh.

#### 6. Parametri Critici de Înțeles pe Eticheta unei Baterii
1. **Capacitatea ($\text{mAh}$ sau $\text{Ah}$)**: Reprezintă volumul de sarcină stocat în baterie. O baterie de 2600 mAh (2.6 Ah) poate livra teoretic un curent de 2600 mA timp de o oră, sau 260 mA timp de 10 ore.
2. **Rata de Descărcare (Indicele C - C-Rating)**: Exprimă viteza maximă sigură cu care bateria poate livra curent continuu fără a se deteriora. Curentul maxim suportat se calculează multiplicând indicele C cu capacitatea în Ah:
   $$\text{Curent Maxim } (I_{\max}) = C \times \text{Capacitate } (\text{Ah})$$
   De exemplu, un acumulator LiPo de 1500 mAh (1.5 Ah) cu un rating de 30C poate furniza în siguranță un curent uriaș de $30 \times 1.5\text{A} = 45\text{ Amperi}$.
3. **Energia Totală Stocată (Watt-oră - $\text{Wh}$)**: Reprezintă cantitatea reală de energie disponibilă pentru efectuarea de lucru mecanic, calculată ca produs între tensiunea nominală și capacitate ($\text{Wh} = V \times \text{Ah}$).
4. **Căderea de Tensiune în Sarcină și Mecanismul de Brownout**: Când un motor electric pornește din repaus, bobinajul său intern acționează pentru o fracțiune de secundă ca un scurtcircuit aproape curat, trăgând un vârf mare de curent. Acest vârf provoacă o cădere temporară a tensiunii bateriei. Dacă tensiunea aplicată pe placa ESP32 coboară sub pragul critic de 2.9V, detectorul intern de siguranță BOD (Brownout Detector) resetează procesorul pe loc. Robotul se blochează, pierde conexiunea Bluetooth și reia codul de la început.
5. **Modulul BMS (Battery Management System)**: Celulele cu litiu sunt sensibile la degradare chimică dacă sunt descărcate sub 2.8V și pot lua foc dacă sunt supraîncărcate peste 4.25V. Placa BMS integrată pe acumulator conține tranzistoare de protecție care taie automat alimentarea la scurtcircuit, supracurent sau descărcare profundă.

#### 7. Cum Creștem sau Scădem Tensiunea? (Convertoare DC-DC)
Tensiunea unei baterii variază continuu pe măsură ce se consumă (de la 8.4V plină până la 6.0V descărcată pentru un pachet 2S). Microcontrolerele și senzorii au însă nevoie de valori fixe și stabile. Pentru a realiza acest lucru, folosim circuite specializate:
- **Convertorul Step-Up (Boost) – Exemplul Modulului MT3608**: Este un circuit electronic comutat capabil să ridice o tensiune mică de intrare (cum ar fi 3.7V de la o singură celulă) la o tensiune mai mare și stabilă (cum ar fi 6.0V pentru motoare). Conform legii conservării energiei, pe măsură ce tensiunea crește la ieșire, curentul maxim disponibil scade proporțional.
- **Convertorul Step-Down (Buck)**: Coboară o tensiune ridicată de intrare (cum ar fi 8.4V de la un pachet 2S) la o tensiune fixă de 5.0V cu un randament energetic de peste 90%, fără a disipa căldură semnificativă.
- **Regulatorul Liniar LDO (Low Dropout) – Exemplul Cipului AMS1117-3.3**: Coboară tensiunea de la 5.0V la 3.3V necesară procesorului ESP32 prin absorbția diferenței de tensiune și disiparea ei sub formă de căldură. Oferă o tensiune ultra-stabilă și complet lipsită de zgomot de comutație.

---

### Pasul 3: Pauză Operațională & Pregătirea Mediului CAD (00:50 – 01:00)

Cursanții se ridică de la mese, se hidratează și își relaxează privirea după sesiunea teoretică intensă. Profesorul îi îndrumă să revină la calculatoarele individuale și să pornească **Autodesk Fusion 360**. Se verifică setările proiectului: sistemul de unități setat pe **Milimetri (mm)** și orientarea spațială prestabilită cu axa **Z în sus (Z-Up)**.

---

### Pasul 4: Laborator Practic Fusion 360 – Proiectarea Suportului de Baterie 18650 (01:00 – 01:45)

Pentru a transpune teoria în inginerie mecanică aplicată, elevii proiectează un **Suport Modular de Baterie Li-Ion 18650** adaptat pentru șasiul RF 2.0. Piesa este gândită ca un leagăn semirotund ranforsat, dotat cu o cavitate calibrată pentru diametrul celulei, pereți laterali rezistenți de 2.5 mm grosime, două urechi exterioare de fixare mecanică prevăzute cu găuri pentru șuruburi metrice M3 și racordări curbate pentru eliminarea concentratorilor de tensiune mecanică.

#### Anatomia Geometrică și Toleranțele Piesei:
- Lungimea totală a piesei este de **76.0 mm**, permițând acomodarea celulei de 65.0 mm lungime împreună cu lamelele metalice de contact sau cablurile de conexiune.
- Lățimea corpului central este de **26.0 mm**, asigurând pereți solizi în jurul bateriei.
- Diametrul cavității interioare este setat la **19.0 mm**. Deși celula fizică 18650 are un diametru real de 18.2 mm, imprimarea 3D prin depunere de filament topit (FDM) tinde să îngusteze găurile cilindrice din cauza curgerii plastice. Cota de 19.0 mm garantează că bateria va intra lin, fără a necesita forțare mecanică.
- Găurile de prindere din urechile laterale au diametrul de **3.4 mm**, permițând trecerea lejeră a tijei unui șurub metric M3 fără forțarea filetului în plastic.

---

#### Ghid Pas cu Pas de Modelare Parametrică în Fusion 360:

##### Etapa A: Generarea Corpului Solid de Bază
1. **Inițierea Schiței**: Selectați planul orizontal de lucru (**Planul X-Y / Top Plane**) și activați funcția `Create Sketch`.
2. **Desenarea Conturului Exterior**: Activați instrumentul de dreptunghi centrat (`Create -> Rectangle -> Center Rectangle`) pornind direct din originea absolută a coordonatelor $(0,0)$. Introduceți cotele nominale: lățimea pe axa X de **26.0 mm** și lungimea pe axa Y de **76.0 mm**.
3. **Extrudarea Blocului**: Apăsați butonul `Finish Sketch`, apoi tastați comanda rapidă `E` (`Extrude`). Selectați suprafața dreptunghiulară și introduceți o înălțime de **15.0 mm** în direcție pozitivă, confirmând cu `Enter`.

##### Etapa B: Decuparea Cavității Cilindrice pentru Acumulator
1. **Schiță pe Fața Frontală**: Creați o schiță nouă pe fața frontală transversală a blocului extrudat anterior.
2. **Desenarea Cercului de Decupare**: Activați comanda de cerc (`Center Diameter Circle` sau tasta rapidă `C`). Poziționați centrul cercului pe axa verticală de simetrie a piesei, la o cotă de **10.0 mm** măsurată față de baza inferioară a blocului. Introduceți diametrul calibrat de **19.0 mm**.
3. **Execuția Decupării**: Finalizați schița și apăsați `E` (`Extrude`). Selectați cercul desenat, alegeți la tipul operației opțiunea **Cut**, iar la distanța de extindere alegeți opțiunea `All` pentru a traversa complet întregul bloc solid de 76 mm. În acest mod obținem un jgheab semirotund perfect neted.

##### Etapa C: Urechile Laterale de Montaj cu Găuri M3
1. **Schiță pe Suprafața Inferioară**: Rotiți vizualizarea și creați o schiță nouă pe baza plană inferioară a suportului.
2. **Construcția Flanșelor Laterale**: Desenați două dreptunghiuri simetrice care să pornească din marginile laterale ale corpului principal și să se extindă în exterior pe axa X cu o lățime de **10.0 mm** fiecare, păstrând o lungime de-a lungul axei Y de **20.0 mm** centrată pe piesă.
3. **Poziționarea Găurilor de Șurub M3**: În interiorul fiecărui dreptunghi lateral, trasați câte un cerc cu diametrul de **3.4 mm**. Utilizând instrumentul de cotare `D` (`Sketch Dimension`), distanțați centrul fiecărei găuri la **5.0 mm** față de marginea exterioară a urechii.
4. **Extrudarea Flanșelor**: Finalizați schița, selectați ambele profile laterale și aplicați o extrudare în sus de **3.5 mm** grosime cu operația setată pe **Join**.

##### Etapa D: Finisare Inginerească și Eliminarea Concentratorilor de Tensiune
1. **Aplicarea Racordărilor Curbate (Fillet)**: Activați instrumentul `Fillet` (tasta rapidă `F`), selectați toate muchiile exterioare ascuțite ale suportului și introduceți o rază de racordare de **2.0 mm**. Această operație elimină unghiurile drepte ascuțite care provoacă fisuri la șocurile mecanice produse în timpul deplasării robotului.
2. **Salvarea și Exportul Proiectului**: Fiecare cursant salvează proiectul în spațiul de stocare cloud al echipei sub denumirea standardizată: `RF2_Suport_Baterie_18650_NumeElev.f3d`.

---

### Pasul 5: Marea Provocare – Quiz Tehnic de Evaluare (01:45 – 02:00)

În ultimele 15 minute ale sesiunii, verificăm consolidarea cunoștințelor printr-un test grilă de 15 întrebări tehnice. Întrebările pot fi parcurse frontal pe ecranul laboratorului sau prin intermediul unei platforme digitale interactive.

---

#### Întrebările Chestionarului:

**1. Care este unitatea de măsură pentru tensiunea electrică în Sistemul Internațional?**
- A) Amperul (A)
- B) Ohm-ul ($\Omega$)
- C) Voltul (V)
- D) Wattul (W)

**2. În analogia hidraulică a unui circuit electric, tensiunea electrică corespunde:**
- A) Volumului total de apă din rezervor.
- B) Presiunii apei care împinge lichidul prin conductă.
- C) Diametrului interior al robinetului.
- D) Filtrului de impurități.

**3. Ce tensiune nominală are o singură celulă standard reîncărcabilă Li-Ion (formatul 18650)?**
- A) 1.2V
- B) 1.5V
- C) 3.7V
- D) 9.0V

**4. Ce tensiune atinge o celulă Li-Ion când este complet încărcată la 100% de către un încărcător dedicat?**
- A) 3.7V
- B) 4.2V
- C) 5.0V
- D) 7.4V

**5. Dacă legăm două celule Li-Ion 18650 în SERIE (configurație 2S), ce tensiune nominală obținem la borne?**
- A) 3.7V
- B) 5.0V
- C) 7.4V
- D) 11.1V

**6. Dacă legăm două celule Li-Ion identice de 2500 mAh în PARALEL (configurație 1S2P), care va fi capacitatea totală a pachetului?**
- A) 2500 mAh (neschimbată)
- B) 5000 mAh
- C) 1250 mAh
- D) 10000 mAh

**7. De ce bateriile alcaline AA obișnuite de 1.5V sunt nepotrivite pentru alimentarea roboților mobili de competiție?**
- A) Deoarece explodează dacă sunt mișcate cu viteză.
- B) Au o rezistență internă mare, iar tensiunea lor se prăbușește brusc când motoarele cer curent mare.
- C) Au o greutate prea mică și dezechilibrează robotul.
- D) Livrează curent alternativ în loc de curent continuu.

**8. Ce semnifică denumirea numerică a formatului cilindric "18650"?**
- A) 1800 mAh capacitate și 650 Volți tensiune de străpungere.
- B) Anul în care a fost brevetată prima celulă: 1865.
- C) 18 mm diametru exterior, 65 mm lungime și cifra 0 pentru formă cilindrică.
- D) Numărul de serie al liniei de fabricație.

**9. Ce semnifică notația "25C" tipărită pe o baterie LiPo cu o capacitate de 2000 mAh (2.0 Ah)?**
- A) Bateria poate funcționa doar la o temperatură ambientală fixă de 25°C.
- B) Bateria poate furniza în siguranță un curent maxim continuu de $25 \times 2.0\text{A} = 50\text{ Amperi}$.
- C) Pachetul are nevoie de un timp minim de încărcare de 25 de ore.
- D) Acumulatorul este alcătuit din 25 de celule legate în paralel.

**10. Ce modul electronic este utilizat pentru a ridica tensiunea de la 3.7V la valoarea de 6.0V necesară motoarelor?**
- A) Un convertor coborâtor Step-Down Buck.
- B) Un convertor ridicător Step-Up Boost (cum este modulul MT3608).
- C) Un transformator pasiv de curent alternativ.
- D) O punte redresoare monofazată.

**11. Ce este fenomenul de "Brownout" la un microcontroler mobil (cum este ESP32)?**
- A) Distrugerea termică a plăcii însoțită de fum din cauza unei tensiuni exagerate.
- B) Schimbarea culorii LED-ului indicator în maro.
- C) O scădere bruscă a tensiunii de alimentare sub pragul minim admis, determinând procesorul să se reseteze spontan.
- D) Întreruperea conexiunii radio din cauza ecranării metalice a șasiului.

**12. Care este rolul principal al circuitului electronic BMS (Battery Management System)?**
- A) Să mărească viteza de rotație a roților cu 25%.
- B) Să monitorizeze celulele și să întrerupă alimentarea în caz de scurtcircuit, descărcare profundă sau supraîncărcare.
- C) Să transmită datele de telemetrie către telefon prin Bluetooth.
- D) Să transforme energia mecanică în electricitate.

**13. La ce tensiune logică de lucru funcționează nucleul intern și pinii GPIO ai microcontrolerului ESP32?**
- A) 1.5V
- B) 3.3V
- C) 5.0V
- D) 12.0V

**14. În modelarea 3D destinată printării FDM, de ce aplicăm racordări curbate (Fillet) pe muchiile pieselor?**
- A) Doar pentru un aspect vizual plăcut la randare.
- B) Pentru a elimina concentratorii de tensiune mecanică și a preveni ruperea piesei la solicitări mecanice.
- C) Pentru a tripla viteza de depunere a filamentului din duză.
- D) Pentru a elimina complet necesitatea suporților de printare.

**15. Dacă o gaură este proiectată pentru trecerea liberă a unui șurub metric M3 cu diametrul tijei de 3.0 mm, ce diametru desenăm în schița CAD pentru a compensa îngroșarea plasticului la printare?**
- A) Exact 3.0 mm
- B) 2.5 mm
- C) Între 3.3 mm și 3.5 mm
- D) 5.0 mm

---

#### Grila de Răspunsuri Corecte și Explicații Didactice:

1. **Răspuns corect: C (Voltul - V)**. Unitatea de măsură a potențialului electric și a tensiunii este denumită în onoarea inventatorului italian Alessandro Volta.
2. **Răspuns corect: B (Presiunea apei)**. Tensiunea reprezintă presiunea energetică ce împinge sarcinile electrice de-a lungul rezistenței circuitului.
3. **Răspuns corect: C (3.7V)**. Tensiunea chimică nominală standard a celulelor reîncărcabile litiu-ion este de 3.7V.
4. **Răspuns corect: B (4.2V)**. O celulă Li-Ion atinge potențialul maxim de 4.2V la finalul ciclului de încărcare completă.
5. **Răspuns corect: C (7.4V)**. Prin înseriere, valorile tensiunilor se adună direct: $3.7\text{V} + 3.7\text{V} = 7.4\text{V}$.
6. **Răspuns corect: B (5000 mAh)**. La conexiunea în paralel, capacitățile de stocare se cumulează ($2500 + 2500 = 5000\text{ mAh}$), în timp ce tensiunea rămâne la 3.7V.
7. **Răspuns corect: B (Rezistență internă mare)**. Când consumatorii de forță cer curent mare, căderea de tensiune pe rezistența internă a bateriilor alcaline este atât de severă încât oprește electronica logică.
8. **Răspuns corect: C (18 mm diametru, 65 mm lungime și 0 cilindric)**. Standardul industrial internațional codifică direct dimensiunile geometrice ale celulei.
9. **Răspuns corect: B (50 Amperi)**. Rata de descărcare C multiplică valoarea capacității exprimate în Ah: $25 \times 2.0\text{Ah} = 50\text{A}$.
10. **Răspuns corect: B (Convertor Step-Up Boost MT3608)**. Modulul boost folosește comutația pe o bobină pentru a crește inductiv o tensiune continuă de la o valoare joasă la una superioară.
11. **Răspuns corect: C (Scădere bruscă de tensiune ce resetează procesorul)**. Circuitul integrat de detecție BOD al ESP32 oprește funcționarea când tensiunea scade sub 2.9V pentru a proteja integritatea memoriei flash.
12. **Răspuns corect: B (Monitorizarea și protecția celulelor)**. Modulul BMS izolează acumulatorul la apariția oricărei stări de pericol (scurtcircuit, supratensiune, sub-tensiune).
13. **Răspuns corect: B (3.3V)**. Standardul logic CMOS modern de joasă tensiune utilizat de microprocesoarele ESP32 este de 3.3V.
14. **Răspuns corect: B (Elimină concentratorii de tensiune)**. Unghiurile drepte interioare ascuțite canalizează forțele mecanice pe o singură linie de fisurare; racordarea curbă distribuie efortul uniform.
15. **Răspuns corect: C (Între 3.3 mm și 3.5 mm)**. Imprimarea FDM depune plastic topit care se dilată ușor spre interiorul orificiilor; o cotă mărită de 3.4 mm asigură o glisare liberă a șurubului M3.

---

## 📦 Sinteza Echipamentelor & Fișă de Verificare la Finalul Lecției

Înainte de finalul sesiunii, profesorul parcurge următoarele puncte de verificare:
- Toate proiectele CAD Fusion 360 sunt salvate în cloud-ul grupei.
- Mostrele de acumulatori sunt depozitate în siguranță în husele speciale ignifuge (LiPo safe bag).
- Multimetrele demonstrative sunt oprite cu selectorul rotativ pe poziția OFF.
- Bilețelele din activitatea de deschidere sunt adunate și păstrate în trusa de laborator.
