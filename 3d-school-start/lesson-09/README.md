# Lecția 09 [3DS2.9]: Fabrica de Jucării – Lumea Fidget Toys & Secretele Rotației Tri-Spinner 3D

---

## 📌 1. Informații Generale & Obiective de Învățare

- **Cod Lecție**: `3DS2.9`
- **Curs**: 3D School Start (Nivel 2)
- **Modul**: Modulul 2 – *Fabrica de jucării*
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore)
- **Software Modelare**: Tinkercad Classroom
- **Software Slicing**: Bambu Studio
- **Hardware & Echipamente**:
  - Imprimante **Bambu Lab A1** (în Etapa 2 se pun la imprimat **brelocurile inteligente Pet Tag cu cip NFC** modelate în Lecția 08, care vor fi colectate la Etapa 8)
  - 1–2 mostre demonstrative de Fidget Tri-Spinner Pocket asamblate cu monede de 1 Leu pe catedră pentru testare tactilă live
  - Câteva **monede de 1 Leu din Republica Moldova** (diametru `21.5 mm`, grosime `1.8 mm`, greutate `4.45 g`) pentru demonstrația de presare și evacuare rapidă
  - Șubler digital pentru verificarea jocurilor mecanice de toleranță
- **Proiect Practic**:
  - **Fidget Tri-Spinner Pocket (65 mm) cu Greutăți din Monede de 1 Leu & Sistem Push-Through (100% Imprimat 3D)**:
    - **Arhitectură din 3 piese imprimate 3D**: Corp Tri-Spinner monobloc + Capac Inferior cu Ax Integrat + Capac Superior Press-Fit.
    - **Corpul Tri-Spinner**: Anvergură compactă (diametru total `65 mm`, grosime `5.0 mm`), perfect proporționată pentru palmele copiilor de 10–12 ani (nu atinge palma în timpul rotirii cu o singură mână).
    - **Locașurile pentru Monede de 1 Leu (Fața Superioară)**: Pe fiecare braț se decupează un locaș circular de **`21.8 x 21.8 mm`** (joc de +0.3 mm pentru monedă) și adâncime de **`2.0 mm`**.
    - **Orificiul de Evacuare Rapidă din Spate (*Push-Through Hole*)**: La baza fiecărui locaș se decupează o fereastră circulară traversantă de **`12.0 x 12.0 mm`**, lăsând un guler interior robust de susținere de **`4.9 mm`**. Moneda se introduce prin apăsare ușoară și se poate scoate oricând instantaneu împingând cu degetul sau vârful unui creion din spate!
    - **Mecanismul de Rotație Central (Ax și Toleranțe)**:
      - Orificiu central în corp: diametru **`8.0 x 8.0 mm`**, înălțime `5.0 mm`.
      - Axul central (pe capacul inferior): diametru **`7.4 x 7.4 mm`** (joc mecanic total de `0.6 mm` / `0.3 mm` pe fiecare perete) și înălțime **`5.8 mm`** (joc axial de `0.8 mm` pe Z, împiedicând frecarea fețelor).
      - Pin central de îmbinare: pin cilindric/conic de **`4.0 x 4.0 x 3.0 mm`** pe capacul inferior și alezaj gaură de **`4.2 x 4.2 mm`** pe capacul superior pentru îmbinare fermă prin presare (*press-fit*).
    - **Capace Ergonomice de Deget (*Finger Caps*)**: Discuri de diametru **`16.0 mm`** și grosime **`2.5 mm`**, prevăzute cu adâncitură concavă circulară (*dish*) pentru o priză sigură a buricului degetului fără alunecare.
- **Noutatea Zilei**:
  - Descoperim ce este un **fidget toy** și cum mișcările repetitive ale degetelor ajută creierul să elimine agitația și să își mărească atenția.
  - Aflăm istoria fascinantă a obiectelor de calmare (de la pietrele șlefuite de râu din Grecia Antică la titirezul antic) și cum a apărut în 2014 ideea de spinner, culminând cu explozia mondială din 2017.
  - Înțelegem **forța de frecare (friction)** și secretul ingineresc al **jocului mecanic (clearance)** în modelarea 3D.
  - Explorăm geometria cercului (360° împărțit la 3 = 120°) și fizica **inerției de rotație** (cum 3 monede de 1 Leu adaugă 13.35 grame la margini, prelungind rotirea).

### ❓ Întrebări Esențiale (Ce descoperim azi?)
1. **Ce este un fidget toy și cum ne ajută mișcările repetitive să ne concentrăm atenția la ore?**
2. **Când au apărut primele obiecte de calmare din istorie și cum a cucerit lumea fidget spinner-ul în anul 2017?**
3. **Ce este forța de frecare (friction) și cum putem face două piese din plastic să alunece lin una peste alta fără rulment metalic?**
4. **De ce avem nevoie de un joc mecanic (clearance) de 0.6 mm între ax și orificiul central la imprimarea 3D?**
5. **Cum proiectăm un locaș inteligent pentru o monedă de 1 Leu care să permită introducerea ușoară și evacuarea printr-o simplă împingere din spate?**

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1sTg-fqV61d4rfmyCfJK-2DQHJiQgN1DM4Kc7Sef5JZU/edit?usp=sharing
- **Kahoot**: https://create.kahoot.it/details/730e0ac2-8226-4ecb-a278-27686d065962
- **Alte Materiale**: https://www.tinkercad.com/things/dfcy5poKKl0-3ds-29-spinner
---

## 📋 2. Pregătirea Lecției (Checklist Profesor)

Înainte de începerea orei, profesorul pregătește laboratorul:

### Conturi & Software
- [ ] Deschide **Tinkercad Classroom** cu codul clasei activ și lista de conturi ale elevilor.
- [ ] Deschide în browser fila cu prezentarea interactivă și jocul Kahoot din `quiz.md`.
- [ ] Pornește **Bambu Studio** cu fișierele pregătite pentru printarea proiectelor din Lecția 08 (Brelocurile Pet Tag NFC).

### Hardware & Imprimante 3D
- [ ] Verifică starea imprimantelor **Bambu Lab A1** (pat curățat cu alcool izopropilic, filamente PLA încărcate).
- [ ] Pregătește pe catedră un prototip complet de Tri-Spinner Pocket asamblat cu 3 monede de 1 Leu pe care elevii îl pot testa la pauză.
- [ ] Păstrează la îndemână 3–6 monede curate de 1 Leu pentru demonstrația live de presare și evacuare cu un creion.
- [ ] Șubler digital pentru a demonstra live diferența dintre diametrul axului (`7.4 mm`) și orificiul central (`8.0 mm`).

### Materiale Fizice în Sală
- [ ] 2–3 seturi de capace de rezervă în caz că un elev presează strâmb pinul la asamblare.
- [ ] Mousepad-uri moi la fiecare bancă pentru amortizarea testelor de învârtire.

---

## ⏱️ 3. Planul Lecției Minut cu Minut (Tabel Cronologic)

| Interval | Etapă | Activitate Principală | Format |
|---|---|---|---|
| **00:00 – 00:10** | **Etapa 1** | Colectarea modelelor din lecția anterioară (Lecția 08) & Verificarea brelocurilor NFC | Colectiv |
| **00:10 – 00:20** | **Etapa 2** | Pregătirea fișierelor și lansarea imprimării 3D pentru proiectele curente | Frontal / Tehnic |
| **00:20 – 00:40** | **Etapa 3** | Descoperirea noii teme & Vizionarea prezentării interactive (Fidget Toys & Frecare) | Dialog & Prezentare |
| **00:40 – 00:50** | **Etapa 4** | Pauză scurtă & Înregistrarea prezenței | Pauză relaxare |
| **00:50 – 01:10** | **Etapa 5** | Demonstrația profesorului în Tinkercad: Trucul „Cilindrului Geamăn” la 120° & Locașul de 1 Leu | Demonstrație live |
| **01:10 – 01:45** | **Etapa 6** | Lucru individual la propriul proiect: Modelarea Tri-Spinner-ului Pocket și a Capacelor | Practică individuală |
| **01:45 – 01:55** | **Etapa 7** | Joc Quiz Kahoot: Fixarea conceptelor teoretice despre forțe și rotație | Joc interactiv |
| **01:55 – 02:00** | **Etapa 8** | Colectarea obiectelor imprimate din Lecția 08, concluzii & Fotografie de grup | Încheiere |

---

## 📖 4. Detalierea Pas cu Pas a Lecției

### Etapa 1: Colectarea Modelelor Anterioare (00:00 – 00:10)
* Elevii intră în laborator și își primesc brelocurile „Paw Tag” cu cip NFC modelate la Lecția 08.
* Elevii ating telefonul de breloc pentru a verifica mesajul salvat. Profesorul felicită clasa pentru finalizarea Modulului 1 (*Laboratorul Creativ*) și declară deschis **Modulul 2: Fabrica de jucării**.

### Etapa 2: Pregătirea & Pornirea Imprimării 3D (00:10 – 00:20)
* Pe imprimantele Bambu Lab A1 se lansează plăcile cu ultimele brelocuri NFC sau se pune la imprimat un spinner demonstrativ live.
* Profesorul explică setările în Bambu Studio: `0.20 mm Standard`, `Wall loops: 3` (3 pereți concentrici pentru ca locașul monedei și axul să nu se deformeze) și `Infill: 20% Gyroid`.

### Etapa 3: Teoria Didactică & Prezentarea Interactivă (00:20 – 00:40)
* Se deschide fișierul `presentation_interactive.md`. Elevii citesc pe rând cu voce tare cele 3 enunțuri de pe fiecare slide:
  * **Slide 1**: Ce este un fidget toy? De ce degetele noastre simt nevoia să se miște când creierul lucrează intens? (Discuție despre descărcarea energiei cinetice și pietrele de râu șlefuite).
  * **Slide 2**: Fenomenul spinner din 2017. Cum a plecat de la o idee de birou și a devenit o nebunie mondială pe YouTube.
  * **Slide 3**: Forța de frecare (friction). Experimentul scurt de frecare a palmelor pentru a simți căldura. Conceptul de **joc mecanic (clearance)**: de ce axul de `7.4 mm` are nevoie de spațiu liber față de gaura de `8.0 mm`.
  * **Slide 4**: Triunghiul echilateral și cercul complet: 360 de grade împărțit la 3 brațe dă exact **120 de grade**. Secretul inerției: cum 3 monede de 1 Leu amplasate la capete adaugă peste 13 grame de masă centrifugă, menținând spinnerul în mișcare mult timp!

### Etapa 4: Pauză Scurtă & Prezență (00:40 – 00:50)
* Pauză de 10 minute pentru relaxare și socializare.
* Profesorul notează prezența în catalogul digital.

### Etapa 5: Demonstrația Profesorului în Tinkercad (00:50 – 01:10)
Profesorul proiectează ecranul pe tablă și realizează modelul complet, explicând fiecare cotă:

1. **Construirea Centrului și a Primului Braț**:
   * Trage pe plan un cilindru solid de diametru **`20.0 x 20.0 mm`** și înălțime **`5.0 mm`** (acesta va fi miezul central).
   * Trage un al doilea cilindru solid de **`25.0 x 25.0 mm`** și înălțime **`5.0 mm`** și îl deplasează la o distanță de **`20.0 mm`** în sus pe axa Y (distanța de la centru la axa monedei).
   * Unește cele două cercuri cu o casetă (*Box*) de lățime **`12.0 mm`**, lungime **`20.0 mm`** și înălțime **`5.0 mm`**.

2. **Decuparea Locașului Inteligent pentru 1 Leu (Metoda Push-Through)**:
   * **Locașul monedei pe față**: Trage un cilindru gaură (*Hole*) de diametru **`21.8 x 21.8 mm`** și înălțime **`2.0 mm`**. Îl ridică la `3.0 mm` deasupra mesei (decupează doar primii 2.0 mm de sus ai discului exterior).
   * **Orificiul de evacuare din spate**: Trage un cilindru gaură (*Hole*) de diametru **`12.0 x 12.0 mm`** și înălțime **`10.0 mm`** centrat în discul exterior (acesta străpunge complet piesa de jos până sus).
   * Selectează discul exterior, caseta de legătură și cele două decupaje și le grupează (`Ctrl + G`). Rezultă un braț prevăzut cu un locaș de monedă și un guler interior de susținere de **`4.9 mm`** pe care se va sprijini moneda de 1 Leu!

3. **Trucul Didactic al „Cilindrului Geamăn” pentru Simetrie la 120°**:
   * Selectează **Cilindrul Central + Brațul Creat** împreună!
   * Apasă combinația magică **`Ctrl + D`** (Duplicare inteligentă).
   * Folosește arcul de rotire orizontală și tastează precis **`120`** grade.
   * Apasă din nou **`Ctrl + D`**: Tinkercad creează automat al treilea braț la unghiul de **`240`** grade!
   * Selectează tot ansamblul și îl unește (`Ctrl + G`). Cilindrii centrali fuzionează într-un miez uniform.

4. **Decuparea Alezajului Central de Rotație**:
   * Trage un cilindru gaură (*Hole*) de diametru exact **`8.0 x 8.0 mm`** și înălțime `10.0 mm` exact în centrul miezului.
   * Grupează (`Ctrl + G`). Corpul Tri-Spinner Pocket este finalizat!

5. **Proiectarea Axului și a Capacelor Ergonomice (*Finger Caps*)**:
   * **Capacul Inferior (cu ax integrat)**:
     * Trage un cilindru solid de diametru **`16.0 x 16.0 mm`** și înălțime **`2.5 mm`**.
     * În centrul său, plasează axul mecanic de diametru **`7.4 x 7.4 mm`** și înălțime **`5.8 mm`** (oferă joc mecanic de `0.6 mm` pe diametru și `0.8 mm` joc axial pe Z).
     * Pe vârful axului, adaugă un pin cilindric de diametru **`4.0 x 4.0 mm`** și înălțime **`3.0 mm`**.
     * Pe spatele capacului, scade o sferă gaură de `12.0 x 12.0 x 1.5 mm` pentru a crea o adâncitură concavă ergonomică (*dish*) pentru deget.
     * Grupează capacul inferior (`Ctrl + G`).
   * **Capacul Superior (de presare)**:
     * Trage un cilindru identic de **`16.0 x 16.0 mm`** și înălțime **`2.5 mm`**.
     * În centru, decupează un alezaj gaură de **`4.2 x 4.2 mm`** și adâncime `3.0 mm` (joc de +0.2 mm pentru presare strânsă pe pinul de 4.0 mm).
     * Decupează aceeași adâncitură concavă pe fața exterioară pentru deget și grupează (`Ctrl + G`).

### Etapa 6: Lucru Individual la Propriul Proiect (01:10 – 01:45)
* Elevii intră în Tinkercad Classroom și construiesc modelul pas cu pas.
* **Cote obligatorii pentru funcționare**:
  - Corp: grosime `5.0 mm`, orificiu central `8.0 mm`.
  - Locaș monedă: `21.8 mm` lăcaș, `12.0 mm` orificiu de împingere.
  - Ax: diametru `7.4 mm`, lungime `5.8 mm`.
  - Capace deget: diametru `16.0 mm`.
* **Personalizare creativă**:
  - Textură sau model în relief gravat pe casetele de legătură ale brațelor.
  - Testarea virtuală a asamblării pieselor în spațiu.

### Etapa 7: Joc Quiz Kahoot (01:45 – 01:55)
* Elevii accesează Kahoot de pe computere sau telefoane.
* Se rulează cele 10 întrebări din `quiz.md`. Profesorul comentează fiecare răspuns, fixând noțiunile de frecare, clearance mecanic și rolul masei exterioare pentru inerție.

### Etapa 8: Colectare Imprimări, Concluzii & Foto de Grup (01:55 – 02:00)
* Proiectele finalizate sunt salvate în Tinkercad Classroom și pregătite pentru slicing în Bambu Studio.
* Spinnerele vor fi imprimate 3D pentru a fi asamblate cu monede la începutul Lecției 10!
* Se realizează fotografia de grup a atelierului.
