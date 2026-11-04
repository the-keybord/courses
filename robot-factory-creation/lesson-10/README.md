# Lecția 10 [RBF1.10]: Proiectarea Top-Down în Onshape: Mecanismul de Virare prin Proiecție CAD, Testul Cinematic & Crearea Bumperului Frontal Personalizat

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF1.10
- **Modul**: Modelare 3D Parametrică, Cinetică Mecanică & Personalizare Prototip
- **Vârsta Țintă**: 11 – 14 ani (Nivelul 1 – Începători / Intermediari)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune avansată de proiectare CAD aplicată în cloud (Onshape). Lecția debutează cu un speed-run de reasamblare pentru consolidarea deprinderilor spațiale și sincronizarea întregii clase, urmat de investigarea critică a punții frontale: deși servomotorul și roțile sunt montate, vehiculul este incapabil să vireze deoarece fuzetele sunt independente, iar servomotorul nu are nicio legătură fizică cu ele. Elevii descoperă metodologia industrială de proiectare în context (Top-Down Design), creează un Part Studio dedicat și utilizează instrumentul de proiecție a geometriei ansamblului (`Use / Project`, tasta `U`) pentru a desena de la zero o bielă de direcție (Steering Tie-Rod) cu 3 puncte de pivotare. După extrudare și montaj cu conexiuni rotative (`Revolute Mates`), elevii testează cinematic virarea interactivă prin tragerea cu mouse-ul direct pe ecran. În a doua parte a laboratorului, cursanții își personalizează triciclul proiectând un bumper frontal anti-șoc robust cu numele robotului gravat/embosat și colorat în nuanța oficială a alianței cromatice.

### Întrebări Esențiale:
1. De ce este proiectarea în context (Top-Down Design) superioară măsurării manuale cu rigla atunci când vrem să creăm o piesă nouă care să se potrivească perfect într-un mecanism existent?
2. Cum funcționează instrumentul `Use / Project` (tasta rapidă `U`) în Onshape și cum transformă el muchiile unui ansamblu 3D în linii active de schiță 2D?
3. Care este diferența cinematică dintre o constrângere fixă (`Fastened Mate`) și o constrângere rotativă (`Revolute Mate`) când dorim să simulăm mișcarea reală a unui mecanism de virare?
4. De ce rotunjim colțurile interioare și exterioare ale pieselor mecanice prin racordări (`Fillet`) înainte de a le fabrica prin imprimare 3D?
5. Ce rol îndeplinește o bară de protecție frontală (bumper) într-o competiție de mașini teleghidate și cum influențează geometria ei absorbția șocurilor mecanice?

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/
- **Document Șablon Onshape (Mini Tricycle RC Car - Copy to Workspace)**: https://cad.onshape.com/documents/7be0796cc70fc67d13c12171/w/daa64e1d67ab4e8d5c3ffcdb/e/689e4891d119c9f2d1b8c3d7?renderMode=0&uiState=6ae323232283d821422cf10a

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Conturi Digitale
- [ ] Conturile Onshape ale elevilor verificate și funcționale în browserul Google Chrome.
- [ ] Link-ul oficial al documentului-șablon Onshape deschis și testat pe contul de profesor: https://cad.onshape.com/documents/7be0796cc70fc67d13c12171/w/daa64e1d67ab4e8d5c3ffcdb/e/689e4891d119c9f2d1b8c3d7?renderMode=0&uiState=6ae323232283d821422cf10a
- [ ] Modelul demonstrativ final pregătit pe ecranul profesorului: triciclu complet asamblat, cu biela de direcție montată pe `Revolute Mates` (virare funcțională la drag) și bumper frontal personalizat cu text embosat.
- [ ] Prezentarea teoretică încărcată pe videoproiector.
- [ ] Quiz-ul Kahoot de 10 întrebări teoretice deschis într-un tab separat (conform `quiz.md`).

### Hardware & Materiale Fizice pentru Clasă
- [ ] Un prototip fizic de triciclu RC adus la catedră, având biela de virare demontată în prima fază pentru a arăta clasei cum roțile din față pivotează haotic fără o legătură mecanică rigidă.
- [ ] O bielă fizică printată 3D (tijă subțire cu 3 găuri) și un bumper frontal demonstrativ pentru inspecție tactilă.
- [ ] Mostre de șuruburi M2 / M3 și știfturi cilindrice pentru explicarea jocurilor mecanice și a toleranțelor de pivotare.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:20** | **1. Speed-Run Reassembly & Sincronizarea Clasei** | Elevii deschid proiectul propriu Onshape și asamblează contra-cronometru componentele triciclului (`Fix` pe șasiu, `Fastened Mates` pentru servo, reductor N20, roată posterioară, receptor și acumulator). Alianțele își ajută colegii până când 100% din clasă atinge checkpoint-ul de bază. |
| **00:20 – 00:30** | **2. Diagnostic Tehnic: Misterul Piesei Lipsă** | Inspecția punții frontale: analizăm de ce servomotorul se învârte în gol fără să vireze roțile. Prezentarea principiului Top-Down Design și a proiectării în context cu instrumentul `Use / Project` (tasta `U`). |
| **00:30 – 01:00** | **3. Laborator CAD: Proiectarea Barei de Direcție (Steering Tie-Rod)** | Elevii creează un nou Part Studio în context, inițiază o schiță pe planul superior, proiectează centrele celor 3 pivoți (fuzeta stângă, brațul servo, fuzeta dreaptă) cu tasta `U`, trasează conturul barei de legătură, aplică racordări `Fillet` și extrudează piesa la grosimea de 3 mm. |
| **01:00 – 01:15** | **4. Testul Cinematic: Conexiuni Revolute & Drag-to-Steer** | Inserarea barei în `Assembly 1`, montarea acesteia folosind `Revolute Mates` pe cele 3 articulații și simularea virajului: elevii trag cu mouse-ul de brațul servomotorului și observă cum ambele roți din față virează sincron stânga-dreapta. |
| **01:15 – 01:45** | **5. Atelier de Personalizare: Bumper Frontal Anti-Șoc cu Numele Robotului** | Proiectarea în context a unei bare de protecție frontale ancorată pe botul șasiului. Elevii desenează profilul aerodinamic al bumperului, extrudează piesa și aplică un text 3D cu numele robotului lor (*VIPER*, *NOVA*, *PHANTOM*), vopsindu-l în nuanța oficială a alianței cromatice (`Edit Appearance`). |
| **01:45 – 01:55** | **6. Quiz Kahoot Interactiv** | Concurs de 10 întrebări axat strict pe teoria inginerească: Top-Down vs Bottom-Up, proiecția geometrică, grade de libertate (`Revolute` vs `Fastened`), biela de virare și absorbția mecanică a șocurilor (conform `quiz.md`). |
| **01:55 – 02:00** | **7. Încheiere & Verificare Flotă roboRangers** | Salvarea stării finale în cloud, inspecția vizuală a mașinilor customizate, comanda `Shift + 7` pentru vizualizare izometrică curată și ordonarea bancurilor de lucru. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Speed-Run Reassembly & Sincronizarea Clasei (20 min)
Profesorul deschide sesiunea explicând că în ingineria de înaltă performanță, viteza și precizia de execuție se construiesc prin repetiție disciplinată. 

La fel cum o echipă de mecanici de Formula 1 exersează schimbarea roților de sute de ori până când o pot face cu ochii închiși, tinerii ingineri din programul roboRangers își consolidează reflexele spațiale printr-un **Speed-Run de Reasamblare**:
- Fiecare elev își deschide copia proiectului Onshape salvată la finalul Lecției 09 (sau deschide un nou document copiat din șablonul oficial dacă fișierul anterior a fost șters ori modificat eronat).
- Mentorul pornește un cronometru vizual pe ecran (15 minute) și dă startul:
  1. Localizarea șasiului principal `Main_Trike_Chassis` în `Assembly 1` și ancorarea obligatorie cu comanda `Right Click` -> `Fix`.
  2. Montarea micro-servomotorului de direcție frontal pe suportul dedicat cu `Fastened Mate` (tasta `M`), verificând orientarea corectă a axului canelat în sus (tastele `Z` pentru Flip și `Q` pentru rotire).
  3. Poziționarea fuzetelor viratoare pe axele frontale ale șasiului și montarea celor două roți din față prevăzute cu benzi de cauciuc (rubber bands).
  4. Inserarea motorului DC N20 cu reductor metalic în clema posterioară a șasiului, orientând axul aplatizat D-shaft spre exterior.
  5. Cuplarea roții mari posterioare de tracțiune pe axul motorului N20 și aplicarea benzii late de cauciuc.
  6. Așezarea receptorului radio 2.4 GHz pe distanțierii centrali superiori și a suportului coborât de acumulator.

**Rolul Mentorului și al Consultanților Forge Rangers**:
Profesorul monitorizează sala împreună cu liderii de mecanică din fiecare echipă (*Forge Rangers*). Dacă un coleg întâmpină dificultăți cu orientarea axei Z sau a pierdut piesa de pe ecran (amintindu-i tasta salvatoare `F` pentru *Fit to Window*), Forge Ranger-ul din echipă îl ghidează verbal. Până la minutul 20, întreaga clasă trebuie să fie sincronizată perfect, având mașinuța asamblată pe ecran.

---

### Pasul 2: Diagnostic Tehnic: Misterul Piesei Lipsă (10 min)
După ce toată clasa are triciclul pe ecran, profesorul proiectează modelul la tablă și lansează o provocare de gândire critică:
- *„Privește cu atenție botul mașinii tale. Avem servomotorul pe mijloc. Avem fuzeta din stânga și fuzeta din dreapta pe șasiu. Dacă acum pornim telecomanda radio și învârtim rotița de viraj, ce se va întâmpla cu roțile mașinii?”*

Elevii inspectează modelul 3D și observă anomalia mecanică:
- Servomotorul are un braț mic din plastic (servo horn) care se poate mișca stânga-dreapta.
- Cele două fuzete ale roților din față au mici brațe de comandă cu găuri verticale.
- Însă între servomotor și roți este **aer curat**! Nu există absolut nicio piesă care să transmită forța mecanică. Dacă servomotorul se rotește, brațul său se mișcă în gol, iar roțile din față stau complet independente, tremurând sau virând fiecare în direcția ei la primul obstacol.

Profesorul explică dilema clasică a inginerului:
- *Cum fabricăm piesa de legătură?*
- Abordarea greșită (amatoare): Luăm o riglă de plastic, măsurăm distanța aproximativă între găuri, deschidem o schiță nouă, desenăm un dreptunghi și sperăm să se potrivească. În 99% din cazuri, piesa printată va fi cu un milimetru prea scurtă sau găurile vor fi dezaxate cu jumătate de milimetru, blocând complet virajul.
- Abordarea corectă (industrială): **Top-Down Design (Proiectare în Context)**. Nu măsurăm nimic cu rigla! Folosim geometria exactă a pieselor deja asamblate în software-ul 3D, „copiem” centrele găurilor direct pe foaia noastră de desen digital și construim piesa perfect calibrată din prima încercare.

---

### Pasul 3: Laborator CAD: Proiectarea Barei de Direcție în Context (30 min)
Mentorul ghidează pas cu pas elevii prin fluxul de modelare în context din Onshape:

#### 1. Deschiderea Schiței în Context
- În tab-ul `Assembly 1`, elevii pot folosi opțiunea de a crea o piesă nouă referențiind ansamblul sau pot crea un nou tab `Part Studio` aliniat cu poziția pieselor din asamblare.
- Se selectează fața plană superioară a brațului de servo horn sau planul orizontal `Top Plane` care trece la nivelul găurilor de virare ale fuzetelor.
- Se apasă butonul **`Sketch`** (scurtătură `Shift + S`) din bara de unelte superioară.
- Se apasă tasta **`N`** (Normal to View) pentru a orienta ecranul perfect perpendicular de sus pe schiță.

#### 2. Instrumentul Magic de Proiecție: `Use / Project` (Tasta `U`)
- Profesorul introduce comanda cheie: pictograma cu un cub ce proiectează o muchie pe o coală de hârtie, numită **`Use`** (tasta rapidă **`U`**).
- Elevii fac click cu instrumentul `Use` activat pe:
  1. Gaura de comandă a fuzetei stângi (apare un cerc sau un punct galben pe schiță).
  2. Gaura centrală/extremă de pe brațul servomotorului (servo horn).
  3. Gaura de comandă a fuzetei drepte.
- În acest moment, cele 3 axe de rotație sunt transferate matematic pe schița 2D cu precizie de micron, fără ca elevul să fi tastat vreo dimensiune!

#### 3. Desenarea Corpului Tijei de Direcție (Steering Tie-Rod)
- Elevii selectează instrumentul **`Circle`** (tasta `C`) și desenează 3 cercuri concentrice în jurul celor 3 puncte proiectate:
  - Cercurile interioare reprezintă alezajele pentru știfturile de pivotare: diametru de **3.2 mm** (oferind toleranță de rotație liberă pentru șuruburi M3 fără frecare excesivă).
  - Cercurile exterioare reprezintă pereții de rezistență din plastic: diametru de **7.0 mm**.
- Cu instrumentul **`Line`** (tasta `L`), elevii unesc marginile exterioare ale cercurilor cu linii paralele tangențiale, creând o bară rigidă continuă care unește cele 3 noduri.
- Cu instrumentul foarfecă **`Trim`** (tasta `M` în schiță), se decupează arcele interioare inutile, rezultând un contur închis curat de forma unei biele cu 3 ochiuri.
- Se aplică racordări elastice cu instrumentul **`Sketch Fillet`** (tasta `Shift + F`) la îmbinările dintre tije și ochiurile circulare, cu o rază de **1.5 mm – 2 mm**, eliminând colțurile ascuțite unde plasticul s-ar putea rupe la efort mecanic.

#### 4. Extrudarea Parametrică 3D (`Extrude`)
- Se apasă bifa verde (`✔`) pentru a finaliza schița.
- Se selectează profilul închis al bielei și se apasă comanda **`Extrude`** (scurtătură `Shift + E`).
- În fereastra apărută:
  - Tip: `Solid` -> `New`.
  - Grosime (`Depth`): **3.0 mm** (o grosime optimă pentru piese plate printate din filament PLA, rezistente la forțe de torsiune).
- Se redenumește piesa nou apărută în lista din stânga: `Steering_Tie_Rod`.
- Piesa se colorează într-o culoare tehnică contrastantă prin `Edit Appearance` (ex: galben fluorescent sau portocaliu de avertizare).

---

### Pasul 4: Testul Cinematic: Conexiuni Revolute & Drag-to-Steer (15 min)
Acesta este momentul culminant al primei părți a laboratorului: verificarea cinematică a mecanismului.

1. **Revenirea în `Assembly 1` & Inserarea Barei de Direcție**:
   - Elevii revin pe tab-ul de asamblare.
   - Apasă butonul `Insert` (`Alt + I`), selectează `Steering_Tie_Rod` și o plasează în scenă.

2. **Diferența dintre `Fastened Mate` și `Revolute Mate`**:
   - Profesorul explică: *„Dacă folosim Fastened Mate ca până acum, biela se va suda rigid de brațul servo și de roți. Când motorul va încerca să se rotească, piesele se vor bloca reciproc și vor încerca să se rupă. Avem nevoie de o articulație care să permită o singură rotație liberă în jurul axei verticale!”*
   - Elevii selectează din bara de unelte conexiunea **`Revolute Mate`** (scurtătură `Shift + R` sau pictograma cu două inele articulate).

3. **Cuplarea Celor 3 Pivoți**:
   - Primul `Revolute Mate`: Se selectează centrul alezajului central al bielei și centrul găurii de pe brațul servomotorului. Confirmă cu bifa verde.
   - Al doilea `Revolute Mate`: Se leagă gaura stângă a bielei de știftul fuzetei stângi.
   - Al treilea `Revolute Mate`: Se leagă gaura dreaptă a bielei de știftul fuzetei drepte.

4. **Testul Suprem: Virarea Interactivă (Drag-to-Steer)**:
   - Elevii dau click-stânga pe brațul servomotorului sau pe una dintre roți și **trag cu mouse-ul stânga-dreapta**.
   - Magie inginerească pe ecran: la mișcarea cursorului, brațul servomotorului oscilează, împinge biela transversală, iar ambele roți din față virează sincron, respectând geometria unghiulară a vehiculului!
   - Sala testează entuziasmată mecanismul digital în timp real.

---

### Pasul 5: Atelier de Personalizare: Bumper Frontal Anti-Șoc cu Numele Robotului (30 min)
După succesul mecanismului de virare, elevii trec la crearea propriei identități de vehicul: **Bara de Protecție Frontală (Front Bumper / Bullbar)**.

1. **Rolul Tehnic al Bumperului**:
   - Într-o cursă sau într-o arenă mecatronică, botul mașinii este cel mai expus la coliziuni frontale violente cu parapeții sau cu alți roboți. Fără protecție, primul element care se sparge este chiar servomotorul sau fuzetele delicate de virare.
   - Bumperul are rolul de a prelua unda de șoc, de a o distribui de-a lungul șasiului și de a deflecta obstacolele fără a bloca rotirea roților directoare.

2. **Proiectarea Bumperului în Context**:
   - Elevii deschid o nouă schiță pe fața frontală a șasiului sau pe planul de referință al suportului frontal.
   - Folosesc din nou comanda `Use` (`U`) pentru a proiecta găurile de fixare frontale de pe șasiu (pentru prindere cu șuruburi M3).
   - Folosind instrumentele `Line`, `Arc` (sau `Spline` pentru forme organice aerodinamice), fiecare elev își conturează propriul profil de bară de protecție:
     - Stil *Off-Road / Bullbar*: cu colți frontali înalți și fante de aerisire.
     - Stil *Formula Racing / Splitter*: lamă coborâtă, ascuțită și evazată spre exteriorul roților.
     - Stil *Armored Wedge*: profil unghiular deflectant tip plug de zăpadă.
   - Condiție inginerească obligatorie verificată de profesor: bumperul trebuie să lase suficient spațiu liber roților frontale pentru ca acestea să poată vira complet la unghi maxim fără să lovească în colțurile interioare ale barei!

3. **Extrudare & Gravarea Numelui Robotului (Emboss / Deboss)**:
   - Bumperul este extrudat la o grosime robustă de **4.0 mm – 5.0 mm**.
   - Se selectează fața frontală a bumperului și se deschide o schiță nouă de detaliu.
   - Elevii folosesc instrumentul **`Text`**: desenează o casetă de text, aleg un font tehnic îndrăzneț (ex: *Roboto*, *Open Sans Bold*) și tastează **numele propriului lor robot individual** (ex: *VIPER*, *NOVA*, *PHANTOM*, *APEX*, *TITAN*).
   - Se aplică comanda **`Extrude`**:
     - *Opțiunea Emboss (Ieșire în relief)*: extrudare de `1.0 mm` spre exterior.
     - *Opțiunea Deboss (Gravură în adâncime)*: extrudare de `1.0 mm` tip `Remove` (săpat în corpul bumperului).

4. **Vopsirea în Culoarea Oficială a Alianței (`Edit Appearance`)**:
   - Fiecare elev dă click-dreapta pe piesa nou creată `Front_Bumper` în lista de componente și alege `Edit Appearance`.
   - În căsuța de cod **`HEX`**, introduce codul de culoare oficial al Alianței sale Cromatice (de exemplu `#87CEEB` pentru *SkyBlue Alliance*, `#FF2400` pentru *Scarlet Alliance*, `#FFD700` pentru *Yellow Alliance* sau `#3EB489` pentru *Mint Alliance*).
   - Numele robotului și fața frontală a barei pot fi colorate contrastant (de exemplu alb sau negru mat) pentru lizibilitate maximă.

---

### Pasul 6: Quiz Kahoot Interactiv (10 min)
Profesorul proiectează pe ecran concursul Kahoot de 10 întrebări teoretice. Întrebările verifică exclusiv conceptele inginerești predate în timpul orei, fără spoilere practice despre butoanele din interfață:
- Diferența dintre metodologia Top-Down și Bottom-Up în proiectarea mecanică.
- Ce realizează proiecția geometrică prin comanda `Use / Project`.
- Grade de libertate: de ce o articulație de virare necesită o conexiune rotativă (`Revolute`) și nu una rigidă (`Fastened`).
- De ce racordările `Fillet` previn ruperea pieselor din plastic supuse la vibrații.
- Rolul distribuirii forței de impact pe o bară de protecție frontală.

*(Toate întrebările, variantele ultra-scurte de 1–3 cuvinte și explicațiile pedagogice detaliate se regăsesc în fișierul `quiz.md`.)*

---

### Pasul 7: Încheiere & Verificare Flotă roboRangers (5 min)
- Elevii resetează camera în modul izometric curat cu comanda rapidă **`Shift + 7`**.
- Apasă tasta **`K`** pentru a ascunde toți conectorii vizuali de asamblare, lăsând modelul curat.
- Profesorul face o trecere în revistă a întregii flote: fiecare elev are acum un vehicul complet funcțional din punct de vedere mecanic (virare demonstrată prin drag) și dotat cu un bumper unic care poartă cu mândrie numele mașinii și culorile alianței.
- Se salvează capturile de ecran pe drive-ul echipei pentru portofoliul alianței.
- Bancurile de lucru sunt verificate, calculatoarele deconectate ordonat, iar sala este lăsată curată.

