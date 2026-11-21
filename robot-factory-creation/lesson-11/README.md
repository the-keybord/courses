# Lecția 11 [RBF1.11]: Ghidul Inginerec al Elementelor de Fixare (Fasteners), Asamblarea Mecanică a Triciclului RC și Marea Competiție Agility Cup

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF1.11
- **Modul**: Inginerie Mecanică, Metode de Asamblare 3D & Dinamică RC
- **Vârsta Țintă**: 11 – 14 ani (Nivelul 1 – Începători / Intermediari)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune aplicată de laborator mecatronic dedicată materializării complete a proiectului de triciclu RC. Toate piesele structurale (șasiul principal, roțile, bielele de virare și barele frontale de protecție modelate în Onshape) sunt deja printate 3D pe imprimantele laboratorului. Înainte de montajul fizic, mentorul livrează un masterclass practic despre cele **4 mari metode de îmbinare mecanică (fasteners) în printarea 3D**:
  1. Înșurubare directă în plastic prin deformare mecanică (*Self-Tapping* pe alezaj de 2.8 mm pentru șurub M3);
  2. Gaură de trecere largă (*Through-Hole* de 3.2 mm) cu piuliță hexagonală pe partea opusă;
  3. Piuliță pătrată captivă (*Captive Square Nut* standard DIN 562) glisată într-un buzunar intern al piesei 3D — soluție ingenioasă utilizată într-un punct critic al triciclului nostru;
  4. Inserții filetate de alamă la cald (*Heat-Set Threaded Inserts*) montate cu letconul.
  După înțelegerea avantajelor și dezavantajelor fiecărei soluții, elevii trec la asamblarea completă a bolidului mecanic: glisează piulița pătrată în buzunarul secret al șasiului, montează servomotorul și calibrează unghiul neutru de 90°, montează biela de direcție (*tie-rod*) pe fuzete, fixează motorul N20 cu reductor, echipează roțile cu pneuri elastice de cauciuc (*rubber bands*) și conectează placa radio 2.4 GHz. Sesiunea culminează cu teste de viraj pe banc și turneul oficial de viteză și manevrabilitate: **RoboRangers Agility Cup**!

### Întrebări Esențiale:
1. De ce înșurubarea directă a unui șurub de metal într-o gaură de plastic de 2.8 mm nu este recomandată pentru piese care trebuie demontate des?
2. Care este marele avantaj al unei piulițe captive pătrate (square nut) ascunse în interiorul piesei 3D comparativ cu o piuliță hexagonală obișnuită?
3. Cum funcționează inserțiile filetate de alamă (heat-set inserts) și de ce zimții exteriori (*knurling*) oferă o rezistență uriașă la smulgere după răcirea plasticului?
4. De ce trebuie să centrăm electric servomotorul de viraj la unghiul de 90° înainte de a strânge șurubul brațului oscilant (*servo horn*)?
5. Ce rol au benzile elastice de cauciuc (*rubber bands*) montate pe jantele printate 3D și cum îmbunătățesc ele accelerația și controlul în viraje?

### 🔗 Resurse & Linkuri Utile
- **Ghidul Tehnic de Asamblare Onshape Mini RC Car**: [`materials/onshape_mini_rc_car_lab_guide.md`](file:///c:/Users/keybord/Desktop/projects/Courses/robot-factory-creation/materials/onshape_mini_rc_car_lab_guide.md)
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Echipamente Digitale
- [ ] Proiectul Onshape al mașinuței RC deschis pe ecranul profesorului pentru referință vizuală 3D a modului în care piesele se îmbină.
- [ ] Prezentarea teoretică interactivă încărcată pe videoproiector conform `presentation_interactive.md`.
- [ ] Quiz-ul Kahoot de 10 întrebări deschis într-un tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Toate componentele printate 3D ale triciclului RC pregătite pe cutii individuale de echipă (șasiu principal, roți din spate, fuzete frontale, roată frontală, biela de direcție *Steering Tie-Rod* și bumperul frontal *Front Bumper*).
- [ ] Mostre demonstrative pentru cele 4 metode de fixare expuse pe masa catedrei:
  - 1 mostră de gaură de 2.8 mm cu șurub M3 înșurubat direct în plastic;
  - 1 mostră de două plăcuțe strânse cu șurub M3 și piuliță hexagonală clasică la exterior;
  - 1 mostră de piesă secționată 3D cu buzunar intern pentru piuliță pătrată DIN 562;
  - 1 mostră de piesă cu inserție de alamă (*heat-set insert*) presată la cald.
- [ ] Un letcon încălzit la 210°C la catedră (folosit exclusiv de profesor pentru o scurtă demonstrație de presare a unei inserții de alamă).
- [ ] Cutie compartimentată de feronerie mecanică la fiecare banc:
  - Șuruburi metrice M3 cu cap cilindric hexagonal: lungimi de 8 mm, 10 mm și 14 mm;
  - Șuruburi metrice M2 x 8 mm pentru montajul servomotorului și al pivoților fuzetelor;
  - Piulițe pătrate subțiri M3 (DIN 562) pentru lăcașul captiv din șasiu;
  - Piulițe hexagonale standard M3;
  - Șurubelnițe de precizie (hexagonale de 2.0 mm / 2.5 mm și cruce PH0).
- [ ] Seturi de componente electronice testate: motor N20 cu reductor metalic, servomotor micro (SG90), receptor radio 2.4 GHz, telecomenzi cu 4 butoane și baterii 1S Li-Ion complet încărcate.
- [ ] Benzi elastice de cauciuc late (*rubber bands*) pentru acoperirea jantelor printate 3D.
- [ ] Pista de concurs RoboRangers Agility Cup amenajată pe podea cu 6 jaloane de cauciuc sau obstacole printate 3D.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Deschiderea Misiunii & Inspectarea Pieselor Fizice** | Primirea elevilor la posturi, predarea pieselor printate 3D din Onshape și anunțarea obiectivului: transformarea pieselor statice într-un bolid mecanic gata de cursă. |
| **00:15 – 00:35** | **2. Teorie Inginerească: Cele 4 Metode de Fixare (Fasteners)** | Prezentarea interactivă la ecran: înșurubarea directă în plastic (2.8 mm), piulița clasică traversantă, secretul piuliței pătrate captive și inserțiile de alamă la cald. |
| **00:35 – 01:20** | **3. Atelier Mecanic: Asamblarea Pas cu Pas a Triciclului RC** | Glisarea piuliței pătrate în fanta șasiului, centrarea electrică a servomotorului la 90°, montarea timoneriei de virare, montarea motorului N20, echiparea pneurilor și fixarea bumperului. |
| **01:20 – 01:35** | **4. Pit Stop: Calibrare pe Banc & Reglarea Unghiurilor** | Pornirea alimentării 1S, împerecherea telecomenzii 2.4 GHz, verificarea cursei servomotorului, reglarea mecanică a bielei pentru mers drept și eliminarea frecărilor. |
| **01:35 – 01:50** | **5. Marea Provocare: Turneul RoboRangers Agility Cup** | Competiție cronometrată pe traseul de slalom: probă de viteză, viraje strânse printre jaloane, întoarcere la 180° și frânare controlată la linia de finiș. |
| **01:50 – 02:00** | **6. Quiz Kahoot & Concluzii Inginerești** | Sesiune interactivă de 10 întrebări teoretice despre proprietățile elementelor de fixare, toleranțe și cinematica de viraj (conform `quiz.md`). |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Deschiderea Misiunii & Inspectarea Pieselor Fizice (15 min)
Profesorul deschide sesiunea invitând elevii să își așeze pe masă piesele printate 3D:
*"În orele trecute ați desenat schițe, ați pus cote milimetrice în Onshape și ați creat geamănul digital al mașinii voastre. Astăzi piesele au ieșit de pe patul încins al imprimantelor Bambu Lab: sunt reci, solide și au culorile alianței voastre. Înainte de a lua șurubelnița în mână, trebuie să învățăm o regulă de bază din industria aerospațială și auto: cum îmbinăm piesele din plastic astfel încât mașina să nu se dezmembreze la primul impact cu peretele!"*

Elevii verifică vizual calitatea fiecărei piese:
- Șasiul principal printat 3D;
- Roțile din spate cu profil de jantă;
- Fuzetele de virare și roata din față;
- Biela de direcție (*Steering Tie-Rod*) modelată în Lecția 10;
- Bara frontală de protecție (*Front Bumper*) personalizată cu numele robotului.

---

### Pasul 2: Teorie Inginerească: Cele 4 Metode de Fixare (Fasteners) în Printarea 3D (20 min)

Profesorul proiectează slide-urile din `presentation_interactive.md` și arată mostrele reale de la catedră:

#### 1. Înșurubare Directă în Plastic (*Direct Self-Tapping* – Gaură de 2.8 mm pentru M3):
- **Cum funcționează**: Se printează o gaură cilindrică cu diametrul de 2.8 mm. Șurubul metric M3 (care are diametrul exterior de 3.0 mm) pătrunde forțat în gaură, iar spirele dure de oțel taie un canal elicoidal în plasticul mai moale.
- **Unde o folosim**: Pentru piese statice, carcase ușoare, cleme sau capace de baterie care se închid o singură dată și nu sunt supuse la vibrații intense.
- **De ce este limitată**: Dacă o deșurubăm de 3–4 ori, plasticul se macină, spirele se distrug, iar șurubul se va învârti în gol (*stripped thread*). De asemenea, dacă forțăm strângerea pe un perete subțire, piesa se poate despica de-a lungul straturilor de printare.

#### 2. Gaură de Trecere cu Piuliță Hexagonală pe Partea Opusă (*Through-Hole & Nut*):
- **Cum funcționează**: Gaura are diametrul de 3.2 – 3.4 mm, permițând șurubului M3 să treacă lejer prin ea. Pe partea opusă se strânge o piuliță hexagonală clasică de oțel.
- **Unde o folosim**: La îmbinări de mare rezistență mecanică unde avem acces liber pe ambele părți ale piesei.
- **Avantaj uriaș**: Forța se exercită metal-pe-metal; poți demonta și remonta piesa de 100 de ori fără nicio uzură.
- **Dezavantaj**: Necesită două unelte (șurubelniță + cheie/clește) și ocupă mult spațiu la exterior.

#### 3. Piuliță Pătrată Captivă în Fanta 3D (*Captive Square Nut Slot* – Soluția Triciclului Nostru!):
- **Cum funcționează**: În interiorul volumului 3D se proiectează un buzunar lateral dimensionat după conturul unei piulițe pătrate subțiri (standard **DIN 562 M3**). Piulița se glisează lateral în fantă, pereții de plastic o blochează automat împotriva rotirii, iar șurubul intră perpendicular prin gaura de ghidaj.
- **Secretul Inginerec**: Fața plană a piuliței pătrate oferă o suprafață de contact mult mai mare decât colțurile ascuțite ale unei piulițe hexagonale. Piesa din plastic acționează ca o cheie fixă invizibilă, permițând strângerea fermă a șurubului cu o singură unealtă, chiar și în zone adânci din interiorul șasiului!

#### 4. Inserții Filetate de Alamă la Cald (*Heat-Set Threaded Inserts*):
- **Cum funcționează**: O bucșă de alamă cu filet interior și zimți exteriori înclinați (*knurling*) este așezată deasupra unei găuri de 4.0 mm și presată ușor cu vârful cald al letconului la 200–220°C. Căldura topește plasticul din jur, inserția coboară la nivelul suprafeței, iar când plasticul se răcește în câteva secunde, el se solidifică printre zimții de alamă.
- **Unde o folosim**: În prototiparea profesională și produsele robotice comerciale de înaltă precizie. Oferă o rezistență masivă la smulgere (*pull-out*) și rotație (*torque*).

---

### Pasul 3: Atelier Mecanic: Asamblarea Pas cu Pas a Triciclului RC (45 min)

Elevii trec la stațiile de lucru și urmează protocolul mecanic ghidat pas cu pas de profesor:

#### Etapa A: Inserarea Piuliței Pătrate Captive
1. Elevul identifică fanta laterală din șasiul frontal al triciclului.
2. Glisează piulița pătrată DIN 562 M3 în buzunarul intern până când gaura filetată a piuliței se aliniază perfect cu orificiul vertical de ghidaj.
3. Se verifică alinierea privind prin orificiu: filetul de oțel trebuie să fie vizibil în centru.

#### Etapa B: Centrarea Servomotorului & Montajul Direcției
1. **Centrarea Electrică la 90°**: Înainte de a monta brațul oscilant (*servo horn*), elevul conectează servomotorul la placa de control, pornește alimentarea și lasă servomotorul să se așeze automat în poziția neutră de 90°.
2. Se montează brațul servomotorului perpendicular la 90° față de axul corpului și se asigură cu șurubul central mic.
3. Se montează servomotorul pe șasiul frontal folosind două șuruburi M2.
4. Se conectează biela de virare (*Steering Tie-Rod*) între fuzetele stânga/dreapta și brațul servomotorului cu șuruburi metrice M2.5 sau M3, verificând ca brațele de viraj să pivoteze liber, fără forțare sau frecare mecanică excesivă.

#### Etapa C: Montajul Tracțiunii & Echiparea Pneurilor de Cauciuc
1. Motorul N20 cu reductor metalic se glisează în suportul posterior al șasiului și se fixează ferm.
2. Roata de tracțiune din spate se montează pe axul în formă de D al motorului N20.
3. **Pneurile Elastice**: Elevii montează câte o bandă elastică lată de cauciuc (*rubber band*) pe canalul fiecărei roți. Profesorul explică: roata de plastic dur are un coeficient de frecare foarte mic pe parchet sau gresie și ar patina în gol; cauciucul elastic mărește aderența (*grip*) și transmite integral cuplul motorului către sol.

#### Etapa D: Montajul Bumperului Frontal & Fixarea Electronicii
1. Bara de protecție frontală (*Front Bumper*) printată 3D se montează pe botul șasiului folosind șurubul care se strânge direct în **piulița pătrată captivă** instalată la Etapa A. Strângerea se face lin, demonstrând eficiența piuliței captive: nu se învârte în gol și blochează ferm bumperul!
2. Placa de recepție radio 2.4 GHz se montează în fanta dedicată cu bandă dublu-adezivă.
3. Se conectează bateria 1S Li-Ion și se organizează cablurile pentru a nu atinge roțile în mișcare.

---

### Pasul 4: Pit Stop: Calibrare pe Banc & Reglarea Unghiurilor (15 min)

1. **Testul de Banc (Fără contact cu solul)**: Elevul ține triciclul în mână și acționează telecomanda:
   - Apăsarea butonului Înainte $\to$ roata din spate accelerează ferm;
   - Butoanele Stânga / Dreapta $\to$ roata frontală brachează sincron la unghiuri egale.
2. **Ajustarea Mecanică de Finisaj**:
   - Dacă mașina tinde să tragă într-o parte pe linie dreaptă, elevul ajustează ușor poziția brațului servomotorului pe caneluri sau strânge/slăbește cu un sfert de tură șuruburile bielei de direcție.

---

### Pasul 5: Marea Provocare: Turneul RoboRangers Agility Cup (15 min)

Profesorul deschide pista oficială de concurs:
- **Traseul**: O pistă de slalom cu 4 jaloane așezate la distanță de 80 cm, o zonă de întoarcere în ac de păr la 180° și o zonă marcată de parcare/frânare la finiș.
- **Regulament**:
  - Fiecare pilot are dreptul la 2 manșe cronometrate.
  - Lovirea sau răsturnarea unui jalon adaugă o penalizare de 2 secunde.
  - Câștigă mașina care parcurge circuitul în cel mai scurt timp, demonstrând o geometrie de viraj stabilă și o aderență impecabilă a pneurilor de cauciuc.
- **Atmosferă**: Echipele își susțin colegii de alianță cu entuziasm, analizând în timp real modul în care biela modelată de ei răspunde la manevrele rapide de eschivă.

---

### Pasul 6: Quiz Kahoot & Concluzii Inginerești (10 min)

Elevii se așază la locurile lor și deschid Kahoot:
- Se rulează cele 10 întrebări teoretice din `quiz.md`.
- Profesorul sintetizează concluziile zilei: *„Astăzi ați parcurs tot drumul unui produs industrial real: de la schița din calculator, la piesele ieșite din imprimantă, alegerea inteligentă a elementelor de fixare și asamblarea unui mecanism complet funcțional. Știți exact când să folosiți o piuliță pătrată, când să apelați la inserții calde și cum cauciucul transformă puterea unui motor în viteză pură pe circuit!”*
- Elevii deconectează bateriile, așază telecomenzile în stand și își depozitează mașinuțele în cutiile de echipă.
