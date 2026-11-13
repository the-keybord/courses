# Lecția 11 [RBF1.11]: De la Pixel la Plastic: Felierea în Bambu Studio, Printarea 3D a Pieselor Custom, Asamblarea Mecanică și RoboRangers Agility Cup

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF1.11
- **Modul**: Fabricație Digitală, Asamblare Mecanică & Validare Dinamică
- **Vârsta Țintă**: 11 – 14 ani (Nivelul 1 – Începători / Intermediari)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune aplicată de tranziție de la spațiul virtual CAD la realitatea fizică de laborator. În prima parte, elevii exportă geometria pieselor modelate în Lecția 10 (biela de direcție Steering Tie-Rod și bara de protecție frontală Front Bumper) din Onshape în format industrial modern 3MF, descoperind software-ul de feliere Bambu Studio. Mentorul explică fenomenele fizice ale fabricației aditive FDM: anizotropia mecanică a pieselor (de ce rezistența la forfecare depinde de orientarea straturilor), tiparele de umplere (infill Gyroid pentru absorbția șocurilor vs Grid casant) și optimizarea pereților perimetrici. În a doua parte, cursanții trec la bancul de lucru fizic: montează biela printată pe fuzetele frontale și brațul servomotorului cu șuruburi metrice M2/M3, centrează unghiul neutru de 90° al servomotorului, montează bumperul personalizat cu numele robotului și echipează roțile cu benzi de cauciuc (rubber bands) pentru aderență. Sesiunea culminează cu un Kahoot teoretic și marea competiție RoboRangers Agility Cup (traseu cronometrat de îndemânare și slalom).

### Întrebări Esențiale:
1. De ce o piesă printată 3D nu are aceeași rezistență mecanică în toate direcțiile (fenomenul de anizotropie) și cum influențează orientarea pe patul de printare rezistența bielei de direcție?
2. Ce rol are un software de feliere (slicer) precum Bambu Studio și cum transformă el un volum 3D vectorial într-un cod de instrucțiuni de mișcare (G-code) pentru duza imprimantei?
3. De ce este modelul de infill Gyroid superior modelului Grid atunci când fabricăm o bară de protecție frontală (bumper) expusă la coliziuni repetate?
4. Cum funcționează centrarea mecanică a unui servomotor (servo horn centering la 90°) înainte de fixarea definitivă a timoneriei de direcție?
5. De ce roțile din plastic neted au nevoie de benzi de cauciuc (rubber bands) și cum influențează coeficientul de frecare tracțiunea și controlul virajului pe podea?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/
- **Bambu Studio Official Guide**: https://bambulab.com/en/download/studio

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Echipamente Digitale
- [ ] Bambu Studio instalat și configurat pe stațiile elevilor sau pe laptopul de catedră cu profilurile imprimantelor din clasă (Bambu Lab A1 / A1 Combo / A2L).
- [ ] Proiectul Onshape al profesorului pregătit cu piesele Lecției 10 gata pentru demonstrația live de export.
- [ ] Prezentarea teoretică deschisă pe videoproiector conform `presentation_interactive.md`.
- [ ] Quiz-ul Kahoot de 10 întrebări teoretice pregătit într-un tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Șasiurile fizice ale triciclurilor RC (cu motorul N20, roțile din spate, servomotorul frontal, placa de control 2.4 GHz și suportul de baterie deja fixate).
- [ ] Un set complet de biele de direcție și bumpere frontale pre-printate 3D din filament PLA în culorile alianțelor (pentru a garanta că toți elevii au piese fizice gata de montaj chiar dacă printarea din timpul orei este în curs pe imprimantele din laborator).
- [ ] Tavă magnetică de feronerie la fiecare banc: șuruburi metrice M2 x 8 mm, M2.5 sau M3 x 10 mm pentru pivotare, șurubelnițe de precizie, piulițe metrice.
- [ ] Benzi elastice late de cauciuc (rubber bands) pentru jantele roților.
- [ ] Baterii Li-Ion încărcate și telecomenzi radio 2.4 GHz împerecheate (paired remotes) cu etichetele fiecărui elev.
- [ ] 6 jaloane / conuri de cauciuc sau obstacole printate 3D pentru amenajarea pistei de concurs RoboRangers Agility Cup pe podeaua clasei.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Deschiderea & Inspectarea Pieselor Digitale** | Verificarea proiectelor Onshape din Lecția 10. Prezentarea misiunii zilei: materializarea pieselor 3D în plastic real și asamblarea completă a bolidului mecanic. |
| **00:15 – 00:35** | **2. Teorie Inginerească: Bambu Studio & Secretele Felierii** | Prezentarea interactivă la proiector: anizotropia straturilor, orientarea pieselor pe pat, infill Gyroid vs Grid, pereți solizi (wall loops) și multi-color print cu AMS. |
| **00:35 – 00:55** | **3. Laborator CAM: Export Onshape & Feliere în Bambu Studio** | Elevii exportă fișierele 3MF din Onshape, le importă în Bambu Studio, aleg nuanțele alianței, configurează parametrii structurali și analizează previzualizarea straturilor (preview slider). |
| **00:55 – 01:30** | **4. Atelier Mecanic: Asamblarea Fizică a Direcției & Bumperului** | Elevii primesc kitul fizic: montarea bielei de virare pe fuzete și servo horn cu șuruburi metrice, centrarea electrică la 90°, montarea bumperului și aplicarea benzilor de cauciuc pe roți. |
| **01:30 – 01:45** | **5. Teste pe Banc & Pit Stop Calibrare** | Alimentarea receptorului 2.4 GHz, testarea telecomenzii, ajustarea mecanică a unghiului de fugă și a jocurilor din articulații pentru a asigura deplasare dreaptă fără blocaje. |
| **01:45 – 01:55** | **6. Marea Provocare: RoboRangers Agility Cup** | Cursă cronometrată pe circuitul cu jaloane din sală: slalom printre obstacole, întoarcere la 180° și frânare de precizie în perimetrul de finiș. |
| **01:55 – 02:00** | **7. Quiz Kahoot & Încheiere** | Evaluare interactivă de 10 întrebări axate strict pe teoria inginerească (conform `quiz.md`) și strângerea uneltelor la banc. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Deschiderea & Inspectarea Pieselor Digitale (15 min)
Profesorul deschide sesiunea așezând pe masa de catedră un șasiu fizic de triciclu RC fără bielă și fără bumper, alături de o piesă fizică printată 3D în culori vii. 

Profesorul lansează provocarea:
*"Până acum, mașina voastră a existat în două lumi separate: componentele electronice fizice care se învârteau pe banc în Lecția 08 și modelul 3D din Onshape în care ați rezolvat virajul în Lecția 10. Astăzi unim cele două lumi. Trecem de la pixel la plastic. Vom învăța cum gândește un inginer de producție când trimite o piesă către imprimantele Bambu Lab și vom asambla mașinuța completă pentru a concura pe pista de testare."*

Elevii deschid computerele, accesează spațiul Onshape din Lecția 10 și localizează cele două piese modelate de ei:
1. `Steering Tie-Rod` (biela de virare cu 3 ochiuri de pivotare).
2. `Front Bumper` (bara frontală de protecție cu numele robotului).

---

### Pasul 2: Teorie Inginerească: Bambu Studio & Secretele Felierii (20 min)
Se rulează prezentarea interactivă la ecran conform `presentation_interactive.md`. Elevii citesc pe rând propozițiile numerotate, iar profesorul ancorează conceptele prin demonstrații practice.

**1. Ce este un Slicer și de ce nu putem trimite direct fișierul CAD la imprimantă?**
O imprimantă 3D nu înțelege concepte geometrice abstracte precum "cilindru" sau "spline". Ea înțelege doar mișcări pe coordonate carteziene (X, Y, Z), viteze de avans și temperaturi ale duzei (nozzle). Slicer-ul (Bambu Studio) acționează ca un translator: taie volumul 3D în felii orizontale microscopice (de obicei de 0.20 mm grosime) și generează fișierul de instrucțiuni G-code.

**2. Anizotropia și Orientarea Straturilor:**
Profesorul arată clasei o bucată de lemn sau un biscuit stratificat:
- Dacă forța acționează paralel cu straturile, piesa se poate desprinde ușor de-a lungul îmbinării dintre firele de plastic (delaminare).
- Dacă forța acționează perpendicular pe straturi, piesa este extrem de rezistentă.
- Pentru biela de direcție, piesa trebuie orientată obligatoriu perfect plată pe patul de printare. În această poziție, fiecare fir de plastic este continuu de la ochiul stâng la ochiul drept, oferind rezistență maximă la tracțiune și compresiune atunci când servomotorul brachează roțile.

**3. Infill Gyroid vs Infill Grid:**
Profesorul explică de ce barele de protecție (bumperele) nu sunt printate 100% solide (ar fi prea grele și rigide) și nici cu infill simplu Grid:
- Infill-ul Grid are linii care se intersectează pe același plan, fiind rigid pe verticală, dar casant la impact frontal.
- Infill-ul Gyroid este o structură ondulată tridimensională inspirată din natură (suprafețe minime periodice). El distribuie șocul mecanic în toate direcțiile, funcționând ca o zonă controlată de deformare (crumple zone), exact ca bara de protecție a unei mașini reale.

---

### Pasul 3: Laborator CAM: Export Onshape & Feliere în Bambu Studio (20 min)
Profesorul demonstrează fluxul de lucru pe ecranul mare, iar elevii execută sincron pe calculatoarele lor:

1. **Exportul din Onshape**:
   - În tab-ul Part Studio sau Assembly, click dreapta pe piesa `Steering Tie-Rod` din arborele de piese din stânga.
   - Selectați `Export...`.
   - În fereastra de export, alegeți setările optime:
     - Format: `3MF` (format modern care păstrează unitățile de măsură și orientarea fără erori de scalare).
     - Units: `Millimeter`.
     - Resolution: `Fine`.
   - Salvați fișierul pe desktop sau în folderul personal de descărcări.
   - Repetați aceeași procedură pentru piesa `Front Bumper`.

2. **Importul și Felierea în Bambu Studio**:
   - Deschideți programul **Bambu Studio**.
   - Trageți fișierele `.3mf` pe suprafața patului virtual de printare.
   - Utilizați comanda `Auto-Orient` sau verificați vizual ca biela să stea culcată pe fața mare.
   - În panoul din stânga (Global Settings):
     - Preset calitate: `0.20mm Standard`.
     - Infill Density: `20%`.
     - Infill Pattern: `Gyroid`.
     - Wall loops: setați la `3` (pentru a asigura pereți groși în jurul găurilor de șurub).
   - Apăsați butonul verde din colțul din dreapta-sus: `Slice plate`.
   - Explorați glisorul vertical de straturi (Layer slider) pentru a privi interiorul piesei și structura Gyroid generată.

---

### Pasul 4: Atelier Mecanic: Asamblarea Fizică a Direcției & Bumperului (35 min)
Elevii își aduc șasiul triciclului pe bancul de lucru și primesc piesele printate (biela de virare și bumperul corespunzător alianței lor).

**Etapa 1: Centrarea Servomotorului (Servo Horn Centering)**
> [!IMPORTANT]
> Înainte de a fixa biela cu șuruburi, servomotorul trebuie centrat electric. Dacă brațul este montat strâmb pe caneluri, mașina va vira puternic într-o singură direcție și va bloca motorul.
1. Porniți comutatorul de alimentare al receptorului 2.4 GHz timp de 3 secunde fără a atinge volanul/butoanele de viraj de pe telecomandă. Servomotorul va sări automat în poziția neutră de 90°.
2. Opriți alimentarea.
3. Așezați brațul de plastic alb al servomotorului (servo horn) astfel încât să stea orientat perfect înainte, perpendicular pe carcasă.
4. Strângeți șurubelul central de fixare pe axul canelat.

**Etapa 2: Montarea Bielei de Direcție (Steering Tie-Rod)**
1. Așezați biela peste cele 3 puncte de conexiune: pivotul fuzetei stângi, brațul servomotorului și pivotul fuzetei drepte.
2. Introduceți șuruburile metrice M2 de sus în jos.
3. Înșurubați ușor până când capul șurubului atinge plasticul, apoi deșurubați o jumătate de tură: biela trebuie să poată glisa liber stânga-dreapta fără forțare și fără joc excesiv.

**Etapa 3: Fixarea Bumperului Frontal & a Pneurilor de Cauciuc**
1. Montați bara frontală de protecție pe botul șasiului folosind cele două șuruburi M3 prevăzute în proiect.
2. Luați benzile elastice de cauciuc (rubber bands) și aplicați-le pe șanțul exterior al celor două roți frontale și al roții mari posterioare de tracțiune.

---

### Pasul 5: Teste pe Banc & Pit Stop Calibrare (15 min)
Elevii așază mașina cu roțile suspendate în aer pentru primul test dinamic:
1. Porniți telecomanda și receptorul.
2. Apăsați butonul de viraj stânga: verificați dacă ambele roți din față virează sincron spre stânga.
3. Apăsați butonul de viraj dreapta: verificați dacă roțile virează sincron spre dreapta.
4. Eliberați butoanele: roțile trebuie să revină perfect paralele cu șasiul. Dacă deviază, ajustați mecanic poziția bielei sau rearanjați servo horn-ul pe canelura alăturată.
5. Testați motorul spate N20: asigurați-vă că roata mare se învârte în sensul corect de mers înainte.

---

### Pasul 6: Marea Provocare: RoboRangers Agility Cup (10 min)
Profesorul amenajează pe podeaua laboratorului un circuit de slalom marcat cu 4 conuri distanțate la 80 cm, o zonă de întoarcere în ac de păr și o casetă de garare finală (Stop Box).

**Regulamentul Competiției:**
- Fiecare cursant are la dispoziție 2 manșe cronometrate.
- Traseu: Start -> Slalom printre cele 4 conuri -> Ocolirea jalonului roșu la 180° -> Accelerare pe linia dreaptă -> Frânare completă în interiorul casetei de oprire.
- Penalizări: Răsturnarea unui jalon adaugă +2 secunde la timpul final. Atingerea peretelui cu bumperul fără oprirea mașinii nu este penalizată (validând robustețea bumperului proiectat).
- Cronometrul este afișat pe ecranul mare, iar timpii sunt notați în clasamentul alianțelor.

---

### Pasul 7: Quiz Kahoot & Încheiere (5 min)
Elevii scanează codul QR de pe videoproiector și participă la testul de 10 întrebări teoretice (conform `quiz.md`). Întrebările validează exclusiv conceptele inginerești studiate (anizotropie, infill Gyroid, rolul slicer-ului, centrarea servomotoarelor, coeficientul de frecare).

La final, elevii opresc alimentarea receptoarelor, depozitează telecomenzile în cutiile alianței și curăță bancurile de lucru. Mașinile complet funcționale rămân în flota de laborator gata pentru marea arenă finală.
