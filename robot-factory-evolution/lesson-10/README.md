# Lecția 10 [RBF2.10]: Tranziția la Cloud CAD: Înrolarea în Onshape, Arhitectura Documentelor & Marea Asamblare a Geamănului Digital RF 2.0 (Mates & Standard Content Fasteners)

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.10
- **Modul**: CAD Parametric în Cloud, Digital Twin & Inginerie Mecanică
- **Vârsta Țintă**: 11 – 15 ani (Nivelul 2 – Evolution)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Lecția debutează cu un showroom interactiv al Alianțelor Cromatice (`roboRangers`), în cadrul căruia fiecare echipă își prezintă tema pentru acasă: logo-ul oficial de echipă desenat în nuanța `#HEX` stabilită în Lecția 09. În continuare, cursul marchează o tranziție tehnologică majoră: trecerea de la mediul desktop Autodesk Fusion 360 (utilizat în sezonul anterior) la platforma profesională Cloud-Native **Onshape**. Elevii își creează conturi educaționale gratuite și învață de ce marile echipe de inginerie migrează spre CAD în browser (colaborare simultană multi-user, randare WebGL în cloud și eliminarea pierderilor de fișiere). Profesorul demonstrează arhitectura nativă a unui Document Onshape (`Part Studio` vs `Assembly`, `Mate Connectors`, istoricul de versiuni). Marea provocare a zilei constă în deschiderea documentului-șablon master care conține prototipul RF 2.0 complet dezasamblat, cu o regulă inginerească strictă: **documentul nu conține niciun șurub pre-desenat**. Elevii trebuie să ancoreze șasiul prin comanda `Fix`, să exploreze biblioteca de componente standard Onshape (`Standard content`), să identifice șuruburile metrice M3 potrivite (lungimi de 8 mm, 10 mm și 30 mm, piulițe M3) și să asambleze complet geamănul digital (Digital Twin) al robotului propriu folosind conexiuni `Fastened Mate`. Sesiunea se încheie cu crearea versiunii oficiale de reper (`Create Version`) și cu un quiz Kahoot teoretic.
- **Proiect Practic**:
  1. **Showroom-ul Alianțelor Cromatice**: Prezentarea logo-ului oficial creat pentru acasă în culoarea alianței și validarea identității vizuale a echipei.
  2. **Înrolarea în Onshape**: Crearea/autentificarea în contul gratuit Onshape for Education și copierea șablonului master al robotului RF 2.0 în propriul workspace (`Copy workspace`).
  3. **Ancorarea Mecanică (`Fix`)**: Setarea șasiului principal printat 3D ca punct de referință imobil în spațiul tridimensional.
  4. **Căutarea Feroneriei Metrice (`Standard content`)**: Identificarea, configurarea și inserarea manuală a șuruburilor metrice M3 (M3 x 30 mm pentru motoarele TT, M3 x 8 mm și M3 x 10 mm pentru ecranul ESP32, suportul bateriei 18650, bracketul ultrasonic și roata castor) și a piulițelor M3.
  5. **Marea Asamblare Mecanică**: Îmbinarea precisă a tuturor componentelor și șuruburilor în tab-ul `Assembly 1` utilizând exclusiv conexiuni cinematice `Fastened Mate`, alinierea axelor și orientarea conectorilor magnetici (`Mate Connectors`).
  6. **Versionarea Proiectului**: Crearea primului punct de reper oficial în arborele de versiuni Onshape (`V1.0 - RF2 Digital Twin Assembled`).

### Întrebări Esențiale:
1. De ce companiile moderne de robotică și inginerie spațială migrează de la programe CAD instalate local pe computer (precum Fusion 360 sau SolidWorks) către platforme Cloud CAD native în browser precum Onshape?
2. Care este diferența arhitecturală fundamentală dintre un tab de tip **Part Studio** (unde modelăm piese în context geometric) și un tab de tip **Assembly** (unde construim mecanisme cu grade de libertate)?
3. Cum funcționează un **Mate Connector** în Onshape și de ce o singură conexiune inteligentă (de exemplu `Fastened Mate`) înlocuiește sistemele tradiționale învechite care cereau 3 constrângeri separate (Mate, Flush, Offset)?
4. De ce inginerii nu desenează manual șuruburile și piulițele ca piese individuale în Part Studio, ci apelează direct la biblioteca digitală de componente standardizate (`Standard content` ISO/DIN/ASME)?
5. Ce se întâmplă într-un ansamblu mecanic dacă uităm să ancorăm piesa de bază prin comanda `Fix` înainte de a începe plasarea conexiunilor `Mate`?

### 🔗 Resurse & Linkuri Utile
- **Platforma Onshape (Autentificare & Înregistrare Educațională)**: https://cad.onshape.com/
- **Ghid Oficial Onshape - Fastened Mates & Assemblies**: https://learn.onshape.com/
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Configurare Digitală
- [ ] Conexiunea la internet a laboratorului verificată (Onshape rulează direct în browserul Google Chrome sau Microsoft Edge; nu necesită instalare pe stațiile de lucru).
- [ ] Ghidul de înregistrare Onshape for Education proiectat pe ecran pentru elevii care nu au cont activat.
- [ ] Documentul-șablon Master Onshape creat, verificat și setat cu drepturi de vizualizare/copiere (`Public` sau partajat cu clasa prin link de tip `Copy workspace`).
- [ ] Tab-ul `Assembly 1` din documentul-șablon conține toate piesele robotului RF 2.0 împrăștiate în spațiu (șasiu principal, cele 2 motoare TT cu reductor galbene, cele 2 roți de tracțiune, roata castor frontală, placa de extensie ESP32, suportul modular de baterie 18650, suportul frontal pentru senzorul ultrasonic `HC-SR04`), **fără niciun șurub pre-introdus**.
- [ ] Proiectorul pregătit pentru demonstrația tehnică la ecran mare.
- [ ] Quiz-ul Kahoot de verificare teoretică pregătit în tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Un robot fizic RF 2.0 complet asamblat adus la catedră ca model de referință tactilă și vizuală, permițând elevilor să verifice cu ochii lor poziția fizică a fiecărui element.
- [ ] O tavă magnetică sau o cutie compartimentată cu mostre fizice de feronerie mecanică: șuruburi metrice M3 cu cap cilindric și locaș hexagonal (`socket head`) de 8 mm, 10 mm, 30 mm și piulițe metrice M3.
- [ ] Un șubler digital la catedră pentru a demonstra cum se măsoară diametrul exterior al filetului (3.0 mm) și lungimea tijei filetate a fiecărui șurub.

---

### 🛠️ Protocolul Tehnic pentru Profesor: Pregătirea Documentului Șablon în Onshape

Pentru a asigura o experiență de lucru fluidă și fără blocaje, profesorul parcurge următorii pași în propriul cont Onshape înainte de oră:

1. **Crearea Documentului Master**:
   - Apăsați butonul albastru `Create` -> `Document`.
   - Numiți documentul: `RBF2_RF2_Chassis_Assembly_Template`.
2. **Importul Fișierelor 3D ale Robotului RF 2.0**:
   - Apăsați butonul `+` din colțul din stânga-jos al barei de tab-uri și alegeți `Import...`.
   - Încărcați fișierele `.STEP` sau `.STL` ale robotului RF 2.0:
     - `Chassis_Main_Plate.step` (șasiul principal)
     - `TT_Gearmotor.step` (motorul de tracțiune)
     - `Drive_Wheel.step` (roata cu bandă de cauciuc)
     - `Front_Caster_Ball.step` (roata de sprijin omnidirecțională)
     - `ESP32_Shield_Board.step` (placa violet de extensie)
     - `Battery_Holder_18650.step` (leagănul proiectat în Lecția 02)
     - `Ultrasonic_Bracket_HCSR04.step` (suportul frontal de senzor)
3. **Pregătirea Spațiului de Asamblare (`Assembly 1`)**:
   - Comutați pe tab-ul inferior `Assembly 1`.
   - Apăsați `Insert` din bara de unelte superioară.
   - Introduceți în scenă: 1 x șasiu, 2 x motoare TT, 2 x roți, 1 x roată castor, 1 x placă ESP32, 1 x suport baterie, 1 x suport ultrasonic.
   - Trageți piesele cu mouse-ul la distanțe generoase una de cealaltă în spațiul 3D, astfel încât toate fețele de prindere și găurile să fie vizibile (aspect de schemă dezasamblată / exploded view).
   - **Nu introduceți niciun șurub din Standard content!** Aceasta este sarcina tehnică pe care o vor rezolva elevii.
4. **Partajarea Documentului**:
   - Asigurați-vă că documentul este setat pe `Public` sau distribuiți link-ul direct către clasă, explicându-le cum să apese pe butonul `Make a copy` din bara superioară Onshape.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Showroom-ul Alianțelor & Prezentarea Logourilor** | Fiecare alianță cromatică (`roboRangers`) își prezintă logo-ul oficial desenat în culoarea alianței (`#HEX`) ca temă pentru acasă. Evaluarea vizuală a identității de echipă. |
| **00:15 – 00:35** | **2. Înrolarea în Onshape & Revoluția Cloud CAD** | Crearea conturilor gratuite Onshape for Education. Analiză comparativă: Onshape vs. Autodesk Fusion 360 (cloud computing, WebGL, cooperare simultană, fără fișiere pierdute). |
| **00:35 – 00:50** | **3. Anatomia unui Document Onshape** | Explorarea interfeței: conceptul de container multifuncțional (Document), diferența structurală dintre `Part Studio` și `Assembly`, sistemul de navigație 3D și tastele rapide (`F`, `M`). |
| **00:50 – 01:10** | **4. Demonstrația Mentorului: `Fix`, `Fastened Mate` & `Standard Content`** | Profesorul arată de ce ancorăm șasiul (`Fix`), cum poziționăm magneții de asamblare (`Mate Connectors`), cum inversăm axele și cum căutăm șuruburile metrice M3 în biblioteca standard. |
| **01:10 – 01:45** | **5. Atelier Practic Individual: Marea Asamblare a Geamănului Digital** | Elevii își copiază șablonul în propriul cont, ancorează șasiul, identifică și adaugă șuruburile M3 de 8 mm, 10 mm și 30 mm, și asamblează complet robotul RF 2.0. |
| **01:45 – 01:55** | **6. Quiz Kahoot Interactiv** | 10 întrebări de sinteză teoretică privind Cloud CAD, diferențele Onshape vs Fusion, tipurile de Mates și standardul șuruburilor metrice M3 (conform `quiz.md`). |
| **01:55 – 02:00** | **7. Versionare (`Create Version`) & Încheiere** | Salvarea primului punct de reper de inginerie (`V1.0 - RF2 Assembled`), curățarea bancurilor de lucru și anunțarea etapei următoare de proiectare personalizată. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Showroom-ul Alianțelor Cromatice & Verificarea Temei (15 min)

Lecția începe într-o atmosferă antrenantă, celebrând rezultatele primei teme de branding a noului sezon. În Lecția 09, elevii au format echipele oficiale `roboRangers`, au ales câte o nuanță unică din catalogul celor 30 de Alianțe Cromatice (`Hue Alliances`) și au primit misiunea de a concepe un logo digital sau pe hârtie care să reprezinte identitatea mașinilor lor.

Profesorul invită reprezentanții fiecărei echipe (în mod special rolul **Vanguard Ranger**, responsabilul de identitate vizuală și strategie) să prezinte creația la ecranul mare sau pe masa centrală:
- **Verificarea Respectării Nuanței**: Se analizează dacă sigla folosește cu fidelitate codul de culoare `#HEX` stabilit (de exemplu, roșu stacojiu `#FF2400` pentru *Scarlet Alliance*, verde mentă `#3EB489` pentru *Mint Alliance* sau cyan electric `#00E5FF` pentru *Cyan Alliance*).
- **Simbolismul Mecatronic**: Elevii explică pe scurt elementele integrate în logo (roți dințate, fulgere de mare viteză, circuite electronice, trasee orbitale specifice competiției *Orbit Odyssey*).
- **Legătura cu Robotul Real**: Fiecare membru reamintește numele individual al robotului său (*Viper*, *Nova*, *Bolt*, *Shadow*, *Pulse*), validând formatul oficial setat în codul Bluetooth: `"Culoare_NumeRobot"`.

Profesorul felicită echipele și anunță marea surpriză a zilei:
*„Până acum am lucrat cu circuite reale, am lipit comutatoare, am cablat pini și am auzit buzzer-ul cântând prin Bluetooth. Astăzi însă, mașinile noastre trec într-o nouă dimensiune: **spațiul digital**. Anul trecut am folosit Autodesk Fusion 360 instalat pe calculatoarele din clasă. Astăzi facem un salt uriaș de maturitate inginerească: trecem pe **Onshape**, cel mai avansat sistem de proiectare mecanică din lume care rulează 100% în Cloud, direct în browser!”*

---

### Pasul 2: Înrolarea în Onshape & De Ce Trecem de la Fusion 360 la Cloud CAD? (20 min)

Profesorul ghidează întreaga clasă prin procesul de creare a conturilor educaționale gratuite pe platforma [Onshape](https://cad.onshape.com/):
1. Elevii accesează pagina dedicată studenților (`onshape.com/en/education`).
2. Completează datele de înregistrare (nume, prenume, adresa de email personală, statutul de elev/student).
3. Confirmă emailul de activare și își setează parola de acces.
4. Se loghează pe interfața principală Onshape Documents.

În timp ce conturile sunt activate, profesorul explică la tablă și pe proiector motivele inginerești fundamentale ale acestei tranziții, comparând direct experiența din anul precedent cu noul flux de lucru:

#### Comparație Tehnologică Aprofundată: Autodesk Fusion 360 vs. Onshape

| Criteriu de Inginerie | Autodesk Fusion 360 (Desktop CAD) | Onshape (Pure Cloud CAD) |
| :--- | :--- | :--- |
| **Arhitectură & Rulare** | Aplicație grea (heavy desktop client), instalată pe hard disk-ul local. Necesită resurse puternice de procesor și placă video dedicată. | **100% Cloud-Native**. Rulează direct în browser prin tehnologia WebGL. Modelele 3D sunt procesate pe servere masive din cloud; laptopul doar afișează imaginea. |
| **Dependența de Hardware** | Calculatoarele mai lente se blochează, se supraîncălzesc sau au întârzieri mari (lag) la rotirea scenelor complexe. | Rulează impecabil pe orice dispozitiv: PC, Mac, Chromebook, laptopuri ultra-subțiri și chiar pe tablete. |
| **Actualizări de Software** | La fiecare câteva săptămâni, deschiderea programului este blocată de actualizări de 1–2 GB care consumă timpul de curs. | **Zero instalări, zero update-uri**. Toată lumea folosește întotdeauna cea mai recentă versiune fără nicio întrerupere. |
| **Salvarea Datelor & Risc de Pierdere** | Dacă se oprește curentul sau se blochează programul înainte de `Ctrl + S`, munca din ultimele 20 de minute este pierdută. | **Salvare continuă la nivel de milisecundă**. Fiecare clic, linie sau modificare este înregistrată instantaneu în cloud. Butonul „Save” nici măcar nu există! |
| **Colaborare în Echipă** | Un singur om poate lucra la un fișier o dată; deschiderea aceluiași proiect de către alt coleg generează avertismente de fișier blocat (*Read-Only*). | **Colaborare simultană tip Google Docs**. Mai mulți ingineri din aceeași alianță pot edita același ansamblu în timp real, văzându-și reciproc cursoarele colorate. |
| **Istoric & Versionare** | Fișiere salvate manual cu nume improvizate (`Robot_Final`, `Robot_Final_v2_bun`). | **Control de versiune integrat (Git-like)**: arbore de ramuri (*Branches*), puncte de reper oficiale (*Milestone Versions*) și posibilitatea de a reveni la orice secundă din trecut. |

Profesorul sintetizează:
*„În ingineria spațială și industrială modernă, nu mai stăm legați de un singur computer fizic din laborator. Dacă plecați acasă, deschideți orice browser, vă logați pe Onshape și aveți robotul exact în starea în care l-ați lăsat în clasă, fără să cărați fișiere pe stick-uri USB!”*

---

### Pasul 3: Anatomia unui Document Onshape — Part Studio vs. Assembly (15 min)

Profesorul deschide un document Onshape nou și explică organizarea interfeței de lucru. Spre deosebire de programele clasice unde fiecare piesă reprezintă un fișier `.ipt` sau `.f3d` separat salvat într-un folder pe disc, în Onshape unitatea fundamentală de organizare se numește **Document**.

Un **Document Onshape** funcționează ca un dosar digital inteligent (container) care include pe bara inferioară mai multe tab-uri specializate:

#### 1. Atelierul de Piese: `Part Studio`
- Este spațiul de modelare geometrică pură.
- Aici folosim unelte parametrice: schițe 2D (`Sketch`), extrudare (`Extrude`), rotație (`Revolve`), rotunjiri (`Fillet`) și racordări (`Chamfer`).
- **Marea Putere Onshape: Proiectarea Multi-Part**: În același Part Studio putem desena mai multe corpuri solide deodată, bazându-ne pe aceeași schiță de bază (*Top-Down Design*). De pildă, putem modela șasiul și suportul de baterie împreună, asigurându-ne că distanța dintre găurile de șurub se potrivește milimetric din start.

#### 2. Linia de Montaj: `Assembly`
- Este spațiul mecanic unde aducem piese modelate anterior și le asamblăm așa cum le-am îmbina cu mâinile pe bancul de lucru din atelier.
- În Assembly nu desenăm schițe și nu extrudăm plastic. Aici stabilim **relații de mișcare și fixare** numite **Mates**.
- Fiecare piesă adusă în Assembly beneficiază inițial de toate cele **6 grade de libertate (6 DOF — Degrees of Freedom)**: 3 translații de-a lungul axelor X, Y, Z și 3 rotații în jurul lor.
- Rolul inginerului este să aplice conexiuni matematice care blochează sau eliberează exact gradele de libertate dorite.

#### 3. Navigarea Corectă în Spațiul 3D
Profesorul solicită fiecărui elev să deschidă un spațiu 3D și să exerseze controalele esențiale cu mouse-ul:
- **Rotirea Vizualizării (Orbit)**: Click-Dreapta apăsat + tragere cu mouse-ul.
- **Translația Plană (Pan)**: Apăsarea rotiței de la mouse (butonul din mijloc / *MMB*) + tragere.
- **Mărire / Micșorare (Zoom)**: Rularea rotiței de la mouse (atenție: zoom-ul focalizează exact pe vârful cursorului!).
- **Tasta Salvatoare `F` (Fit to Screen)**: Dacă ați pierdut piesele din vedere în spațiul infinit, o simplă apăsare a tastei `F` recalculează întregul model și îl aduce perfect centrat pe ecran.
- **Cubul de Navigare (Colțul din Dreapta-Sus)**: Click pe fețele `TOP`, `FRONT`, `RIGHT` sau pe colțurile izometrice pentru vizualizări standardizate.

---

### Pasul 4: Demonstrația Mentorului — Ancorarea (`Fix`), Mates & Căutarea Șuruburilor Metrice în `Standard Content` (20 min)

Profesorul proiectează documentul-șablon master `RBF2_RF2_Chassis_Assembly_Template`. Pe ecran apar toate piesele robotului RF 2.0 suspendate în spațiu, ca într-o explozie mecanică controlată. 

Profesorul anunță regula jocului:
*„Acesta este robotul pe care l-am construit fizic în Lecțiile 03, 05 și 06. Însă priviți cu atenție: **nu există niciun șurub pe ecran!** În proiectele pentru începători, șuruburile vin de-a gata sau piesele sunt lipite magic în spațiu. În clasa Evolution, vom proceda ca inginerii profesioniști din industria auto și aerospațială: vom merge în depozitul digital de feronerie standardizată, vom căuta exact șurubul metric de care avem nevoie și îl vom monta conform specificațiilor tehnice reale!”*

#### Regula Numărul 1: Ancorarea Mecanică prin Comanda `Fix`
Profesorul încearcă să mute șasiul principal cu mouse-ul: piesa zboară liber prin spațiu.
- Dacă încercăm să prindem un motor de un șasiu mobil, la prima îmbinare s-ar putea ca șasiul să sară spre motor, pierzând orientarea de ansamblu.
- **Soluția Obligatorie**: Se dă Click-Dreapta pe piesa `Chassis_Main_Plate` în spațiul 3D sau în arborele din stânga și se alege comanda **`Fix`**.
- Lângă piesă apare o pictogramă sub formă de ancoră mecanică. Din această clipă, șasiul devine „planeta fixă” a ansamblului, iar toate celelalte componente vor fi legate de el.

#### Secretul Îmbinărilor Onshape: `Fastened Mate` (Tasta Rapidă `M`)
Spre deosebire de alte programe CAD vechi unde trebuia să constrângi fața 1 pe fața 2, apoi axa 1 pe axa 2 și apoi distanța laterală (3 operațiuni greoaie), Onshape folosește **Mate Connectors** (puncte magnetice inteligente de orientare).
1. Se selectează comanda **`Fastened Mate`** din bara de unelte (sau se apasă tasta **`M`**).
2. Se plasează cursorul pe marginea circulară a găurii de montaj de pe șasiu. Când cercul se aprinde, cursorul indică centrul găurii cu o axă tricoloră (Z albastru, X roșu, Y verde).
   > **Sfat Profesional**: Țineți apăsată tasta **`Shift`** pe tastatură pentru a „îngheța” fața selectată, permițându-vă să alegeți centrul geometric fără ca mouse-ul să sară pe altă geometrie vecină!
3. Se selectează centrul găurii corespondente de pe piesa pe care vrem să o atașăm (de exemplu, flanșa motorului TT).
4. Piesa sare instantaneu în poziție!
5. **Rezolvarea Orientării Incorecte**:
   - Dacă piesa a intrat invers (cu susul în jos), se apasă butonul **`Flip primary axis`** (săgeata dublă verticală din caseta Mate).
   - Dacă piesa este răsucită la un unghi greșit, se apasă butonul **`Reorient secondary axis`** (săgeata circulară) până când piesa se aliniază perfect la 90°.
   - Se apasă bifa verde pentru confirmare.

```
+-----------------------------------------------------------------------------------+
|                        MATE CONNECTOR: REGULA CELOR 2 BUTOANE                     |
|                                                                                   |
|  [ Flip primary axis ]     -> Inversează piesa cu 180° dacă este orientată invers |
|  [ Reorient second axis ]  -> Rotește piesa în trepte de 90° în jurul axei proprii|
+-----------------------------------------------------------------------------------+
```

#### Marea Căutare în Biblioteca `Standard content`
Profesorul deschide fereastra de inserare și comută pe cel de-al doilea tab: **`Standard content`**:
1. **Standard**: Selectăm **`ISO`** (standardul metric internațional) sau **`ASME Metric`**.
2. **Category**: Selectăm **`Bolts and screws`**.
3. **Component Type**: Selectăm **`Socket head cap screw`** (șurub cu cap cilindric și locaș hexagonal interior pentru cheie inbus, identic cu cel din trusa de robotică).
4. **Specificații Geometrice**:
   - **Size**: **`M3`** (filet metric cu diametrul exterior nominal de 3.0 mm).
   - **Pitch**: Standardul este automat `0.5 mm`.
   - **Length**: Selectăm lungimea tijei filetate în funcție de componentă:
     - **30 mm**: Pentru fixarea motoarelor TT de carcasă (trece prin întregul corp al reductorului de plastic).
     - **8 mm**: Pentru fixarea plăcii electronice ESP32 pe distanțierele șasiului.
     - **10 mm**: Pentru prinderea suportului de baterie 18650, a bracketului frontal ultrasonic și a roții castor.
5. Se apasă **`Insert`** și șurubul digital apare în scenă!
6. Pentru piulițe: comutăm categoria pe **`Nuts`** -> **`Hex nut`** -> Mărimea **`M3`** -> `Insert`.

---

### Pasul 5: Atelier Practic Individual — Marea Asamblare a Geamănului Digital RF 2.0 (35 min)

Fiecare cursant își deschide propriul laptop, accesează link-ul documentului master distribuit de profesor și apasă pe butonul **`Make a copy`** pentru a aduce proiectul în spațiul personal.

Elevii lucrează individual la propriul banc, dar se consultă în cadrul alianței lor cromatice:
- **Forge Ranger** (expertul mecanic) asistă colegii la identificarea lungimilor corecte de șuruburi și la alinierea axelor.
- **Cyber Ranger** (expertul în logică) verifică corespondența dintre modelul digital și pinii de pe placa fizică reală.
- **Vanguard Ranger** (strategul) monitorizează ritmul de lucru al echipei, asigurându-se că toți membrii finalizează montajul în intervalul alocat.

#### Fluxul Metodologic de Asamblare Pas cu Pas:

```
[ PASUL 1: Baza ]  -> Fixează șasiul principal (Right-Click -> Fix).
      |
[ PASUL 2: Motoare ] -> Fastened Mate: Cele 2 motoare TT în locașurile laterale.
      |
[ PASUL 3: Șuruburi 30 mm ] -> Standard Content: 4 x M3 x 30 mm + 4 x M3 Hex Nuts.
      |
[ PASUL 4: Roți ]  -> Fastened Mate pe axul teşit D-shaft al motoarelor TT.
      |
[ PASUL 5: Castor ] -> Fastened Mate: Roata frontală de sprijin + 2 x M3 x 10 mm.
      |
[ PASUL 6: Baterie ] -> Fastened Mate: Leagănul 18650 + 2 x M3 x 10 mm.
      |
[ PASUL 7: Electronică ] -> Fastened Mate: Placa ESP32 pe distanțiere + 4 x M3 x 8 mm.
      |
[ PASUL 8: Senzori ] -> Fastened Mate: Bracketul senzorului ultrasonic + 2 x M3 x 10 mm.
```

#### Detalii Tehnice pentru Fiecare Subansamblu:

1. **Montajul Motoarelor TT de Tracțiune**:
   - Se aplică `Fastened Mate` între fața interioară a suportului de șasiu și flanșa de sprijin a motorului.
   - Atenție la orientare: axul motorului trebuie să iasă spre exteriorul robotului, iar firele de alimentare să fie orientate spre interior.
   - Se inserează **4 șuruburi M3 x 30 mm** din `Standard content`. Se aplică `Fastened Mate` între gulerul capului de șurub și gaura exterioară a ramei.
   - Pe partea opusă, se inserează **4 piulițe M3 Hex Nut** și se fixează pe capătul tijei filetate.
2. **Montajul Roților de Tracțiune**:
   - Axul motorului TT are un profil specific numit **D-shaft** (cilindru teşit pe două laturi paralele).
   - Se cuplează alezajul roții pe axul motorului folosind `Fastened Mate` (sau `Revolute Mate` pentru cine dorește ca roata să se poată învârti liber în simulare!).
3. **Montajul Roții Castor Frontale**:
   - Roata metalică omnidirecțională se plasează sub nasul șasiului.
   - Se fixează cu **2 șuruburi M3 x 10 mm** și piulițe corespunzătoare.
4. **Montajul Suportului Modular de Baterie 18650**:
   - Leagănul de baterie modelat în Lecția 02 se centrează pe cele două fante din partea posterioară a robotului (asigurând o distribuție optimă a centrului de greutate deasupra punții motoare).
   - Se fixează cu **2 șuruburi M3 x 10 mm**.
5. **Montajul Plăcii de Extensie ESP32**:
   - Placa electronică violet se așază deasupra distanțierelor centrale ale șasiului.
   - Orientarea corectă: portul USB Type-C / micro-USB și comutatorul de alimentare trebuie să fie orientate spre spatele robotului, pentru a fi ușor accesibile.
   - Se fixează cu **4 șuruburi scurte M3 x 8 mm**.
6. **Montajul Suportului Frontal pentru Senzorul Ultrasonic `HC-SR04`**:
   - Bracketul de susținere a ochilor ultrasonici se plasează pe bara din față a robotului.
   - Se fixează ferm cu **2 șuruburi M3 x 10 mm**.

#### Inspecția de Calitate (Zero Floating Parts):
La finalul asamblării, fiecare elev execută **Testul Smulgerii cu Mouse-ul**:
- Cu cursorul obișnuit (fără nicio unealtă activată), încearcă să tragă de fiecare piesă în parte (roți, motoare, placă, șuruburi).
- Dacă vreo piesă se desprinde și plutește în spațiu, înseamnă că lipsește o conexiune `Fastened Mate`.
- Un ansamblu corect este complet rigid: nicio piesă nu poate fi smulsă din scheletul robotului!

---

### Pasul 6: Quiz Kahoot Interactiv (10 min)

Profesorul proiectează jocul live Kahoot format din **10 întrebări teoretice** calibrate strict pentru conținutul prezentat astăzi:
- Avantajele Cloud CAD față de Desktop CAD.
- Rularea în browser prin WebGL și independența de hardware.
- Structura Documentului: `Part Studio` vs. `Assembly`.
- Cele 6 grade de libertate (3 translații + 3 rotații) și rolul `Fastened Mate`.
- Necesitatea ancorării bazei prin comanda `Fix`.
- Componente standardizate: semnificația filetului metric `M3`, a pasului de `0.5 mm` și a lungimii tijei filetate.

*(Toate întrebările, variantele scurte de răspuns de 1–3 cuvinte și explicațiile pedagogice complete se regăsesc în fișierul dedicat `quiz.md`.)*

---

### Pasul 7: Salvarea Versiunii Oficiale (`Create Version`), Concluzii & Curățenie (5 min)

Elevii învață ultima mare unealtă inginerească a platformei Onshape: **Sistemul de Versiuni (Milestones)**.
1. În bara de sus a documentului, în stânga, se apasă pe pictograma sub formă de arbore / ramură (**`Manage versions and history`**).
2. Se apasă butonul **`Create version`** (pictograma cu etichetă albastră).
3. Se introduce numele versiunii oficiale: **`V1.0 - RF2 Assembled Digital Twin`**.
4. În descriere, elevii notează: *„Robot Factory 2.0 complet asamblat cu motoare TT, roți, placă ESP32, suport baterie și toate șuruburile metrice M3 din Standard Content.”*
5. Se apasă `Create`. Din acest moment, chiar dacă cineva modifică sau șterge din greșeală o piesă în viitor, versiunea `V1.0` rămâne gravată permanent în istoric ca un punct de siguranță la care ne putem întoarce oricând cu un singur click.

Elevii închid browserul, își adună instrumentele de pe bancurile de lucru și lasă sala ordonată. Profesorul anunță tema pentru laboratorul următor:
*„Acum că avem robotul asamblat impecabil în spațiul digital, în lecția următoare vom trece la proiectarea propriilor accesorii personalizate de alianță (suporturi de senzori adiționali, plăcuțe de protecție cu logo-ul echipei) direct pe acest geamăn digital!”*

