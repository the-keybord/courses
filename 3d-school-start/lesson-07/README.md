# Lecția 07 [3DS2.7]: Istoria Puzzle-ului, Arta Îmbinărilor & Tabloul Puzzle 3D

---

## 📌 1. Informații Generale & Obiective de Învățare

- **Cod Lecție**: `3DS2.7`
- **Curs**: 3D School Start (Nivel 2)
- **Modul**: Modulul 1 – *Laboratorul Creativ*
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore)
- **Software Modelare**: Tinkercad Classroom
- **Software Slicing**: Bambu Studio
- **Hardware & Echipamente**:
  - Imprimante **Bambu Lab A1** (la începutul orei, în Etapa 2, se pun la imprimat **monedele de 1 Ban și monedele de 1.000.000 Lei** modelate de elevi în Lecția 06 cu filament **PLA Silk Silver / Silk Gold**, care vor fi colectate la finalul orei, în Etapa 8)
  - Câteva piese fizice de puzzle clasic (din lemn sau carton presat) aduse la clasă pentru ca elevii să le analizeze îmbinările (*tabs & blanks*) și să testeze forța de reținere
- **Proiect Practic**:
  1. **Șablonul Matriceal de Tăiere (Kerf Mesh)**: Proiectarea unui segment unitar de 20 mm cu buclă de întrepătrundere folosind unealta **Sketch** cu contur (*Stroke*) de 1 mm. Replicarea segmentului de 4 ori pentru a forma o lamă de tăiere de 80 mm. Asamblarea a 3 linii orizontale și 3 linii verticale rotite la 90° într-o grilă matriceală completă și transformarea ei în decupator (**Hole**).
  2. **Tabloul Artistic Decupat (Puzzle 4x4 din 16 Piese)**: Crearea unei plăci de bază de 80 x 80 x 2 mm, adăugarea unei compoziții artistice în relief cu unealta **Scribble** (desene, simboluri, ochelari, mesaje secrete sau texte colorate) și decuparea magică a întregului tablou dintr-un singur click cu **Group (Ctrl + G)**!
- **Noutatea Zilei**:
  - Descoperim cum a apărut primul puzzle din lume în 1766 la Londra, creat de cartograful **John Spilsbury** ca instrument didactic pentru a-i învăța geografie pe prinții regali (*Dissected Maps*).
  - Aflăm de unde provine denumirea consacrată de **jigsaw puzzle** (invenția ferăstrăului mecanic de traforaj în anii 1880).
  - Înțelegem saltul tehnologic de la piesele simple așezate una lângă alta la **îmbinările autoblocante** (*interlocking tabs & blanks*) și ștanțarea industrială din anii 1930 (*die-cutting*).
  - Învățăm rolul toleranței mecanice de tăiere (**kerf**) în inginerie și cum grosimea de 1 mm a conturului din Tinkercad le permite pieselor imprimate 3D să se desprindă și să se îmbine fără frecare excesivă.
  - Explorăm recordurile mondiale legendare ale puzzle-urilor: de la giganții de 60.000 de piese la puzzle-urile misterioase fără imagine pe cutie (*Stave Puzzles*).

### ❓ Întrebări Esențiale (Ce descoperim azi?)
1. **Cine a inventat primul puzzle din lume și cum a transformat John Spilsbury o hartă din lemn într-un joc educațional regal?**
2. **De ce primele puzzle-uri nu se îmbinau între ele și cum a schimbat ferăstrăul de traforaj mecanic (jigsaw) această industrie?**
3. **Ce înseamnă îmbinarea autoblocantă (interlocking) și de ce sunt compuse piesele din proeminențe (tabs) și lăcașuri (blanks)?**
4. **Cum funcționează ștanțarea industrială (die-cutting) și ce rol joacă fanta de tăiere (kerf) în proiectarea digitală și imprimarea 3D?**
5. **Cum putem transforma în Tinkercad un simplu desen realizat cu mâna liberă (Scribble) într-un puzzle complet funcțional cu 16 piese întrepătrunse?**

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1bp8IEz1Ak6G-7FDUj7MrvsSu2T1uIqGlKcIMLIRindI/edit?usp=sharing
- **Kahoot**: https://create.kahoot.it/details/f47b49a8-1459-4dfd-a329-b6aea23400a2
- **Alte Materiale**: https://www.tinkercad.com/things/b2dIBJj9j3M-3ds-27

---

## 📋 2. Pregătirea Lecției (Checklist Profesor)

Înainte de începerea orei, profesorul pregătește laboratorul:

### Conturi & Software
- [ ] Deschide **Tinkercad Classroom** cu codul clasei activ și asigură accesul la noile unelte vectoriale (**Sketch** și **Scribble**).
- [ ] Deschide pe proiector prezentarea teoretică despre istoria puzzle-urilor și tab-ul cu jocul **Kahoot** (din `quiz.md`).
- [ ] Are pregătite în **Bambu Studio** plăcile cu fișierele **monedelor** modelate de elevi în Lecția 06 (Moneda de 1 Ban și Moneda de 1.000.000 Lei), gata pentru lansarea imprimării la Etapa 2.

### Imprimante 3D & Materiale Didactice
- [ ] **Imprimantele Bambu Lab A1**: Plăcile PEI sunt curățate și spălate, iar bobinele de filament **PLA Silk Silver / Silk Gold** sunt alimentate în extrudoare pentru imprimarea monedelor.
- [ ] **Materiale fizice demonstrative**:
  - Câteva piese reale de puzzle clasic din carton sau lemn aduse la catedră, pentru ca elevii să observe la microscop sau cu lupa dințișorii de îmbinare și toleranța fantei de tăiere.
  - Mostră fizică imprimată 3D a tabloului puzzle (80 x 80 mm) pentru ca elevii să vadă exact cum piesele decupate cu spațiu de 1 mm se desprind ușor pe patul imprimantei.

---

## ⏱️ 3. Desfășurarea Lecției Pas cu Pas (Tabel Minute-by-Minute)

| Minut | Etapă | Ce facem? (Pe scurt) |
| :---: | :--- | :--- |
| **00 – 10 min** | **1. Bun venit & Provocarea Piesei Rătăcite** | Primirea elevilor. Profesorul le arată câteva piese de puzzle din lemn și lansează misterul modului în care o imagine întreagă poate fi împărțită în zeci de fragmente care se blochează reciproc. |
| **10 – 20 min** | **2. Pornirea Imprimării Monedelor din Lecția 06** | Lansăm la imprimat pe Bambu Lab A1 **monedele de 1 Ban și de 1.000.000 Lei** create în lecția trecută (în filament Silk PLA), care vor fi gata de ridicat la finalul orei. |
| **20 – 40 min** | **3. Teorie: Istoria Puzzle-ului, Dissected Maps, Mecanica Îmbinărilor & Kerf-ul 3D** | John Spilsbury (1766), evoluția de la traforaj manual la ștanțare die-cutting, geometria tabs & blanks, toleranța de tăiere (kerf) și recordurile mondiale. |
| **40 – 50 min** | **4. Pauză & Prezență** | 10 minute de relaxare, hidratare și socializare. Notarea prezenței în catalogul clasei. |
| **50 – 65 min** | **5. Demonstrația Profesorului în Tinkercad** | Construirea pas cu pas: segmentul unitar de 20 mm în Sketch cu buclă și Stroke 1 mm, multiplicarea x4 (80 mm), asamblarea rețelei de 3x3 linii rotite la 90°, conversia în Hole, baza de 80x80x2 mm, desenul artistic în Scribble și decuparea finală cu Group. |
| **65 – 100 min** | **6. Atelier Practic: Proiectarea Tabloului Puzzle 3D** | Fiecare elev își creează propria matrice de tăiere, desenează propria operă de artă (mesaje, personaje, emoji) și își decupează puzzle-ul 4x4 cu 16 piese. |
| **100 – 110 min** | **7. Joc Kahoot: Istoria și Secretele Puzzle-ului** | 12 întrebări interactive (din `quiz.md`) pentru consolidarea noțiunilor de istorie, mecanică a îmbinărilor și producție industrială. |
| **110 – 120 min** | **8. Colectarea Monedelor Imprimate & Fotografie de Grup** | Desprinderea monedelor de pe plăcile imprimantelor Bambu Lab A1, admirarea reliefului metalic și poza oficială de grup cu noile realizări. |

---

## 📖 4. Elaborarea Detaliată a Fiecărei Etape

---

### Etapa 1: Bun Venit & Provocarea Piesei Rătăcite (Minutele 00 – 10)
- Elevii sosesc în laborator și se instalează la stațiile de lucru.
- Profesorul ține în mână două piese mari de puzzle din lemn și începe discuția introductivă:
  - *„Ați rezolvat vreodată un puzzle de 500 sau 1.000 de piese? V-ați întrebat vreodată de ce bucățile au acei dințișori curioși și de ce stau blocate împreună fără să avem nevoie de lipici? Cine a fost prima persoană din lume care s-a gândit să taie o imagine frumoasă în bucăți mici pentru a-i pune pe alții să o refacă?”*
- Profesorul le oferă elevilor ocazia să îmbine două piese și să observe jocul milimetric dintre contururi.

---

### Etapa 2: Pornirea Imprimării Monedelor din Lecția 06 (Minutele 10 – 20)
1. **Lansarea Producției pe Bambu Lab A1**:
   - Profesorul deschide **Bambu Studio**, unde fișierele cu monedele mărite de **1 Ban** și monedele spectaculoase de **1.000.000 Lei** proiectate de elevi în Lecția 06 sunt deja așezate pe plăcile de imprimare PEI.
   - Se lansează comanda de imprimare folosind filament **PLA Silk Silver** (Argintiu Lucios) sau **PLA Silk Gold** (Auriu Lucios).
2. **Observarea Primului Strat**:
   - Elevii urmăresc mișcările capului de imprimare care trasează bordurile perfect circulare și câmpul neted al monedelor.
   - Profesorul le reamintește că piesele vor fi complet răcite și gata de colectat la sfârșitul orei, în Etapa 8.

---

### Etapa 3: Teorie – Istoria Puzzle-ului, Dissected Maps, Mecanica Îmbinărilor & Kerf-ul 3D (Minutele 20 – 40)

Profesorul prezintă slide-urile teoretice (din `presentation.md`), ghidând elevii printr-o călătorie captivantă:

#### 1. Cum a apărut primul puzzle din lume? (Londra, 1766)
- **John Spilsbury — Profesorul Regal Involuntar**:
  - În anul **1766**, la Londra, un cartograf și gravor pe nume **John Spilsbury** căuta o metodă mai atractivă de a-i învăța geografie pe elevii săi bogați, inclusiv pe copiii regelui George al III-lea al Marii Britanii.
  - Spilsbury a luat o hartă a Europei tipărită pe hârtie fină, a lipit-o cu clei pe o scândură trainică din lemn de mahon și cedru, iar apoi a decupat cu atenție fiecare țară de-a lungul granițelor ei politice.
  - Copiii trebuiau să așeze fiecare regat la locul său pentru a reconstitui continentul!
- **Hărțile Disecate (Dissected Maps)**:
  - Timp de mai bine de 100 de ani, aceste jocuri nu s-au numit „puzzle”, ci **„Dissections”** (hărți disecate sau tăiate).
  - Ele erau considerate instrumente științifice și pedagogice serioase, fiind rezervate aristocraților datorită costului ridicat al lemnului nobil tăiat manual.

#### 2. De unde vine numele de „Jigsaw Puzzle”?
- **Inventarea Ferăstrăului de Traforaj Mecanic (Anii 1880)**:
  - Inițial, meșterii tăiau scândurile manual, cu ferăstraie fine de mână (*fretsaw*), o muncă lentă și obositoare.
  - În anii 1880 a apărut ferăstrăul mecanic de traforaj acționat cu pedală de picior (asemănător unei mașini vechi de cusut), numit în limba engleză **jigsaw**.
  - Lama subțire care urca și cobora rapid permitea tăierea curbelor strânse în lemn, iar jocurile au primit numele pe care îl cunoaștem astăzi: **jigsaw puzzles**.

#### 3. Saltul la Piesele Autoblocante (Interlocking Tabs & Blanks)
- **Puzzle-urile care se destrămau**:
  - Primele hărți disecate din secolul XVIII aveau o mare problemă mecanică: **marginile pieselor erau tăiate drept sau pe linia granițelor, fără niciun sistem de blocare**. Dacă cineva atingea masa sau strănuta, întreaga hartă se împrăștia!
- **Invenția Dinte-și-Lăcaș (Tabs & Blanks)**:
  - Către sfârșitul secolului XIX, creatorii de jucării au inventat sistemul de **îmbinare mecanică autoblocantă (Interlocking)**.
  - Fiecare piesă este prevăzută cu proeminențe rotunjite numite **chei / dințișori (`Tabs` sau `Knobs`)** și decupaje corespunzătoare numite **lăcașuri (`Blanks` sau `Holes`)**.
  - Odată îmbinate două piese, forma lărgită a cheii nu mai permite separarea lor prin tragere orizontală, oferind stabilitate structurală întregului tablou.

#### 4. Revoluția Industrială & Marea Criză (Die-Cutting)
- **Ștanțarea Industrială (Die-Cutting cu Lame de Oțel)**:
  - La începutul secolului XX, lemnul scump a fost înlocuit cu **cartonul presat multistratificat**.
  - În loc să fie tăiate piesă cu piesă, fabricile au creat **matrițe uriașe de ștanțare (Die-Cutter)**: o placă masivă de lemn în care sunt bătute sute de lame de oțel ascuțite, curbate în forma pieselor de puzzle. O presă hidraulică uriașă coboară cu forța a zeci de tone și ștanțează un puzzle de 1.000 de piese **într-o singură secundă**!
- **Febra Anilor 1930**:
  - În timpul Marii Crize Economice din anii 1930, puzzle-urile din carton ieftin au devenit distracția salvatoare a planetei: se vindeau peste **10 milioane de puzzle-uri pe săptămână**, oferind zeci de ore de distracție întregii familii pentru doar câțiva cenți.

#### 5. Tehnologia Digitală, Imprimarea 3D & Noțiunea de „Kerf”
- **Ce este „Kerf”-ul (Fanta de Tăiere)?**
  - În inginerie și tâmplărie, **kerf** este lățimea materialului îndepărtat de o lamă de ferăstrău sau de un fascicul laser în timpul tăierii. Dacă tai o scândură cu o lamă de 2 mm grosime, acei 2 mm de lemn se transformă în rumeguș.
- **De ce folosim o linie de 1 mm în Tinkercad?**
  - Când imprimăm 3D piese adiacente, dacă distanța dintre ele este 0 mm, plasticul topit de duză se va suda într-un singur bloc solid!
  - Lățimea de contur de **1 mm (Stroke)** a șablonului nostru de tăiere lasă exact jocul mecanic necesar pentru ca feliatorul **Bambu Studio** să recunoască pereții despărțitori și să permită pieselor să se separe perfect după răcire.

#### 6. Recorduri Mondiale Incredibile
- **Cel mai vechi puzzle din lume**: Harta Europei creată de John Spilsbury în 1766, păstrată intactă la prestigioasa bibliotecă **British Library** din Londra.
- **Cel mai mare puzzle comercial din lume**: Jocul „What a Wonderful World” (Dowdle), cu **60.000 de piese**, măsurând 2.4 metri pe 8.8 metri și cântărind peste 45 kg!
- **Recordul Guinness pentru cel mai mare puzzle asamblat**: Peste **551.232 de piese**, asamblat de peste 1.600 de studenți în Vietnam (2011).
- **Puzzle-urile exclusiviste Stave Puzzles**: Realizate manual din lemn nobil, fără nicio imagine pe cutie, conținând „piese capcană” care se potrivesc în mai multe locuri, costând mii de dolari fiecare!

---

### Etapa 4: Pauză Scurtă & Prezență (Minutele 40 – 50)
- Pauză de 10 minute pentru relaxare, hidratare și mișcare.
- Profesorul notează prezența în catalog și verifică derularea imprimărilor pe Bambu Lab A1.

---

### Etapa 5: Demonstrația Profesorului în Tinkercad (Minutele 50 – 65)

Profesorul deschide Tinkercad pe ecranul proiectorului și demonstrează pas cu pas algoritmul geometric de tăiere a tabloului puzzle:

#### Pasul 1: Desenarea Segmentului Unitar de 20 mm cu Buclă (Unealta Sketch)
1. Selectăm unealta **Sketch** din panoul lateral dreapta și facem click pe planul de lucru.
2. În fereastra de desen 2D, trasăm o linie orizontală de la stânga la dreapta:
   - Plecăm drept pe primii 6 mm;
   - La mijloc, cotim spre dreapta/sus creând o proeminență geometrică (dințișorul / cheia de îmbinare) și revenim la linia principală;
   - Continuăm drept până la capăt, obținând un segment total de **20 mm lungime**.
3. În panoul de proprietăți al uneltei, setăm parametrul **Stroke = 1.0 mm** (acest contur creează grosimea liniei și fanta de tăiere tehnică).
4. Apăsăm pe butonul verde **Done** pentru a aduce forma 3D pe planul de lucru. Înălțimea pe axa Z o setăm la **10 mm** (ca să treacă complet prin placa de bază).

#### Pasul 2: Multiplicarea Segmentului în Linie de 80 mm (4 Segmente Continue)
1. Selectăm segmentul proaspăt creat și apăsăm **Ctrl + D** (duplicare).
2. Deplasăm copia spre dreapta cu exact **20 mm**, astfel încât capătul primului segment să se îmbine perfect cu începutul celui de-al doilea.
3. Apăsăm **Ctrl + D** încă de două ori pentru a genera segmentele 3 și 4. Avem acum o linie continuă compusă din 4 dințișori, cu o lungime totală de **80 mm**.
4. Selectăm toate cele 4 segmente și le unim într-o singură piesă solidă cu **Group (Ctrl + G)**.

#### Pasul 3: Crearea Matricei de Tăiere (Rețeaua de 3x3 Linii Decupatoare)
Pentru un puzzle de 4x4 piese pe o suprafață de 80 x 80 mm, avem nevoie de **3 linii de tăiere orizontale** și **3 linii de tăiere verticale**:
1. **Liniile Orizontale**:
   - Selectăm linia de 80 mm și o duplicăm cu **Ctrl + D**. O mutăm pe axa Y la o distanță de **20 mm**.
   - Apăsăm din nou **Ctrl + D** pentru a treia linie (la 40 mm distanță).
   - Avem acum 3 linii paralele de tăiere orizontală, așezate la cotele Y = 20 mm, Y = 40 mm și Y = 60 mm.
2. **Liniile Verticale**:
   - Selectăm toate cele 3 linii orizontale, le copiem cu **Ctrl + D** și le rotim la **90°**.
   - Poziționăm noile linii rotite astfel încât să intersecteze perpendicular liniile inițiale (la cotele X = 20 mm, X = 40 mm și X = 60 mm).
3. **Gruparea și Conversia în Decupator**:
   - Selectăm toate cele 6 linii (rețeaua completă de tăiere) și apăsăm **Group (Ctrl + G)**.
   - În fereastra de culoare a grupului, bifăm modul **Hole (Gol / Transparent)**. Am creat acum „matrița cu lame de oțel” digitală!

#### Pasul 4: Crearea Plăcii de Bază (Pânza Tabloului)
1. Tragem pe planul de lucru un cub roșu (**Box**) din Basic Shapes.
2. Îi setăm dimensiunile exacte: **Lungime = 80 mm**, **Lățime = 80 mm**, **Înălțime = 2.0 mm**.
3. Culoare recomandată: roșu intens, albastru regal sau verde crud.

#### Pasul 5: Desenarea Graficii Artistice pe Suprafață (Unealta Scribble)
1. Selectăm unealta **Scribble** din panoul Basic Shapes și facem click deasupra plăcii de bază.
2. În fereastra de desen liber cu creionul digital, fiecare elev își creează propria compoziție:
   - Un cuvânt sau un salut (ex. *„HELLO”*, numele propriu sau inițialele);
   - Ochelari amuzanți, mustață, ochi de pisică, o stea sau o inimă;
   - Un desen liber stilizat cu linii continue și clare.
3. Apăsăm **Done**. Setăm înălțimea desenului la **3.5 – 4.0 mm** (astfel încât relieful desenat să iasă în evidență cu 1.5 – 2.0 mm deasupra plăcii de bază de 2 mm).
4. Îi atribuim desenului o culoare contrastantă vie (de exemplu, bleu deschis peste roșu sau galben peste albastru).

#### Pasul 6: Decuparea Magică a Puzzle-ului (Transformarea în 16 Piese)
1. Selectăm placa roșie și desenul artistic și le centrăm cu unealta **Align (L)**.
2. Tragem grila matriceală **Hole** creată la Pasul 3 deasupra plăcii cu desen și folosim **Align (L)** pentru a le centra perfect pe axele X și Y.
3. Verificăm din vedere laterală ca grila transparentă să pătrundă complet prin întreaga grosime a tabloului.
4. Selectăm tot ansamblul (Placă + Desen Scribble + Grilă Hole) și apăsăm comanda magică: **Group (Ctrl + G)**!
5. *Efect vizual garantat*: Dintr-o singură fracțiune de secundă, pânza continuă se divide în **16 piese individuale perfecte (4x4)**, fiecare piesă având contururi autoblocante și păstrând fragmentul său din desenul original!

---

### Etapa 6: Atelier Practic – Proiectarea Tabloului Puzzle 3D (Minutele 65 – 100)
- Elevii deschid proiecte noi în conturile lor de Tinkercad Classroom, denumite: `Nume_Puzzle_3D`.
- Fiecare copil parcurge cele două mari faze de lucru:
  1. **Faza Tehnică**: Desenarea segmentului în Sketch, asigurarea conturului de 1 mm, multiplicarea x4 și obținerea grilei matriceale 4x4 transformate în Hole.
  2. **Faza Creativă**: Turnarea plăcii de 80 x 80 mm și desenarea compoziției artistice proprii folosind Scribble, Text sau simboluri combinate.
- **Misiune Bonus (Pentru elevii rapizi)**:
  - *Rama de Suport (Tava de Puzzle)*: Proiectarea unei tăvițe dreptunghiulare exterioare (`84 x 84 mm`, bază de 1.2 mm și bordură înălțată de 3.5 mm) în care puzzle-ul asamblat să poată sta fixat pe birou!

---

### Etapa 7: Joc Kahoot – Istoria și Secretele Puzzle-ului (Minutele 100 – 110)
- Elevii accesează platforma Kahoot folosind PIN-ul afișat de profesor pe ecran.
- Se parcurg cele 12 întrebări interactive din fișierul `quiz.md`.
- Întrebările testează strict conceptele teoretice: rolul educativ al lui John Spilsbury, originea numelui jigsaw, mecanica tabs & blanks, invenția ștanțării die-cutting și rolul fantei de tăiere (kerf).

---

### Etapa 8: Colectarea Monedelor Imprimate & Fotografie de Grup (Minutele 110 – 120)
- Profesorul oprește imprimantele **Bambu Lab A1** și lasă plăcile PEI să se răcească un minut.
- Elevii se apropie de imprimante și își desprind cu mândrie **Monedele de 1 Ban mărite** și **Monedele spectaculoase de 1.000.000 Lei** imprimate în filament strălucitor Silk PLA.
- Profesorul colectează fișierele noilor tablouri puzzle din Tinkercad Classroom pentru a le pregăti de feliere în Bambu Studio pentru lecția următoare.
- Întreaga grupă se adună la tablă cu monedele în palmă pentru fotografia oficială a lecției!

