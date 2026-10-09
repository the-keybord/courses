# Lecția 03 [3DS2.3]: Magia Imprimării Multicolore & Pixel Art (3 Culori pe Straturi)

---

## 📌 1. Informații Generale & Obiective de Învățare

- **Cod Lecție**: `3DS2.3`
- **Curs**: 3D School Start (Nivel 2)
- **Modul**: Modulul 1 – *Laboratorul Creativ*
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore)
- **Software Modelare**: Tinkercad Classroom
- **Software Slicing**: Bambu Studio
- **Hardware & Echipamente**: 
  - 2 × Imprimante **Bambu Lab A1** (pentru producția riglelor/semnelor de carte din Lecția 02)
  - 1 × Imprimantă **Bambu Lab A1 cu AMS lite** (stație demonstrativă multicoloră live cu filamentele Negru, Roșu și Alb)
- **Proiect Practic**: Crearea unui medalion / insignă retro în stil **Pixel Art 2.5D** compus din 3 niveluri de culoare (**Negru**, **Roșu**, **Alb**) pe baza cuburilor de bază $1 \times 1\text{ mm}$ cu trepte de înălțime pe axa Z, prevăzut opțional cu un „pixel gol” pentru prinderea unui fir sau șnur.
- **Circuitul Imprimării 3D în Laborator**:
  - *La începutul lecției (Etapa 2)*: Se pornește imprimarea riglelor și semnelor de carte proiectate de elevi în Lecția 02 pe cele două imprimante standard Bambu Lab A1.
  - *După demonstrația profesorului (Etapa 5/6)*: Profesorul feliază live exemplul demonstrativ (Inima Pixel Art) în Bambu Studio, aplică scalarea inteligentă ($XY = 300\%$, $Z = 75\%$) și schimbările automate de culoare pe straturi prin AMS lite, pornind printul demonstrativ chiar în timp ce copiii lucrează la calculatoare.
  - *La finalul etapei practice*: Elevii pot admira și atinge modelul demonstrativ proaspăt scos din AMS lite!
  - *La finalul orei (Etapa 8)*: Se colectează festiv riglele imprimate din Lecția 02.

### ❓ Întrebări Esențiale (Obiective de Învățare)
1. **De ce o imprimantă 3D FDM nu poate amesteca culorile ca o imprimantă obișnuită 2D pe hârtie?**
2. **Cum funcționează principiul schimbării de culoare pe straturi pe axa Z (Filament Swap)?**
3. **Ce este un sistem automat de alimentare cu filament (AMS / AMS lite) și cum execută schimbarea de culori fără pauze manuale complicate?**
4. **Cum putem construi obiecte complexe Pixel Art în Tinkercad folosind o grilă de $1 \times 1\text{ mm}$ și 3 trepte de înălțime pe Z ($2\text{ mm}$, $3\text{ mm}$, $4\text{ mm}$)?**
5. **Cum funcționează comanda rapidă `Alt + Drag` și comutarea în vizualizarea Ortografică (Flat View) pentru aliniere fără cusur?**
6. **De ce aplicăm scalare non-uniformă în Slicer ($XY = 200\%-400\%$ pentru mărime și $Z = 75\%$ pentru viteză și grosime optimă)?**

### 🔗 Resurse & Linkuri Utile
- **Prezentare Teoretică**: https://docs.google.com/presentation/d/1C2g44mQVQQRq9Y6s29edDAG_EOAIIggRxaQEUuH-pqs/edit?usp=sharing
- **Joc Kahoot**: https://create.kahoot.it/details/4a8e6778-3900-464b-8113-43fe06bfe4e8
- **Model**: https://www.tinkercad.com/things/jq7qHRakffe-3ds-23

---

## 📋 2. Pregătirea Lecției (Checklist Profesor)

Înainte de intrarea elevilor în clasă, profesorul efectuează următoarele verificări și configurări:

### Conturi Digitale & Software
- [ ] Deschide panoul **Tinkercad Classroom** pentru grupa curentă; verifică dacă codul clasei și lista de porecle (nicknames) sunt afișate sau printate pentru logare rapidă.
- [ ] Deschide pe ecranul principal / proiector prezentarea teoretică a lecției și tab-ul cu jocul **Kahoot** (bazat pe `quiz.md`).
- [ ] Pornește softul **Bambu Studio** pe laptopul profesorului, configurat cu profilul de 0.20 mm Standard pentru Bambu Lab A1.

### Echipamente Hardware & Imprimante 3D (Configurația celor 3 Imprimante)
- [ ] **Imprimantele 1 și 2 (Bambu Lab A1 fără AMS)**:
  - Curăță plăcile texturate PEI cu alcool izopropilic sau apă caldă.
  - Încarcă fișierele `.gcode` cu riglele și semnele de carte ale elevilor din Lecția 02, pregătite pentru pornire la minutul 10.
- [ ] **Imprimanta 3 (Bambu Lab A1 Combo cu AMS lite)**:
  - Verifică montarea celor 3 bobine de filament PLA în sloturile AMS lite:
    - Slot 1: **Negru** (Bază & Contur)
    - Slot 2: **Roșu** (Culoare principală / Umplutură)
    - Slot 3: **Alb** (Detalii luminoase / Highlight)
  - Rulează o calibrare rapidă a patului și a extrudorului dacă este necesar.

### Materiale Didactice Fizice
- [ ] Pregătește o planșă grafică / mostre fizice cu cele 5 obiecte Pixel Art în 3 culori: ❤️ Inimă, 🍎 Măr, 🍄 Ciupercă, ⚔️ Sabie, 🧪 Sticluță de poțiune.
- [ ] Pregătește bucăți scurte de ață / șnur colorat pentru a le arăta cum se poate prinde firul prin „pixelul gol”.
- [ ] Șubler digital și mostre de piese imprimate cu straturi multicolore pentru inspecție tactilă.

---

## ⏱️ 3. Desfășurarea Lecției Pas cu Pas (Tabel Minute-by-Minute)

| Minut | Etapă | Activitate Principală & Rolul Profesorului |
| :---: | :--- | :--- |
| **00 – 10 min** | **1. Bun venit & Introducere** | Primirea elevilor, crearea atmosferei de laborator retro-pixel, prezentarea temei multicolore. |
| **10 – 20 min** | **2. Pornirea Imprimării (Lecția 02)** | Lansarea riglelor/semnelor de carte pe Imprimantele 1 și 2. Verificarea primului strat. |
| **20 – 40 min** | **3. Teorie: Magia Multicolorelor & Pixel Art** | Livrarea prezentării: De ce FDM nu are cerneală, straturile Z, AMS lite, cele 5 modele Pixel Art. |
| **40 – 50 min** | **4. Pauză & Prezență** | Relaxare 10 minute, hidratare, aerisirea laboratorului și verificarea prezenței. |
| **50 – 65 min** | **5. Demonstrația Live Tinkercad & Slicing** | Crearea celor 3 cuburi etalon ($1\times1\text{ mm}$ la $Z=2,3,4\text{ mm}$), modelarea inimii, pixelul gol, scalarea în Slicer. |
| **65 – 95 min** | **6. Lucru Individual & Print Live AMS** | Copiii își modelează propriul Pixel Art. Concomitent, Imprimanta 3 cu AMS imprimă live inima demonstrativă! |
| **95 – 110 min** | **7. Joc Kahoot (Evaluare Interactivă)** | Sesiune dinamică Kahoot (12 întrebări teoretice rapide din `quiz.md`). |
| **110 – 120 min** | **8. Colectare Rigle, Inspecție Model & Poză** | Ridicarea riglelor din Lecția 02, atingerea piesei multicolore proaspete din AMS lite și poza de grup. |

---

## 📖 4. Elaborarea Detaliată a Fiecărei Etape

---

### Etapa 1: Bun Venit & Introducere (Minutele 00 – 10)
Profesorul întâmpină călduros elevii și le captează atenția cu o întrebare capcană:
> *„Cum credeți că imprimă o imprimantă obișnuită de birou o poză colorată? Are cartușe cu cerneală lichidă Cyan, Magenta, Galben și Negru pe care le combină pe hârtie. Dar imprimanta noastră 3D are cerneală lichidă? Nu! Ea topește un fir solid de plastic. Cum putem atunci să creăm un obiect tridimensional cu mai multe culori, fără să pictăm manual cu pensula?”*

Profesorul anunță misiunea zilei: vom descoperi secretul imprimării multicolore pe straturi și vom deveni artiști digitali retro, transformând pixeli simpli de $1 \times 1\text{ mm}$ în insigne tridimensionale de colecție în 3 culori: **Negru**, **Roșu** și **Alb**.

---

### Etapa 2: Pornirea Imprimării 3D pentru Modelele din Lecția 02 (Minutele 10 – 20)
1. Elevii se adună în jurul **Imprimantelor 1 și 2 (Bambu Lab A1)**.
2. Profesorul deschide fișierele de feliere cu riglele și semnele de carte cu gradații milimetrice și decupaje stencils modelate de elevi în lecția precedentă.
3. Se pornește imprimarea pe ambele mașini.
4. Elevii observă procesul automat de calibrare a patului și modul în care capul de imprimare depune prima linie de purjare și primul strat uniform.
5. Profesorul le reamintește: *„În timp ce voi veți învăța și veți crea noile voastre proiecte, imprimantele 1 și 2 vor lucra neobosit, iar la finalul orei fiecare își va lua acasă rigla fizică!”*

---

### Etapa 3: Teorie – Magia Imprimării Multicolore & Universul Pixel Art (Minutele 20 – 40)
Profesorul rulează prezentarea teoretică (ghidată de `presentation.md` / `presentation_interactive.md`):

#### 1. De ce Imprimanta 3D FDM nu are cerneală?
- O imprimantă 2D depune picături microscopice de cerneală lichidă care se absorb în hârtie.
- Imprimanta FDM (*Fused Deposition Modeling*) împinge un fir solid de plastic printr-o duză încinsă la 210°C. Duza poate topi o singură culoare de plastic în fiecare clipă.
- Culoarea piesei este dictată strict de bobina de filament montată în acel moment.

#### 2. Secretul Schimbării de Culoare pe Axa Z (*Filament Swap by Layer*)
- Deoarece imprimanta construiește orice obiect strat peste strat (pe verticală, de-a lungul axei Z), putem obține un model multicolor dacă îi ordonăm imprimantei:
  - *Straturile 1 până la 10* ($0.0 \to 2.0\text{ mm}$): Toarnă plastic **Negru**.
  - *Straturile 11 până la 15* ($2.0 \to 3.0\text{ mm}$): Schimbă cu plastic **Roșu**.
  - *Straturile 16 până la 20* ($3.0 \to 4.0\text{ mm}$): Schimbă cu plastic **Alb**.
- Pentru ca acest truc să funcționeze, noi, în calitate de designeri 3D, trebuie să construim fiecare element colorat la o **înălțime diferită** în spațiul digital!

#### 3. Cum funcționează sistemul AMS (*Automatic Material System*)?
- Pe imprimanta clasică, la fiecare schimbare de strat, profesorul trebuia să apese manual pauză, să scoată firul vechi, să introducă firul nou și să curețe duza.
- Sistemul inteligent **AMS lite** de pe Bambu Lab are 4 motoare independente. El retrage automat filamentul negru, taie capătul, împinge filamentul roșu în capul de printare, curăță duza și continuă imprimarea fără oprire umană!

#### 4. Galeria celor 5 Obiecte Emblematice Pixel Art (Paleta 3 Culori)
Profesorul prezintă planșa cu cele 5 modele legendare compuse exclusiv din Negru, Roșu și Alb:
1. ❤️ **Inima Pixelată (Retro Heart)**: Contur negru de bază, umplutură roșie intensă și punct alb de reflexie în colț.
2. 🍎 **Mărul Clasico-Pixel (Pixel Apple)**: Contur negru, pulpă roșie și strălucire albă.
3. 🍄 **Ciuperca Magică (Super Mushroom)**: Pălărie roșie cu buline albe și ochi/contur negru.
4. ⚔️ **Sabia Pixelată (Pixel Sword)**: Gardă și contur negru, lamă roșie energetică și tăiș alb strălucitor.
5. 🧪 **Sticluța cu Poțiune de Viață (Health Potion)**: Corp de sticlă negru, lichid roșu magic și dop/bule albe de lumină.

---

### Etapa 4: Pauză Scurtă & Prezență (Minutele 40 – 50)
- Elevii fac o pauză de 10 minute pentru relaxarea ochilor și hidratare.
- Profesorul notează prezența în catalogul digital și aerisește sala de curs.

---

### Etapa 5: Demonstrația Profesorului în Tinkercad & Slicing Live (Minutele 50 – 65)

Profesorul partajează ecranul pe proiector și parcurge demonstrația pas cu pas:

#### 1. Crearea Paletei Etalon (Trei Cuburi de $1 \times 1\text{ mm}$ la Înălțimi Diferite)
1. Trage un **Box (Solid)** din panoul din dreapta pe planul de lucru.
2. Deschide dimensiunile și setează: `Lungime X = 1 mm`, `Lățime Y = 1 mm`, `Înălțime Z = 2 mm`. Îi atribuie culoarea **Negru** (Baza / Conturul).
3. Creează al doilea cub: `X = 1 mm`, `Y = 1 mm`, `Înălțime Z = 3 mm`. Îi atribuie culoarea **Roșu** (Culoarea principală).
4. Creează al treilea cub: `X = 1 mm`, `Y = 1 mm`, `Înălțime Z = 4 mm`. Îi atribuie culoarea **Alb** (Lumina / Highlight-ul).
5. Așază cele 3 cuburi într-un colț al ecranului – aceasta este **Paleta Magică de Lucru**!

#### 2. Setările Esențiale pentru Precizie Pixelată
- Setează **Snap Grid = 1.0 mm** în colțul din dreapta jos.
- Comută camera pe **Top View** (Vedere de sus) și activează **Switch to Flat (Orthographic) view** (tasta `F5`). În modul ortografic nu există perspectivă distorsionată; planul arată exact ca o foaie curată de matematică!

#### 3. Construcția Rapidă prin Comanda `Alt + Drag` & Tehnica Anti-Deformare
- **⚠️ Capcană Critică de Evitat (Mânerele de Redimensionare vs. Mutarea Corpului)**:
  - Deoarece lucrăm cu cuburi minuscule de $1 \times 1\text{ mm}$, punctele albe și negre de redimensionare (*resize handles*) sunt foarte aproape de centrul piesei. Dacă un copil agață din greșeală un punct alb/negru în loc să apuce corpul cubului, pixelul se va întinde și deforma (de exemplu la $1.4 \times 0.8\text{ mm}$), stricând ireversibil alinierea grilei!
  - **Regula de Aur**: Pixelul se apucă pentru mutare sau `Alt + Drag` **exclusiv din centrul feței colorate** (de corp), niciodată de la colțuri sau de punctele albe.
  - **Alternativa Ultra-Sigură**: Odată selectat cubul, deplasarea se poate face direct cu **săgețile de pe tastatură** (`←`, `↑`, `→`, `↓`), care la `Snap Grid = 1.0 mm` îl mișcă exact din milimetru în milimetru fără riscul de a-l mări sau micșora.
  - **Reflexul de Salvare**: Dacă un pixel a fost deformat din greșeală, elevul apasă imediat **`Ctrl + Z`** (*Undo*)!
- Selectează cubul negru de `Z = 2 mm`.
- Ține apăsată tasta **`Alt`** de pe tastatură și trage de centrul cubului: Tinkercad lasă originalul pe loc și generează instantaneu o copie fidelă!
- Profesorul conturează forma Inimii Pixelate ❤️ plasând cuburile negre unul lângă altul pe grilă.
- Selectează cubul roșu de `Z = 3 mm`, ține apăsat **`Alt`** și umple interiorul inimii.
- Selectează cubul alb de `Z = 4 mm`, ține apăsat **`Alt`** și plasează 2-3 pixeli albi în colțul din stânga-sus pentru a crea reflexia luminii.

#### 4. Opțional: Lăsarea „Pixelului Gol” pentru Ață
- În colțul superior al conturului negru, profesorul arată cum putem lăsa liber un pătrățel de $1 \times 1\text{ mm}$ (sau cum putem folosi un cub *Hole* de $1 \times 1\text{ mm}$ pentru a perfora un pixel). Prin această deschizătură se va putea lega direct o ață sau un șnur fără a adăuga inele voluminoase.

#### 5. Gruparea și Verificarea din Profil
- Selectează întregul model (`Ctrl + A`) și apasă **Group (`Ctrl + G`)**.
- Rotește camera în profil: se văd clar cele **3 trepte de relief** ($2\text{ mm}$, $3\text{ mm}$, $4\text{ mm}$).
- Exportă fișierul ca `.STL`.

#### 6. Felierea Inteligentă în Bambu Studio (Scalare Non-Uniformă & AMS)
Profesorul deschide fișierul `.STL` în Bambu Studio pe proiector:
- Explică: *„Modelul nostru are în Tinkercad doar câțiva milimetri (pentru că am lucrat cu pixeli de 1 mm). În Slicer facem o operațiune de inginerie numită **Scalare Non-Uniformă**:”*
  - Debifează lacătul de proporții uniforme (*Uniform Scale*).
  - Scalează axele **X și Y la 300%** (astfel fiecare pixel devine $3 \times 3\text{ mm}$, iar insigna are dimensiunea perfectă de $\approx 40 \times 40\text{ mm}$).
  - Scalează axa **Z la 75%** (înălțimile devin $1.5\text{ mm}$ negru, $2.25\text{ mm}$ roșu, $3.0\text{ mm}$ alb – făcând piesa subțire, elegantă și foarte rapidă la print!).
- Pe bara verticală de straturi din Bambu Studio, profesorul asignează sloturile AMS:
  - Baza ($0 \to 1.5\text{ mm}$): **Slot 1 (Negru)**
  - Nivelul 2 ($1.5 \to 2.25\text{ mm}$): **Slot 2 (Roșu)**
  - Vârful ($2.25 \to 3.0\text{ mm}$): **Slot 3 (Alb)**
- Trimite fișierul către **Imprimanta 3 (Bambu Lab A1 cu AMS lite)** și apasă **Print**!

---

### Etapa 6: Lucru Individual & Spectacolul Imprimării Live cu AMS (Minutele 65 – 95)
- Elevii încep lucrul individual în conturile lor de Tinkercad.
- Fiecare își alege unul dintre cele 5 modele de pe planșă (Inimă, Măr, Ciupercă, Sabie, Poțiune) sau creează un personaj original retro în cele 3 culori.
- **Dinamica Specială a Clasei**:
  - În timp ce copiii lucrează concentrați, **Imprimanta 3 cu AMS lite lucrează chiar lângă ei**!
  - În jurul minutului 72, sistemul AMS retrage automat filamentul negru și alimentează filamentul roșu. Copiii văd live cum imprimanta schimbă culoarea fără intervenție umană.
  - În jurul minutului 82, AMS-ul trece la filamentul alb pentru finisarea ultimelor detalii.
  - La minutul 88, imprimarea demonstrativă se termină! Profesorul desprinde inima caldă de pe placă și o transmite printre bănci. Fiecare copil o poate pipăi și analiza, înțelegând perfect cum modelul din ecran devine obiect fizic în relief.
- Profesorul trece pe la fiecare elev, verifică alinierea pe grila de 1 mm, prezența celor 3 trepte Z ($2, 3, 4\text{ mm}$) și opțiunea de pixel gol.
- Elevii exportă fișierul final `.STL` pentru producția de săptămâna viitoare.

---

### Etapa 7: Joc Kahoot – Evaluare Interactivă (Minutele 95 – 110)
- Elevii își deschid un tab nou de browser, intră pe `kahoot.it` și introduc PIN-ul generat de profesor.
- Se joacă setul complet de 12 întrebări teoretice din `quiz.md`.
- Întrebările verifică exclusiv principiile teoretice învățate (lipsa cernelii în FDM, schimbarea de culoare pe axa Z, rolul sistemului AMS lite, grila ortografică, logica scalării).
- După fiecare întrebare, profesorul citește explicația pedagogică și felicită elevii pentru răspunsurile corecte.

---

### Etapa 8: Colectarea Riglelor din Lecția 02, Concluzii & Poză de Grup (Minutele 110 – 120)
1. Imprimantele 1 și 2 au finalizat lotul de rigle și semne de carte din Lecția 02.
2. Fiecare elev își ridică festiv rigla fizică personalizată, o testează cu un creion pe hârtie și își admiră numele gravat.
3. Se organizează birourile de lucru și se închid laptopurile.
4. Elevii țin în mâini riglele și piesa demonstrativă AMS pentru **fotografia oficială de grup**.

---

## 🔬 Recapitulare Tehnică pentru Mentor (Cheat Sheet)

```text
[Paletă Tinkercad 1x1mm]
- Bază/Contur Negru : 1 mm x 1 mm x Z=2.0 mm
- Corp Principal Roșu: 1 mm x 1 mm x Z=3.0 mm
- Highlight/Alb     : 1 mm x 1 mm x Z=4.0 mm

[Setări Slicing în Bambu Studio]
- Scalare XY: 200% - 400% (Non-uniform scale)
- Scalare Z : 75% (Grosime finală 3.0 mm, straturi 0.20 mm)
- Schimbare Culoare 1 (Negru -> Roșu): la Z = 1.6 mm
- Schimbare Culoare 2 (Roșu -> Alb)  : la Z = 2.4 mm
```
