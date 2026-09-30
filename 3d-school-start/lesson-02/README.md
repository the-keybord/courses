# Lecția 02 [3DS2.2]: Ingineria Preciziei în CAD – Rigla Personalizată & Semnul de Carte

Bine ați revenit în laboratorul de tehnologie 3D! În prima lecție am explorat componentele mecanice și termice ale imprimantei Bambu Lab A1 și am modelat o felie organică de cașcaval (Cheese Keyring). Astăzi facem un pas uriaș către adevărata inginerie digitală: trecem de la sculptură artistică liberă la **modelarea CAD de precizie milimetrică**.

În lumea reală, fiecare obiect din jurul nostru — de la carcasa telefonului mobil și roțile unei mașini, până la aripile unui avion sau instrumentele medicale — a fost proiectat cu o precizie strictă într-un soft de proiectare asistată de calculator (**CAD - Computer-Aided Design**). O eroare de doar jumătate de milimetru poate face ca două piese să nu se îmbine deloc. În prima parte a lecției, descoperim istoria CAD-ului (cum s-a trecut de la planșetele uriașe de desen tehnic la ecrane 3D în anii 1960), înțelegem de ce precizia este vitală în producție, explorăm uneltele reale de măsurare (șublerul digital, micrometrul, raportorul) și învățăm cum să controlăm milimetrii în Tinkercad folosind instrumentul **Ruler (Rigla)**, casetele numerice și grila **Snap Grid**.

În partea practică, fiecare elev va proiecta propriul instrument funcțional de precizie: o **riglă de 10 cm cu rol dublu de semn de carte (Ruler & Bookmark)**. Obiectul va avea o bază plată de `110 mm x 30 mm`, o scală gradată milimetric realizată prin decupaje de precizie, o zonă liberă pentru șabloane geometrice (stencils) și nume gravat. La finalul sesiunii, organizăm un joc-provocare tehnică: construirea unui **raportor semicircular (Angle Ruler / Protractor)** pentru măsurarea unghiurilor de la $0^\circ$ la $180^\circ$.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: 3DS2.2
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore)
- **Modul**: Modulul 1: Laboratorul Creativ
- **Tipul Lecției**: Masterclass teoretic (Istoria CAD, instrumente de măsură, controlul preciziei) & Atelier practic de modelare parametrică în Tinkercad
- **Dinamica de Lucru**: Individual (1 elev per computer la stația de lucru)
- **Proiect Practic**: Proiectarea riglei de 10 cm cu șabloane și funcție de semn de carte (`110 mm x 30 mm x 1.6 mm`) + Jocul Raportorului Semicircular
- **Ritmul Imprimării 3D**: Modelele proiectate în Lecția 01 (*Cheese Keyring*) sunt trimise la imprimat pe Bambu Lab A1 la începutul orei (Pasul 1) și sunt colectate de către elevi la finalul orei (Pasul 8). Riglele proiectate astăzi vor fi imprimate pe parcursul Lecției 03.
- **Obiectiv Major**: Înțelegerea conceptului de CAD și dezvoltarea deprinderii de a introduce cote numerice exacte în Tinkercad, înlocuind tragerea la ochi a formelor cu dimensionarea milimetrică.

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1HiYxr5UE8dSYKHLvq3oRj4f7gyeIssEc2urHP1UghN4/edit?usp=drive_link
- **Kahoot**: https://create.kahoot.it/details/c7a1ee20-42f9-4420-943a-906122eadbda
- **Platforma de Lucru**: https://www.tinkercad.com/things/gD5gKg0QHwU-3ds-22

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să explice ce înseamnă acronimul CAD (Computer-Aided Design)** și să descrie cum a transformat desenul manual pe hârtie în inginerie digitală tridimensională.
2. **Să argumenteze importanța toleranțelor și a preciziei milimetrice**, dând exemple de componente din viața reală care nu ar funcționa fără cote exacte (carcase de baterii, șuruburi, angrenaje).
3. **Să identifice uneltele profesionale de măsură**: șublerul mecanic/digital (*caliper*), micrometrul, ruleta și raportorul (*protractor*), explicând rolul fiecăruia în atelier.
4. **Să controleze precizia absolută în Tinkercad**: utilizarea instrumentului **Ruler**, editarea directă a valorilor numerice din casete, setarea grilei **Snap Grid** (1.0 mm, 0.5 mm, 0.1 mm) și deplasarea fină cu tastele săgeți.
5. **Să construiască o scală gradată de 10 cm**: generarea liniilor de 1 cm (lungime 6–8 mm) și a liniilor de 5 mm (lungime 4 mm) la distanțe egale, folosind comanda Duplicate & Repeat (`Ctrl + D`).
6. **Să creeze o riglă perfect plată și funcțională**: menținerea grosimii maxime de `1.6 mm` (sau `2.0 mm`) pe întreaga suprafață, adăugând șabloane geometrice decupate (stencils) și text gravat fără proeminențe care ar bloca utilizarea ei pe caiet sau într-o carte.
7. **Să participe la provocarea finală (Jocul Raportorului)**: realizarea unui semicerc gradat pentru măsurarea unghiurilor prin rotirea liniilor la unghiuri precise de $15^\circ$, $30^\circ$, $45^\circ$, $90^\circ$.

#### Întrebări Esențiale de Inginerie
- *Ce înseamnă CAD și cum desenau inginerii avioane și automobile înainte de apariția computerelor?*
- *De ce o greșeală de 1 milimetru poate distruge un mecanism întreg?*
- *Cu ce instrument măsurăm grosimea exactă a unei monede sau diametrul unui ax mic?*
- *Cum ne ajută instrumentul Ruler și comanda Duplicate în Tinkercad să desenăm 10 linii la exact 10 milimetri distanță între ele?*

---

## 2. Pregătirea Lecției (Checklist Profesor)

Înainte de sosirea elevilor în laborator, profesorul parcurge următorul checklist operațional:

### Software & Conturi Digitale
- [ ] Clasa Tinkercad Classroom deschisă, cu codul de acces afișat pe ecran sau pe bilețele la fiecare banc.
- [ ] Proiectele elevilor din Lecția 01 (*Cheese Keyring*) descărcate și importate în Bambu Studio pe o singură placă de printare (print plate), gata de lansare.
- [ ] Proiectul demonstrativ „Ruler & Bookmark Template” deschis pe ecranul principal al profesorului.
- [ ] Prezentarea teoretică deschisă în modul Fullscreen pe ecranul proiectorului.
- [ ] Quiz-ul Kahoot pregătit în modul Classic Live Game pe un tab secundar.

### Echipamente Hardware & Imprimante 3D
- [ ] Imprimantele **Bambu Lab A1** (și A1 Combo) pornite, verificate și calibrate.
- [ ] Plăcile de imprimare șterse cu alcool izopropilic pentru aderență perfectă a primului strat.
- [ ] Filamentele încărcate (PLA galben pentru cașcavalul din Lecția 01 și culorile suplimentare).
- [ ] Bambu Studio conectat la imprimantă, pregătit să pornească printul brelocurilor *Cheese Keyring* chiar în primele 10 minute ale orei.

### Materiale Fizice pe Masa Demonstrativă
- [ ] **1 Șubler digital (Digital Caliper)** funcțional pentru demonstrația live a măsurării milimetrice.
- [ ] **1 Ruletă clasică și 1 Raportor școlar transparent** pentru compararea instrumentelor.
- [ ] **1 Mostră fizică imprimată 3D a Riglei-Semn de Carte** pe care elevii o pot atinge și testa pe un caiet.
- [ ] Monede de 1 leu sau piese LEGO pentru demonstrația toleranțelor de măsură cu șublerul.
- [ ] Inele metalice de breloc pregătite pentru montaj la finalul orei când se finalizează printul brelocurilor.

---

## 3. Structura Sesiunii de 120 Minute (Timeline Table)

| Interval Timp | Durată | Etapă | Descriere Operațională |
| :---: | :---: | :--- | :--- |
| **00:00 – 00:10** | 10 min | **Pasul 1: Primirea Elevilor & Pornirea Imprimării 3D** | Verificarea proiectelor *Cheese Keyring* din Lecția 01, lansarea printului pe Bambu Lab A1 (care va lucra pe fundal) și introducerea temei de precizie CAD. |
| **00:10 – 00:30** | 20 min | **Pasul 2: Masterclass Teoretic – Ce este CAD, Precizia & Instrumentele de Măsură** | Prezentare interactivă pe ecran: Istoria CAD, importanța toleranțelor, șublerul digital, micrometrul, rigla și controlul milimetrilor în Tinkercad. |
| **00:30 – 00:35** | 5 min | **Pasul 3: Pauză Operațională & Logare** | Scurtă pauză de hidratare, așezarea la stațiile individuale și logarea în Tinkercad Classroom. |
| **00:35 – 00:55** | 20 min | **Pasul 4: Demonstrația Profesorului Pas cu Pas** | Live demo: crearea bazei riglei (110x30x1.6 mm), plasarea instrumentului Ruler, generarea gradațiilor cu `Ctrl + D`, adăugarea numerelor și a decupajelor tip stencil. |
| **00:55 – 01:35** | 40 min | **Pasul 5: Laborator Practic Individual** | Fiecare elev își construiește rigla personalizată de 10 cm cu gradații precise, decupaje de semn de carte și nume gravat. Asistență individuală la toleranțe. |
| **01:35 – 01:50** | 15 min | **Pasul 6: Provocarea Tehnică – Jocul Raportorului Semicircular** | Joc practic rapid: elevii încearcă să creeze un raportor semicircular ($0^\circ-180^\circ$) prin multiplicarea și rotirea radială a gradațiilor la unghiuri exacte. |
| **01:50 – 02:00** | 10 min | **Pasul 7: Quiz Kahoot & Colectarea Pieselor Imprimate** | Joc Kahoot cu 12 întrebări 100% teoretice. Desprinderea brelocurilor *Cheese Keyring* de pe patul imprimantei, montarea inelelor, salvarea riglelor pentru Lecția 03 și poza de grup. |

---

## 4. Desfășurarea Detaliată a Lecției

---

### Pasul 1: Primirea Elevilor & Pornirea Imprimării 3D (00:00 – 00:10)

Sesiunea începe prin punerea în funcțiune a laboratorului de producție 3D.

1. **Pornirea Imprimării pentru Brelocurile din Lecția 01**:
   - Profesorul deschide Bambu Studio pe ecranul mare, unde toate fișierele *Cheese Keyring* create de elevi la Lecția 01 sunt deja așezate pe o placă PEI comună.
   - Profesorul apasă comanda **Print Plate** către imprimanta **Bambu Lab A1**.
   - Elevii observă procesul de auto-calibrare (bed leveling, purjare duză) și pornirea primului strat. Pe durata prezentării și a atelierului practic, imprimanta va lucra în fundal pentru a finaliza toate piesele până la sfârșitul orei.
2. **Lansarea Provocării Zilei**:
   - Până acum am modelat obiecte organice (forme neregulate). Astăzi trecem la un nivel profesional: **proiectarea unui instrument de măsurare funcțional**.
   - Misiunea: Vom crea o riglă de 10 cm care servește și ca semn de carte pentru școală. Pentru ca rigla să fie utilă la orele de matematică și desen, gradațiile trebuie să fie exacte la milimetru, nu desenate la întâmplare.

---

### Pasul 2: Masterclass Teoretic – Ce este CAD, Precizia & Instrumentele de Măsură (00:10 – 00:30)

Profesorul susține prezentarea teoretică (ghidată de cele 4 întrebări esențiale), alternând slide-urile de pe ecran cu demonstrații practice la masa demonstrativă.

#### 1. Ce este CAD, când a apărut și unde este folosit?
- **Definiția CAD**: CAD înseamnă **Computer-Aided Design** (Proiectare Asistată de Calculator). Este tehnologia prin care inginerii și designerii folosesc programe software pentru a crea, modifica, analiza și optimiza modele tridimensionale ale obiectelor înainte ca acestea să fie fabricate în realitate.
- **Istoria CAD-ului**:
  - Înainte de anii 1960, toate clădirile, vapoarele și mașinile se desenau manual pe planșete uriașe de desen, cu rigle, echere, compasuri și cerneală. Modificarea unei singure piese necesita săptămâni întregi de redesenare a zecilor de foi de hârtie.
  - În anii 1960, cercetătorul **Ivan Sutherland** a creat la MIT primul program grafic interactiv din istorie, numit **Sketchpad**. În paralel, matematicianul francez **Pierre Bézier** (la compania auto Renault) și fizicianul **Patrick Hanratty** au inventat formulele matematice ale curbelor digitale (curbele Bézier), punând bazele primelor programe CAD industriale.
  - Astăzi, CAD-ul este motorul întregii lumi moderne: este folosit în **aeronautică** (Boeing, SpaceX proiectează rachete în CAD), **medicină** (proteze personalizate și implanturi), **arhitectură** (zgârie-nori și poduri), **industria jocurilor video** și a **efectelor speciale**.

#### 2. Cât de importantă este precizia în modelarea CAD?
- În sculptura artistică sau în pictură, o linie poate fi mai la stânga sau mai la dreapta fără ca opera să fie distrusă. În ingineria CAD, **precizia este absolut obligatorie**.
- **Conceptul de Toleranță Dimensională**: Fiecare piesă fabricată are o marjă de eroare admisibilă numită toleranță (de exemplu $\pm 0.1\text{ mm}$).
- Dacă proiectăm un capac pentru o baterie și greșim dimensiunea cu `0.5 mm`, capacul fie nu va intra în carcasă, fie va cădea la prima mișcare. Dacă inginerii de la o fabrică de avioane greșesc diametrul unui șurub de titan cu `0.2 mm`, aripa avionului poate ceda în zbor.

#### 3. Ce unelte folosim pentru a măsura și reproduce un obiect în CAD?
Profesorul arată uneltele fizice la cameră sau le trece prin bănci:
- **Șublerul (Caliper / Digital Caliper)**: Cel mai important instrument din laboratorul 3D. Măsoară trei lucruri cu precizie de 0.01 mm:
  1. *Dimensiuni exterioare* (folosind fălcile mari).
  2. *Dimensiuni interioare / orificii* (folosind fălcile mici superioare).
  3. *Adâncimi* (folosind tija metalică subțire din capăt).
  - *Demonstrație live*: Profesorul măsoară grosimea unei piese LEGO (exact 9.6 mm înălțime, 3.2 mm grosimea unui perete) și diametrul unui bănuț.
- **Micrometrul**: Instrument de ultra-precizie folosit pentru a măsura grosimea foilor de metal sau a filamentului 3D cu acuratețe de micrometri ($0.001\text{ mm}$).
- **Ruleta și Rigla de Oțel**: Pentru măsurarea lungimilor mari (de la câțiva centimetri la câțiva metri).
- **Raportorul (Protractor)**: Instrumentul semicircular cu care măsurăm și trasăm unghiuri în grade ($0^\circ - 180^\circ$).

#### 4. Cum controlăm precizia în Tinkercad?
Profesorul explică cele 4 instrumente de control matematic din Tinkercad:
1. **Instrumentul Ruler (Rigla - scurtătură tasta `R`)**: Când plasăm rigla pe planul de lucru, orice obiect selectat își afișează instantaneu cotele numerice absolute și distanța exactă față de originea riglei.
2. **Casetele Numerice Directe**: Nu tragem niciodată formele cu mouse-ul la ochi! Dăm clic pe numărul afișat (de exemplu `20.00`) și tastăm valoarea exactă dorită (de exemplu `30.00`).
3. **Grila Snap Grid (Fixare pe Grilă)**: Situată în colțul din dreapta-jos. Putem seta pasul de mișcare la `1.0 mm` (standard), `0.5 mm`, `0.1 mm` (pentru precizie microscopică) sau `OFF` (mișcare liberă).
4. **Tastele Săgeți de pe Tastatură**: O apăsare pe o săgeată deplasează obiectul selectat cu exact valoarea setată în Snap Grid (dacă grila e la 1.0 mm, o apăsare = exact 1.0 mm).

---

### Pasul 3: Pauză Operațională & Logare (00:30 – 00:35)

Elevii fac o pauză scurtă de 5 minute, își spală mâinile, beau apă și revin la calculatoare, logându-se în conturile Tinkercad Classroom prin codul de clasă și nickname-ul personal.

---

### Pasul 4: Demonstrația Profesorului Pas cu Pas (00:35 – 00:55)

Profesorul proiectează ecranul propriu și modelează de la zero Rigla-Semn de Carte, explicând fiecare pas și fiecare scurtătură de tastatură.

#### Etapa 1: Crearea Corpului Principal al Riglei (Baza)
1. Se aduce un cub roșu (**Box**) pe planul de lucru.
2. Se activează instrumentul **Ruler** (tasta `R`) dând clic în colțul din stânga-jos al planului de lucru.
3. Se setează dimensiunile exacte din casetele numerice:
   - **Lungime (Axa X)**: `110.0 mm` (11 cm lungime totală, lăsând spațiu de 5 mm la capete).
   - **Lățime (Axa Y)**: `30.0 mm` (3 cm lățime).
   - **Înălțime (Axa Z)**: `1.6 mm` (grosimea optimă: suficient de rezistentă pentru a nu se rupe, dar suficient de subțire pentru a intra ușor între paginile unei cărți).
4. Se colorează corpul într-o nuanță plăcută (de exemplu, albastru sau turcoaz).

#### Etapa 2: Crearea Gradației de Bază (Linia de 1 cm)
1. Se aduce un cub nou și se transformă în corp decupator (**Hole / Gol**).
2. Se setează dimensiunile liniei de centimetru:
   - **Lățime linie (Axa X)**: `1.0 mm` (o fantă subțire și clară).
   - **Lungime linie (Axa Y)**: `8.0 mm` (se întinde pe marginea superioară a riglei).
   - **Înălțime (Axa Z)**: `4.0 mm` (mai înaltă decât rigla pentru a o străpunge complet de sus până jos).
3. Se poziționează prima linie la cota $X = 5.0\text{ mm}$ (acesta va fi punctul $0\text{ cm}$).

#### Etapa 3: Magia Multiplicării Rapide (`Ctrl + D`)
1. Cu prima linie de decupaj selectată, se apasă comanda **Duplicate** (`Ctrl + D`).
2. Fără a da clic în altă parte, se apasă tasta **Săgeată Dreapta** de 10 ori (la Snap Grid de 1.0 mm) SAU se modifică valoarea X din caseta Ruler adăugând exact `10.0 mm`.
3. Se apasă repetat `Ctrl + D`: Tinkercad reține automat deplasarea de 10 mm și generează instantaneu celelalte linii la cotele 20mm, 30mm, 40mm ... până la 100mm (punctul 10 cm)!
4. Pentru liniile intermediare de **5 mm (jumătăți de centimetru)**:
   - Se creează o linie mai scurtă (lungime Y de `4.0 mm`).
   - Se plasează la $X = 10.0\text{ mm}$ (adică la 0.5 cm).
   - Se multiplică cu `Ctrl + D` cu pas de 10 mm.

#### Etapa 4: Adăugarea Cifrelor (Text Decupat sau Gravat)
1. Se aduce un obiect **Text** din panoul lateral.
2. Se tastează cifrele `0`, `1`, `2` ... `10` cu o înălțime de font mică (înălțime Y de `5.0 mm` și grosime X de `1.0 mm`).
3. Se aliniază cifrele sub fiecare linie lungă de centimetru.
4. Se transformă cifrele în **Hole** (adâncime de 0.8 mm pentru gravură sau străpungere completă).

#### Etapa 5: Șabloanele Geometrice (Stencils) & Personalizarea
1. În spațiul liber rămas pe corpul riglei (lățimea de 15 mm din partea inferioară), profesorul demonstrează adăugarea unor forme geometrice mici decupate (Hole):
   - Un cerc mic ($\varnothing 6\text{ mm}$).
   - Un triunghi echilateral ($6\text{ mm}$).
   - O stea sau o inimioară din secțiunea *Design Starters*.
   - Un orificiu alungit în capăt pentru agățarea unui ciucure de semn de carte.
2. Se adaugă numele elevului (de exemplu `ALEX`) gravat la o adâncime de 0.6 mm.
3. Se selectează toate formele (`Ctrl + A`) și se unesc cu **Group** (`Ctrl + G`).

---

### Pasul 5: Laborator Practic Individual (00:55 – 01:35)

Elevii lucrează individual la propriile proiecte. Profesorul circulă printre bănci și verifică aplicarea strictă a regulilor de inginerie:

- **Checklist de Verificare Tehnică la Banc**:
  1. *Dimensiunea exterioară*: Este baza exact de `110 x 30 mm`?
  2. *Grosimea Z*: Este înălțimea de maxim `1.6 mm` - `2.0 mm`? (Dacă un elev a lăsat baza la 20 mm, rigla va fi un bloc uriaș inutilizabil).
  3. *Acuratețea scării*: Distanța dintre linia 0 și linia 10 este exact de `100 mm`?
  4. *Planaritatea*: Nu există obiecte 3D voluminoase ridicate în sus care să împiedice rigla să stea dreaptă pe hârtie?
  5. *Inspecția decupajelor*: Toate decupajele (stencils) sunt grupate corect și străpung baza fără să lase pereți microscopici mai subțiri de 0.8 mm (care s-ar rupe la imprimare)?

---

### Pasul 6: Provocarea Tehnică – Jocul Raportorului Semicircular (01:35 – 01:50)

Pentru elevii care finalizează rigla mai devreme și ca activitate colectivă de consolidare, profesorul lansează un joc-concurs tehnic: **Misiunea Raportorul Semicircular (Angle Ruler Challenge)**.

1. **Obiectivul Jocului**: Crearea unui instrument semicircular pentru măsurat unghiuri ($0^\circ$ până la $180^\circ$).
2. **Provocarea de Logică Spațială**: Cum obținem gradații rotunde?
   - Se aduce un semicilindru (**Round Roof** sau cilindru tăiat în două).
   - Se creează o linie subțire de decupaj (`1 mm x 10 mm`).
   - Se mută punctul de rotație în centrul semicercului.
   - Folosind roata de rotație a unghiurilor din Tinkercad (la pași de $15^\circ$ sau $30^\circ$) și comanda `Ctrl + D`, elevii văd cum liniile se multiplică în evantai circular la $0^\circ, 30^\circ, 45^\circ, 60^\circ, 90^\circ, 120^\circ, 150^\circ, 180^\circ$!
3. Profesorul premiază elevii care au reușit să creeze cel mai precis raportor cu insigna virtuală de *„Master of Angles”*.

---

### Pasul 7: Quiz Kahoot, Colectarea Pieselor & Încheiere (01:50 – 02:00)

1. **Jocul Quiz Kahoot (6–8 minute)**:
   - Elevii accesează `kahoot.it` pe laptop sau telefon.
   - Se parcurg cele 12 întrebări 100% teoretice (istorie CAD, Ivan Sutherland, Pierre Bézier, utilizarea șublerului, toleranțe și instrumentul Ruler).
   - Toate întrebările, variantele scurte de 1–3 cuvinte și explicațiile didactice se găsesc în `quiz.md`.
2. **Colectarea Brelocurilor *Cheese Keyring* Imprimate în Timpul Orei**:
   - Imprimanta Bambu Lab A1 a finalizat placa de printare pornită la începutul orei (Pasul 1). Patul încălzit s-a răcit.
   - Elevii vin pe rând la imprimantă, flexează ușor placa PEI texturată și își desprind brelocul de cașcaval.
   - Fiecare elev înșurubează tija inelului metalic în orificiul tehnic de 1 mm modelat la Lecția 01, testând rezistența mecanică a piesei reale.
3. **Salvarea Riglelor pentru Slicing & Imprimare la Lecția 03**:
   - Fiecare elev verifică salvarea proiectului în Tinkercad Classroom sub denumirea: `Nume_Rigla_10cm`.
   - Modelele de rigle și semne de carte sunt inspectate de profesor și vor fi pregătite în Bambu Studio pentru a fi puse la imprimat pe parcursul Lecției 03.
4. **Fotografia de Grup**: Toți elevii țin în mână brelocurile *Cheese Keyring* proaspăt asamblate și pozează zâmbitori la panoul clasei.

---

## 5. Ghid de Depanare & Sfaturi pentru Profesor (Troubleshooting)

- **Problema 1: Elevul trage de colțurile obiectului și pierde cotele exacte.**
  - *Soluție*: Învățați elevul să nu mai folosească mânerele albe/negre cu mouse-ul. Învățați-l să dea un singur clic pe numărul dorit și să tasteze cifra de pe tastatură (`110`, `Enter`).
- **Problema 2: Comanda `Ctrl + D` nu mai păstrează distanța de 10 mm.**
  - *Cauză*: Elevul a dat clic pe fundal sau pe alt obiect între multiplicări, ceea ce resetează memoria Tinkercad.
  - *Soluție*: Ștergeți liniile greșite, selectați din nou linia inițială, apăsați `Ctrl + D`, mutați-o o singură dată cu 10 mm spre dreapta, apoi apăsați direct `Ctrl + D` în continuare.
- **Problema 3: Textul sau șabloanele decupate sunt prea subțiri și dispar la slicing.**
  - *Cauză*: Liniile fontului au sub 0.4 mm lățime (sub diametrul duzei imprimantei Bambu Lab A1).
  - *Soluție*: Măriți grosimea fontului sau alegeți un font mai plin (*Sans* sau *Sans Mono*).
- **Problema 4: Rigla este curbată sau are reliefuri pe spate.**
  - *Soluție*: Apăsați tasta `D` (Drop) pentru a așeza toate corpurile perfect la cota $Z = 0$ pe planul de lucru înainte de grupare.
