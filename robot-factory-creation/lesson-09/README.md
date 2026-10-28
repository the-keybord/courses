# Lecția 09 [RBF1.9]: Inițierea în CAD Parametric: Descoperirea Onshape, Asamblarea Digitală a Triciclului RC & Formarea Alianțelor roboRangers

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF1.9
- **Modul**: Modelare 3D, Proiectare Parametrică & Alianțe Mecatronice
- **Vârsta Țintă**: 11 – 14 ani (Nivelul 1 – Începători)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune de tranziție majoră de la electronică de laborator către proiectare digitală în cloud. Lecția cuprinde celebrarea competențelor dobândite în Lecțiile 1–8, completarea testului de sortare a abilităților, formarea alianțelor de 2–3 cursanți (rolurile Forge, Cyber, Vanguard), descoperirea interfeței Onshape și realizarea primei asamblări digitale 3D (Digital Twin) a mașinuței RC de tip triciclu (șasiu printat 3D, direcție frontală acționată de servomotor, două roți frontale directoare, roată posterioară unică de propulsie acționată de motor cu reductor N20, benzi de cauciuc / rubber bands pe toate roțile pentru aderență, placă electronică dedicată de 2.4 GHz cu telecomandă radio împerecheată / paired remote) folosind conexiuni magnetice inteligente (Fastened Mates).

### Întrebări Esențiale:
1. De ce inginerii moderni proiectează un „Digital Twin” (geamăn digital) în software 3D înainte de a tăia, găuri sau printa fizic componentele unui robot?
2. Care este diferența dintre modelarea unei piese izolate (Part Studio) și îmbinarea componentelor într-un ansamblu mecanic complet (Assembly)?
3. Cum funcționează o constrângere mecanică de tip **Fastened Mate** și de ce este superioară mutării libere a obiectelor cu mouse-ul în spațiul tridimensional?
4. Cum funcționează arhitectura mecanică de tip triciclu (servomotor frontal pentru virare + roată posterioară mare cu motor N20 pentru propulsie) și de ce adăugăm benzi elastice de cauciuc (rubber bands) pe jantele printate 3D?
5. Cum contribuie împărțirea rolurilor specializate (mecanică, software, brand/strategie) la succesul unei alianțe mecatronice de tip roboRangers?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/
- **Spațiu de Lucru Onshape (Template Shared)**: https://cad.onshape.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Conturi Digitale
- [ ] Conturile educaționale Onshape ale elevilor verificate sau link-ul public către documentul-șablon „RC Trike Starter Assembly” testat în mod incognito.
- [ ] Proiectorul conectat și prezentarea teoretică încărcată pe ecranul mare.
- [ ] Chestionarul de sortare a aptitudinilor pregătit (tipărit pe foi A4 sau deschis ca formular online pe computerele elevilor).
- [ ] Quiz-ul Kahoot de 10 întrebări teoretice deschis într-un tab separat pentru runda finală de evaluare.

### Hardware & Materiale Fizice pentru Clasă
- [ ] O mașină fizică RC Triciclu printată 3D complet asamblată adusă la catedră ca model demonstrativ de referință (șasiu triciclu printat 3D, servomotor frontal pentru direcție, două roți frontale prevăzute cu benzi de cauciuc / rubber bands, roată posterioară mare de propulsie antrenată de motor N20 cu reductor metalic, placă dedicată de 2.4 GHz cu telecomandă radio împerecheată / paired remote, suport acumulator).
- [ ] Componentele fizice individuale așezate pe o tavă la catedră pentru ca elevii să poată compara piesa reală din mână cu modelul 3D de pe ecran (șasiu triciclu printat, servomotor, fuzete virare, motor N20, roată posterioară mare, rubber bands, placă 2.4 GHz, telecomandă).
- [ ] Șuruburi și feronerie fizică la vedere: șuruburi M3 x 10 mm, șuruburi M2, șuruburile mici de servomotor (2 șuruburi de fixare a flanșelor + 1 șurubel mic central pentru brațul servo horn) și șubler digital pentru exemplificarea toleranțelor mecanice.

---

### 🛠️ Ghid Pas-cu-Pas pentru Mentor: Pregătirea, Organizarea și Partajarea Șablonului Onshape

Pentru ca laboratorul să decurgă perfect și fără blocaje tehnice, mentorul trebuie să pregătească din timp documentul-șablon Master în Onshape și să aplice corect protocolul de duplicare pentru elevi.

#### Etapa A: Crearea & Organizarea Documentului Master în Onshape
1. **Crearea Documentului**: În contul de profesor Onshape (pe ecranul principal Onshape Documents), apăsați `Create` -> `Document` și numiți fișierul:  
   `RBF1_RC_Trike_Starter_Template`.
2. **Structura Nativă Onshape (`Part Studio 1` și `Assembly 1`)**:
   - În versiunea curentă de Onshape, orice document nou creat generează automat exact două tab-uri pe bara inferioară:
     - **Tab 1: `Part Studio 1`**: Atelierul de piese (unde se desenează sau se stochează geometriile 3D solide individuale).
     - **Tab 2: `Assembly 1`**: Linia de montaj (unde piesele sunt îmbinate mecanic prin conexiuni Fastened Mates).
3. **Importul Fișierelor 3D în Proiect (Butonul `+` din Colțul Stânga-Jos)**:
   - Pentru a aduce fișierele CAD ale triciclului în proiect, mentorul apasă pe pictograma **`+`** din colțul din stânga-jos al barei inferioare de tab-uri și selectează **`Import...`** (sau trage fișierele prin drag-and-drop direct în fereastra browserului).
   - Se importă modelele 3D ale componentelor:
     - Componentele printate 3D: `Main_Trike_Chassis`, `Steering_Knuckles_Left_Right`, `Front_Wheels`, `Rear_Big_Wheel`.
     - Componentele standard COTS (descărcate gratuit ca fișiere `.STEP` de pe GrabCAD.com sau create anterior): motorul N20 cu reductor metalic, servomotorul frontal micro-servo, placa receptor 2.4 GHz, suportul de baterie, inelele de cauciuc (*Rubber Bands*) și șuruburile aferente.
   - Toate corpurile 3D importate devin disponibile în lista `Parts` din `Part Studio 1` (sau în tab-uri de tip Part Studio). Nu este necesară crearea de sub-foldere complicate pe bara de tab-uri.
4. **Pregătirea Spațiului de Lucru în `Assembly 1` (Bara de Unelte Superioară: Butonul `Insert`)**:
   - Mentorul deschide tab-ul **`Assembly 1`** de pe bara de jos.
   - Pe **bara de unelte superioară** (Assembly toolbar), apasă pe primul buton din stânga: **`Insert`** (scurtătură de tastatură `Alt + I`).
   - În panoul apărut, sub secțiunea `Current document`, selectează `Part Studio 1` (făcând click pe numele `Part Studio 1` se introduc toate piesele dintr-o singură mișcare în scenă) și apasă bifa verde (`✔`).
   - *Notă privind șuruburile standard*: În același panou `Insert`, tab-ul **`Standard content`** din Onshape permite inserarea directă a șuruburilor metrice M3 și M2 (ISO / ANSI) din biblioteca nativă a programului.
   - **Pregătirea Scenariului de Laborator pentru Elevi**: Mentorul aranjează piesele aerisit în jurul originii, ca pe un banc real de lucru unde componentele au fost scoase din cutie. Șasiul `Main_Trike_Chassis` se poziționează în centru, **lăsat neancorat** (fără `Fix`), astfel încât prima acțiune practică a fiecărui elev să fie blocarea șasiului prin `Right Click` -> `Fix`.

#### Etapa B: Pachetul Complet de Piese și Șuruburi Digitale (BOM Onshape)
Asigurați-vă că documentul conține toate componentele necesare triciclului:
- `Main_Trike_Chassis`: Șasiul monobloc cu suport frontal de servo și fante posterioare pentru motorul N20.
- `Front_Servo_9g`: Micro-servomotorul de direcție cu urechi laterale de prindere și ax canelat.
- `Servo_Mounting_Bolts` (2 bucăți): Șuruburile mici de fixare a flanșelor servomotorului în șasiu.
- `Servo_Horn_Screw` (1 bucată): Șurubelul mic central de blocare a brațului de virare pe axul canelat.
- `Steering_Linkage_Assembly`: Tija de legătură și cele 2 fuzete viratoare.
- `Front_Wheels` (2 bucăți) + `Front_Rubber_Bands` (2 inele elastice de cauciuc).
- `N20_Gearmotor`: Motor de curent continuu cu reductor metalic și ax D-shaft.
- `Rear_Big_Wheel` (1 bucată) + `Rear_Rubber_Band` (1 bandă lată elastică de cauciuc).
- `Receiver_Board_2.4GHz`: Placa electronică cu antenă și conectori dedicați.
- `Battery_Holder`: Suportul coborât pentru baterie/acumulator.
- `M3_Screws_10mm` & `M2_Screws`: Șuruburile de asamblare generală.

#### Etapa C: Configurarea Drepturilor de Partajare (Protocolul Anti-Suprascriere)
> **ATENȚIE MAXIMĂ PENTRU MENTOR**: Nu acordați niciodată drepturi de editare (`Can edit`) elevilor pe documentul Master! Dacă un singur elev modifică sau șterge o piesă în Master, modificarea se va propaga instantaneu la toți ceilalți elevi din clasă.

1. În colțul din dreapta-sus al documentului Master, faceți click pe butonul albastru **`Share`**.
2. Selectați tab-ul **`Link sharing`** și activați comutatorul:  
   `Turn on link sharing`.
3. Setați permisiunile la:  
   - **`Can view`** (Doar vizualizare).
   - Asigurați-vă că opțiunea **`Allow copy`** (Permite copierea documentului) este bifată activ!
4. Copiați link-ul generat (`Copy link to clipboard`) și distribuiți-l elevilor (pe tabla digitală, Google Classroom sau portalul clasei).

#### Etapa D: Procedura de Duplicare Pas-cu-Pas pentru Elevi („Make a Copy to Edit”)
Mentorul proiectează ecranul pe proiector și ghidează elevii prin cei 3 pași obligatorii de la începutul laboratorului:
1. **Deschiderea Link-ului**: Elevul deschide link-ul primit în browserul Chrome (fiind deja logat în contul său Onshape educațional).
2. **Duplicarea Documentului**:
   - În bara superioară a interfeței, elevul va vedea o bandă albastră cu mesajul: *„View only”*.
   - Elevul dă click pe meniul documentului din stânga sus (lângă logo-ul Onshape) sau pe butonul **`Make a copy to edit`** (ori `Copy workspace`).
3. **Redenumirea Fișierului Personal**:
   - În fereastra apărută, elevul introduce numele oficial al proiectului său după șablonul:  
     `NumeAlianță_PrenumeElev_RC_Trike_V1` (ex: `TitanDynamics_Alex_RC_Trike_V1`).
   - Apasă butonul albastru **`OK`**.
4. **Validarea de Către Mentor & Accesarea Tab-ului `Assembly 1`**:
   - În câteva secunde, Onshape deschide noul document privat al elevului. Mesajul *„View only”* dispare, iar bara de unelte (inclusiv comanda `Fastened Mate`) devine activă.
   - Elevii verifică în bara inferioară de tab-uri că sunt poziționați pe **`Assembly 1`** (nu în `Part Studio 1`). În `Assembly 1`, toate piesele digitale ale triciclului sunt deja aranjate pe masa de lucru virtuală.
   - Mentorul face un tur rapid vizual prin clasă pentru a confirma că toți elevii au în colțul din stânga-sus propriul nume și că nimeni nu a rămas pe documentul Master în mod pasiv. De acum, fiecare elev construiește în spațiul său independent!

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Moment Festiv & Trecerea la Etapa CAD** | Celebrăm parcurgerea cu succes a primelor 8 lecții de circuite, senzori și microcontrolere. Prezentăm misiunea noii etape: devenim ingineri de design 3D și ne construim propriul vehicul mecatronic. |
| **00:15 – 00:35** | **2. Testul de Sortare & Formarea Alianțelor** | Elevii completează chestionarul de 20 de întrebări. Identificăm profilurile dominante (Forge, Cyber, Vanguard). Se formează alianțele de 2–3 membri și se alege numele de echipă. |
| **00:35 – 00:50** | **3. Prezentare Teoretică: CAD & Onshape** | Conceptele fundamentale de CAD în cloud: spațiul tridimensional (axele X, Y, Z), Part Studio vs Assembly, de ce blocăm prima piesă (Fix) și cum funcționează magneții mecanici (Fastened Mates). |
| **00:50 – 01:40** | **4. Laborator Practic Onshape: Asamblarea Triciclului RC** | Elevii deschid proiectul-șablon în Onshape și montează pas cu pas: șasiul triciclu, servomotorul frontal de direcție, roțile frontale cu rubber bands, motorul N20 cu reductor, roata mare posterioară de tracțiune (cu rubber band), placa dedicată 2.4 GHz, suportul de baterie și șuruburile M3/M2. |
| **01:40 – 01:50** | **5. Lansarea Identității de Echipă roboRangers** | Alianțele aleg paleta de culori a vehiculului în Onshape (Edit Appearance) și realizează prima captură de ecran izometrică curată pentru viitorul profil web de echipă. |
| **01:50 – 01:58** | **6. Quiz Kahoot Interactiv** | Concurs de 10 întrebări axat strict pe teoria CAD, orientarea în spațiul 3D, concepte de toleranță și rolurile dintr-o echipă de inginerie (conform `quiz.md`). |
| **01:58 – 02:00** | **7. Încheiere & Salvare Proiect** | Verificarea salvării documentelor în Onshape, curățarea bancurilor de lucru și preview-ul lecției următoare. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Moment Festiv & Recunoașterea Realizărilor (15 min)
Profesorul deschide lecția printr-un moment solemn și energic. În primele 8 săptămâni, elevii au trecut printr-un maraton tehnic intens: au înțeles tensiunea, curentul, au conectat rezistențe și senzori optici/acustici, au învățat să evite scurtcircuitele și au programat logica plăcii micro:bit în MakeCode.

Profesorul subliniază că mulți copii de vârsta lor doar consumă jocuri video sau asamblează jucării prefabricate fără să înțeleagă ce este sub capotă. Ei, în schimb, au devenit adevărați tehnicieni de laborator. 

Acum începe **Faza a Doua a Cursului**: trecerea de la bancul de cabluri la biroul de proiectare industrială. Pentru ca un robot să fie fiabil, rapid și rezistent în arenă, el nu poate fi legat cu bandă adezivă sau coliere de plastic improvizate. Are nevoie de un șasiu optimizat, modelat milimetric pe calculator și fabricat prin printare 3D din polimeri tehnici.

### Pasul 2: Testul de Sortare a Abilităților & Lansarea Alianțelor roboRangers (20 min)
Fiecare elev primește fișa de aptitudini (sau accesează formularul digital). Chestionarul conține 20 de afirmații calibrate pe o scală de la 1 la 5, grupate în 4 domenii:
- **Secțiunea I**: Mecanică, scule, dezasamblare și gândire spațială.
- **Secțiunea II**: Algoritmi, cod logic, automatizări și depanare erori.
- **Secțiunea III**: Artă vizuală, simț cromatic, design de logo și estetică.
- **Secțiunea IV**: Organizare, strategie de joc, comunicare publică și pagini web.

După calcularea scorurilor (în maxim 5 minute), profesorul prezintă cele trei profile de bază compatibile cu ecosistemul **roboRangers**:
1. **Forge Ranger (Mecanică & CAD Lead)**: Maestrul formelor 3D, al toleranțelor de prindere și al printării 3D.
2. **Cyber Ranger (Software & Electronică Lead)**: Arhitectul algoritmilor de navigație, al senzorilor și al conexiunilor electrice.
3. **Vanguard Ranger (Brand, Web & Cursă Lead)**: Liderul de comunicare, creatorul identității vizuale și strategul de punctaj în arenă.

Elevii sunt grupați în **Alianțe de 2–3 membri**. În echipele de 3 (Trio), fiecare membru preia oficial unul dintre cele trei roluri. În echipele de 2 (Duo), rolurile fuzionează: un membru preia segmentul de Hardware complet (Forge + conexiuni fizice), iar celălalt preia segmentul de Software și Strategie (Cyber + Vanguard).

Profesorul reamintește regula de aur: **Fiecare membru își construiește și își asamblează propriul robot individual!** Alianța funcționează ca o echipă de Formula 1: toți piloții au propria mașină pe circuit, dar colaborează la boxe, își împărtășesc soluțiile tehnice și concurează sub același steag.

Alianțele nou formate au la dispoziție 5 minute pentru a-și stabili un nume de cod oficial (ex: *Titan Dynamics*, *Vortex Mechanics*, *CyberPulsar*, *AeroStrike*) și a-și nota rolurile asumate.

### Pasul 3: Prezentarea Teoretică Onshape & Magia Conexiunilor 3D (15 min)
Profesorul proiectează ecranul Onshape și introduce conceptele esențiale:
- **De ce Onshape în loc de softuri CAD greoaie instalate pe calculator?** Rulează nativ în orice browser web, salvează automat fiecare milisecundă în cloud și permite colaborarea în timp real fără transferuri de fișiere STL corupte pe stick-uri USB.
- **Cele două lumi din Onshape**:
  - *Part Studio*: Atelierul în care sculptăm o singură piesă din materie primă (prin schițe 2D și extrudări) sau stocăm geometriile individuale.
  - *Assembly*: Fabrica de asamblare în care aducem piese gata făcute (motoare, șuruburi, plăci electronice) și le conectăm mecanic exact cum se îmbină în realitate.
- **Ingineria Eficientă: De unde vin piesele standard? (GrabCAD.com & Standard Content)**: Profesorul le arată elevilor că un inginer nu pierde timpul modelând manual fiecare motor sau șurub cumpărat din magazin. Piese precum servomotoarele SG90 sau motoarele N20 sunt descărcate ca fișiere STEP de pe **GrabCAD.com** (cea mai mare bibliotecă deschisă din lume pentru comunitatea de ingineri), iar șuruburile standard pot fi inserate direct din biblioteca Onshape `Standard content`.
- **Conceptul de Fix (Ancorare)**: Într-un spațiu 3D virtual, fără gravitație, dacă tragi de un șurub poți mișca din greșeală întreaga mașină. Prima regulă a inginerului este să ancoreze șasiul principal (`Right Click` -> `Fix`), transformându-l în piatra de temelie a vehiculului.
- **Fastened Mates vs. Mutare Liberă**: Profesorul demonstrează pe proiector de ce mutarea liberă cu mouse-ul este o capcană: privind dintr-un unghi o piesă pare așezată pe gaură, dar dacă rotești camera, piesa plutește în aer la un metru distanță. Conexiunea **Fastened Mate** (`M`) folosește puncte matematice numite *Mate Connectors* care se atrag magnetic și blochează cele două suprafețe într-o îmbinare rigidă perfectă.

### Pasul 4: Laboratorul Practic – Asamblarea Digitală a Triciclului RC (50 min)
Fiecare elev deschide documentul-șablon pe propriul calculator. Lucrul se desfășoară individual, dar cu suport reciproc în cadrul alianței (ghidat de detaliile din `materials/onshape_mini_rc_car_lab_guide.md`):

1. **Verificarea Tab-ului `Assembly 1` & Testul de Navigare (3 minute)**:
   - Elevii se asigură că sunt poziționați pe tab-ul **`Assembly 1`** de pe bara inferioară. Aici toate componentele sunt deja așezate aerisit pe masa de lucru 3D.
   - *(Dacă o piesă a fost ștearsă accidental: elevul apasă butonul **`Insert`** de pe bara de unelte superioară, dă click pe piesa respectivă din `Part Studio 1`, dă click pe ecran pentru a o plasa și apasă bifa verde).*
   - Elevii exersează comenzile esențiale:
     - Rotirea scenei 3D (Orbit) ținând apăsat click-dreapta.
     - Deplasarea camerei (Pan) ținând apăsată rotița de scroll.
     - Resetarea la vederea izometrică curată cu comanda rapidă `Shift + 7`.
     - Recadrarea automată dacă pierd modelul din vizualizare: tasta `F` (Fit to window).
2. **Ancorarea Șasiului Triciclu (`Main_Trike_Chassis`)**: Fiecare elev localizează piesa structurală printată 3D, dă click-dreapta și alege `Fix`.
3. **Instalarea Servomotorului Frontal pentru Direcție & Șuruburile de Flanșă**:
   - Se apasă tasta `M` (Fastened Mate).
   - Se selectează centrul găurii de fixare de pe urechea servomotorului.
   - Se cuplează pe locașul dedicat din partea frontală a șasiului, orientând axul cu caneluri în sus.
   - Dacă piesa se poziționează invers, se apasă tasta `Z` (Flip) și bifa verde.
   - **Montarea șuruburilor mici de flanșă (`Servo_Mounting_Bolts`)**: Se plasează cele două șuruburi mici filetate în găurile urechilor servomotorului pentru a asigura prinderea mecanică rigidă pe șasiu.
4. **Montarea Mecanismului de Virare, a Șurubelului de Servo Horn & a Roților Frontale (cu Rubber Bands)**:
   - Se cuplează brațul de virare (servo horn) pe axul canelat al servomotorului și **se blochează cu șurubelul mic central (`Servo_Horn_Screw`)** pentru a preveni scăparea sau alunecarea direcției în timpul virajelor strânse.
   - Se montează tijele și fuzetele de virare conectate la brațul servomotorului.
   - Se montează cele două roți directoare frontale pe axele de viraj.
   - Se montează elasticele de cauciuc (rubber bands) în canelurile jantelor frontale printate 3D pentru a asigura aderență laterală în viraje și a preveni derapajul.
5. **Instalarea Motorului N20 cu Reductor Metalic**:
   - Se activează Fastened Mate (`M`).
   - Se selectează fața frontală a carcasei reductorului motorului compact N20.
   - Se montează în fanta posterioară a șasiului, cu axul de tip D-shaft îndreptat către exterior.
6. **Montarea Roții Posterioare Mari de Propulsie**:
   - Se cuplează alezajul cu profil D al roții mari din spate direct pe axul motorului N20.
   - Se aplică banda elastică de cauciuc (rubber band) pe circumferința roții mari posterioare, asigurând tracțiunea necesară pentru accelerare fermă pe orice tip de suprafață.
7. **Montarea Plăcii Electronice Dedicate 2.4 GHz**:
   - Se montează placa radio receptor de 2.4 GHz pe distanțierii centrali superiori ai șasiului.
   - Se orientează conectorii către servomotor și motorul N20, lăsând antena radio degajată pentru recepție optimă a semnalului de la telecomanda împerecheată (paired remote).
8. **Instalarea Suportului de Baterie & Șuruburilor de Fixare**:
   - Se poziționează suportul de acumulator în locașul central coborât al șasiului pentru a menține un centru de greutate jos și a asigura stabilitatea la viraje bruște a arhitecturii de triciclu.
   - Se plasează șuruburile metrice cilindrice de fixare (M3 x 10 mm / M2) în găurile structurale ale plăcii și ale bateriei.

*Rolul profesorului și al consultanților de alianță*: Forge Ranger-ul din fiecare echipă ajută colegii care au inversat o axă sau au uitat să ancoreze șasiul. Profesorul intervine doar când o problemă persistă.

### Pasul 5: Lansarea Identității de Echipă & randare roboRangers (10 min)
După finalizarea asamblării mecanice, elevii adaugă personalitate robotului:
- Fiecare membru dă click-dreapta pe componentele printate din lista din stânga și selectează `Edit Appearance`.
- Se aplică paleta cromatică adoptată de alianță (de exemplu: șasiu negru mat cu jante portocalii neon sau caroserie albastră cu accente argintii).
- Elevii apasă comanda `Shift + 7` (vedere izometrică curată), apasă tasta `K` pentru a ascunde conectorii de asamblare și realizează o captură de ecran (screenshot) la rezoluție mare. Această imagine va constitui prima fotografie oficială pentru profilul flotei pe platforma web roboRangers.

### Pasul 6: Quiz Kahoot Interactiv (8 min)
Se lansează quiz-ul de 10 întrebări de pe platforma Kahoot. Întrebările testează exclusiv conceptele teoretice: rolul unui Digital Twin, diferența dintre Part Studio și Assembly, funcția Fastened Mate, importanța centrului de greutate și mecanica rolurilor dintr-o echipă de inginerie. Profesorul afișează explicația pedagogică după fiecare întrebare pentru a consolida termenii tehnici.
*(Toate întrebările, variantele de răspuns ultra-scurte și explicațiile se regăsesc în fișierul dedicat `quiz.md`.)*

### Pasul 7: Concluzii & Salvare Proiect (2 min)
Profesorul verifică dacă toți elevii au denumit documentul Onshape conform formatului cerut (ex: `Nume_Alianță_Prenume_Robot_V1`). Se reamintește că în lecția următoare alianțele vor învăța să creeze propria piesă parametrică de la zero (schiță 2D cotată și extrudare) pentru a adăuga un accesoriu mecanic personalizat pe mașină. Bancurile de lucru sunt ordonate, iar calculatoarele lăsate pregătite.
