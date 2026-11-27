# Lecția 10 [3DS2.10]: Fabrica de Jucării – Secretele Rotițelor Dințate, Raportul de Transmisie & Brelocul Mecanic Sandwich

## 1. Informații Generale despre Lecție & Întrebări Esențiale

- **Cod Lecție**: `3DS2.10`
- **Grupa de Vârstă**: 10–12 ani (Nivel Start)
- **Durata Totală**: 120 minute (2 ore didactice)
- **Modulul**: Modulul 2 – Fabrica de Jucării
- **Proiectul Practic**: **Dual-Gear Sandwich Keychain** – un breloc mecanic de buzunar alcătuit dintr-o carcasă ergonomică tip sandwich (placă inferioară cu axe integrate + placă superioară de fixare) care închide între ele două rotițe dințate ce se antrenează reciproc, acționate ușor direct cu degetul pe marginea carcasei.
- **Întrebări Esențiale**:
  1. *Cum transmite o roată dințată forța și mișcarea fără să alunece și de ce două roți angrenate direct se rotesc mereu în sensuri opuse?*
  2. *Ce este un raport de transmisie mecanic și cum putem dubla viteza de rotație folosind roți cu număr diferit de dinți?*
  3. *De ce modelăm șasiul ca o capsulă tip sandwich din două plăci (inferioară și superioară) și cum ne asigură inelul de chei o asamblare trainică fără căpăcele fragile?*
  4. *De ce în Tinkercad Sim Lab rotițele nu se pot roti pe ax (eroare de coliziune a generatorului procedural), dar în lumea reală printată 3D funcționează impecabil?*

### 🔗 Resurse & Linkuri Utile
- **Prezentare Interactivă**: https://docs.google.com/presentation/d/1zz8ePp8UksfFSn3mvry1JWje8KkxegPwZMTPXEtKXz8/edit?usp=sharing
- **Quiz Kahoot**: https://create.kahoot.it/details/875964c9-4a5f-4560-97db-9ad5c2dca6e6
- **tinkerCad**: https://www.tinkercad.com/things/0lwiv9Y4i4V-3ds-211

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Conturi Digitale
- [ ] **Tinkercad Classroom**: Proiectați codul clasei pe tablă; asigurați-vă că toți elevii au conturile salvate.
- [ ] **Verificare Generator de Forme**: Testați disponibilitatea generatorului `Parametric Gear nonInvolute circular tooth profile` (creat de `this tinkerer`) sau `Metric Gear` în categoria `Shape Generators` -> `All`.
- [ ] **Tab-uri Pregătite**: Prezentarea interactivă (`presentation_interactive.md`) deschisă pe ecranul mare; jocul Kahoot pregătit în fundal.
- [ ] **Bambu Studio**: Profil configurat pentru printarea cu duză de 0.4 mm, strat de 0.20 mm, cu scalare presetată la **70%** pentru fișierele STL exportate.

### Hardware & Imprimante 3D (Bambu Lab A1 / A1 Combo)
- [ ] **Colectarea Modelelor din Lecția 09**: Toate Fidget Spinnerele din Lecția 09 sunt printate, curățate de pe plăci și așezate în tăvițe individuale pentru fiecare elev.
- [ ] **Filamente Pregătite**: Role încărcate în AMS lite sau pe suport (ideal 2–3 culori contrastante: carcasă neagră sau albastră, rotițe galbene/portocalii).

### Materiale Fizice în Clasă
- [ ] **Monede de 1 Leu**: Pentru testarea greutăților pe spinnerele din Lecția 09.
- [ ] **Inele Metalice de Breloc (Keyring)**: Diametru standard 20–25 mm, pregătite pentru asamblarea demonstrativă a brelocului sandwich.
- [ ] **Mostră Demonstrativă de Catedră**: Un breloc mecanic sandwich gata asamblat, pentru ca elevii să poată simți tactil rotația dinților și rezistența carcasei.

---

## 3. Planul de Lecție Minut cu Minut (Timeline Operational)

| Interval | Etapă | Activitate Principală |
| :--- | :--- | :--- |
| **00:00 – 00:10** | **Pasul 1: Colectare & Feedback** | Înmânarea spinnerelor 3D din Lecția 09; inserarea monedelor de 1 Leu și testul rotației. |
| **00:10 – 00:25** | **Pasul 2: Teorie & Istorie** | De la Mecanismul Antikythera la cutiile de viteze; contra-rotația și raportul de transmisie. |
| **00:25 – 00:45** | **Pasul 3: Prezentare Interactivă** | Citire pe roluri din `presentation_interactive.md`; backlash, toleranțe și arhitectura sandwich. |
| **00:45 – 00:55** | **Pasul 4: Pauză & Conectare** | Pauză activă de 10 minute; hidratare și logare în Tinkercad Classroom. |
| **00:55 – 01:20** | **Pasul 5: Demonstrație Live Profesor** | Modelarea roților parametrice, construcția capsulei sandwich (2 cilindri + cutie de legătură) și a axelor. |
| **01:20 – 01:45** | **Pasul 6: Lucru Practic Elevi** | Elevii proiectează propriul breloc sandwich; profesorul verifică toleranțele și poziționarea axelor. |
| **01:45 – 01:55** | **Pasul 7: Quiz Kahoot** | Jocul celor 10 întrebări teoretice din `quiz.md` (mecanică, cinematică și printare FDM). |
| **01:55 – 02:00** | **Pasul 8: Salvare & Coadă Print** | Denumirea corectă a proiectelor; instrucțiuni pentru scalarea la 70% în Bambu Studio. |

---

## 4. Detalierea Fiecărei Etape de Curs

### Pasul 1: Colectarea Modelelor din Lecția 09 & Testul Rotației (00:00 – 00:10)
- Elevii primesc spinnerele printate pe parcursul săptămânii pe Bambu Lab A1.
- Fiecare elev introduce trei monede de 1 Leu în locașurile brațelor și fixează axul central cu cele două căpăcele de deget.
- Se face un concurs rapid de 60 de secunde: al cui spinner se învârte cel mai mult timp?
- Concluzie didactică: o piesă printată 3D devine un mecanism adevărat doar atunci când toleranțele dintre piesele fixe și cele mobile sunt perfect calibrate!

---

### Pasul 2: Teorie & Istoria Angrenajelor Mecanice (00:10 – 00:25)
- **Mecanismul din Antikythera**: Profesorul proiectează imagini cu primul computer analogic din lume (Grecia Antică, cca. 150 î.Hr.), o cutie din bronz cu peste 30 de roți dințate minuscule care calculau fazele lunii și poziția planetelor.
- **De Ce Avem Nevoie de Dinți?**: Două roți netede (fricțiune) ar patina la cel mai mic efort. Dinții transmit o forță uriașă fără nicio pierdere de pas (*positive engagement*).
- **Regula de Aur a Contra-Rotației**: Când două roți dințate exterioare se ating, rotația uneia în sens orar (*clockwise*) o forțează pe cealaltă să se rotească obligatoriu în sens anti-orar (*counter-clockwise*)!
- **Raportul de Transmisie (Viteză vs Forță)**:
  - Dacă o roată motoare mare are 21 sau 24 de dinți și antrenează o roată mică de 13 sau 12 dinți, la fiecare rotație completă a roții mari, roata mică execută aproape două rotații complete!
  - Schimbul fizic universal: câștigăm viteză de rotație, dar pierdem din forța de torsiune (*torque*).

---

### Pasul 3: Prezentarea Interactivă & Secretele Inginerești (00:25 – 00:45)
Se parcurge prezentarea conform fișierului `presentation_interactive.md`. Elevii citesc cu voce tare cele 4 propoziții numerotate per slide.

Puncte esențiale dezbătute:
1. **Jocul dintre dinți (*Backlash*)**: Dinții nu trebuie presați complet până în fundul canalului opus; un mic spațiu liber de aer previne griparea mecanică.
2. **De Ce Șasiu Tip Sandwich?**:
   - În loc de o placă simplă cu căpăcele mici care pot sări, carcasă din 2 plăci (inferioară + superioară) ține roțile captive ca într-un sandwich.
   - Axele sunt sprijinite la ambele capete (*double support*), devenind practic indestructibile la forfecare.
   - Inelul metalic de chei trece prin orificiul ambelor plăci, zăvorând carcasă la un capăt!
3. **⚠️ De Ce NU Funcționează în Tinkercad Sim Lab? (Notă Tehnică Foarte Importantă)**:
   - În Tinkercad Sim Lab, motorul de fizică simplifică formele geometrice complexe în carcase convexe (*convex hull*).
   - Generatoarele procedurale de roți dințate (`Parametric Gear`) au orificiul central generat prin cod matematic, pe care motorul Sim Lab nu îl detectează ca pe un gol interior real, ci îl consideră material solid!
   - Din această cauză, atunci când introducem axul cilindric în gaura roții, Sim Lab detectează o coliziune gravă de suprapunere și blochează roata sau o aruncă în aer.
   - **Lecție pentru elevi**: Simulatoarele digitale au limitări software. În lumea reală (pe imprimanta 3D Bambu Lab A1), gaura este un gol fizic curat de 6 mm, iar axul de 5 mm se rotește perfect liber și lin!

---

### Pasul 4: Pauză Scurtă & Conectare (00:45 – 00:55)
Pauză de 10 minute pentru relaxare, conectarea la calculatoare și accesarea Tinkercad Classroom.

---

### Pasul 5: Demonstrația Profesorului în Tinkercad (00:55 – 01:20)
Profesorul exemplifică la videoproiector pașii exacți de construcție, lucrând confortabil la o mărime generoasă în Tinkercad, urmând ca modelul să fie scalat la **70%** în Bambu Studio:

#### 1. Generarea Roților Dințate Parametrice:
- Accesați meniul din dreapta: `Shape Generators` -> `All` (sau căutați cuvântul `gear`).
- Trageți pe planul de lucru generatorul: **`Parametric Gear nonInvolute circular tooth profile`** (creat de *this tinkerer*).
- **Roata Mare**:
  - `pitch`: **4**
  - `Slop`: **0.1**
  - `# of teeth`: **21** (sau 24)
  - `Height`: **6 mm**
  - `bore dia`: **6 mm** (orificiul central integrat)
- **Roata Mică**:
  - Trageți un al doilea `Parametric Gear`.
  - `pitch`: **4** (identic cu prima roată!)
  - `Slop`: **0.1**
  - `# of teeth`: **13** (sau 12)
  - `Height`: **6 mm**
  - `bore dia`: **6 mm**
- Apropiați roțile astfel încât dinții lor să se întrepătrundă curat, lăsând un joc vizual fin de aer (*backlash* de cca. 0.5–1 mm).

#### 2. Tehnica Capsulei Sandwich (Construcția Șasiului din Cilindri + Cutie):
Pentru ca axele să fie perfect aliniate cu centrele roților fără calcule matematice complicate, folosim metoda geometrică directă demonstrată în clasă:
1. **Cele 2 Baze Cilindrice**:
   - Trageți un Cilindru plin (portocaliu) sub centrul roții mari: Diametru **22 x 22 mm**, Înălțime **4 mm**.
   - Trageți un al doilea Cilindru plin sub centrul roții mici: Diametru **22 x 22 mm**, Înălțime **4 mm**.
   - Aliniați fiecare cilindru cu centrul orificiului roții corespunzătoare folosind instrumentul *Align* (tasta `L`).
2. **Corpul de Legătură (Cutia / Red Box)**:
   - Trageți o Cutie (*Box*): Lățime **22 mm** (aceeași cu diametrul cilindrilor), Înălțime **4 mm**.
   - Plasați cutia între cei doi cilindri, conectându-i într-o formă fluidă de capsulă (*dog-bone* / *pill shape*).
   - Grupați cei 2 cilindri și cutia (`Ctrl + G`) $\to$ Obțineți conturul de bază al carcasei!
   - Faceți o copie identică a acestei capsule (`Ctrl + D`) și mutați-o alături: una va deveni **Placa Inferioară**, iar cealaltă **Placa Superioară**!

#### 3. Placa Inferioară (Cu Axele de Ghidaj):
- În centrele celor două capete rotunjite ale primei capsule, plasați două axe cilindrice verticale:
  - Diametru ax: **5 x 5 mm** (orificiul roții fiind de 6 mm, avem o **toleranță generoasă de 1 mm** în Tinkercad!).
  - Înălțime ax: **13 mm** (acoperă 4 mm placa de jos + 6 mm înălțimea roții + 1 mm joc vertical + 2 mm intrare în placa de sus).
- Adăugați o gaură cilindrică de breloc (*Hole*) de **5 x 5 mm** la unul dintre capetele carcasei.
- Grupați totul (`Ctrl + G`).

#### 4. Placa Superioară (Cu Orificii de Ghidaj):
- Pe a doua capsulă, plasați în exact aceleași centre două cilindri Hole:
  - Diametru: **5 x 5 mm** (pentru fixare fermă a vârfului axelor) sau **6 x 6 mm**.
  - Adăugați gaura identică pentru inelul de breloc la același capăt.
- Grupați totul (`Ctrl + G`).

> [!TIP]
> **De Ce Este Genială Forma de Capsulă?**
> Deoarece carcasa are lățimea de 22 mm, iar roțile dințate au diametre mult mai mari, dinții roților ies liber pe ambele laterale ale brelocului! Elevul poate ține brelocul lejer între două degete și poate roti rotițele direct cu degetul mare, exact ca pe un fidget mecanic!

---

### Pasul 6: Lucru Practic & Personalizare (01:20 – 01:45)
- Elevii modelează pe stațiile proprii urmărind pașii de la tablă.
- Fiecare elev alege culori virtuale atractive (placă neagră, roți contrastante galben/roșu).
- Opțional: elevii pot decupa forme decorative mici pe placa de sus (ferestre skeleton rotunde pentru a vedea rotația dinților) sau își pot scrie inițialele pe carcasă.
- **Checklist Verificare Profesor**:
  - [ ] Pitch-ul este identic pe ambele roți (`pitch = 4`).
  - [ ] Orificiul roților este de 6 mm, iar axul cilindric are diametrul de 5 mm (toleranță de 1 mm).
  - [ ] Gaura pentru inelul de breloc trece curat prin ambele plăci la același capăt.

---

### Pasul 7: Quiz Kahoot / Consolidare Cunoștințe (01:45 – 01:55)
Profesorul lansează jocul Kahoot din `quiz.md` (10 întrebări teoretice despre cinematică, contra-rotație, raport de transmisie, backlash și de ce fizica Sim Lab diferă de printarea reală).

---

### Pasul 8: Salvare & Procedura de Scalare în Bambu Studio (01:55 – 02:00)
- Denumirea proiectelor: `3DS2.10_BrelocSandwich_NumeElev`.
- Export fișier STL cu toate piesele pe plan (placa de jos, placa de sus, cele 2 roți).
- **Procedura Profesorului în Bambu Studio**:
  1. Importați piesele pe platoul de lucru.
  2. Selectați tot (`Ctrl + A`).
  3. Deschideți instrumentul *Scale* (tasta `S`), bifați *Uniform Scale* și setați valoarea la **70%**.
  4. La scalarea de 70%:
     - Toleranța de 1 mm din Tinkercad devine **0.7 mm fizic**, ideală pentru rotire ultra-ușoară și fără frecare pe Bambu Lab A1.
     - Dimensiunea totală a brelocului devine extrem de compactă, perfectă pentru buzunar sau agățat la ghiozdan!
  5. Setați 3 pereți perimetrici (*wall loops*) și înălțimea stratului la 0.20 mm.
  6. Lansați printul!