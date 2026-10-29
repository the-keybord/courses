# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 06 [3DS2.6] – Moneda de 1 Ban & Moneda de 1.000.000 Lei

---

## 📌 Context & Scopul Documentului
Acest document analizează riscurile tehnice și pedagogice pentru **Lecția 06 [3DS2.6]**, în care elevii pun la imprimat medaliile de aur din Lecția 05, pregătesc panglicile de gât și modelează două monede în Tinkercad: versiunea mărită a monedei de **1 Ban** (`50 x 50 mm`) și propriul design original al monedei de **1.000.000 Lei**.

---

## ⚠️ 1. Riscuri la Modelarea celor Două Monede în Tinkercad

### A. Scrierea numărului `1000000` cu zerouri prea înghesuite sau microscopice
- **Scenariu**: Când elevul scrie `1000000 LEI` pe un singur rând în interiorul monedei de `55 – 60 mm`, numărul are 7 cifre și devine foarte lung. Ca să încapă în cerc, elevul îl micșorează atât de mult încât grosimea liniilor cifrelor scade sub `0.4 mm` (diametrul duzei imprimantei), iar la felierea în Bambu Studio zerourile dispar sau se lipesc între ele.
- **Prevenire & Ghidare**:
  - Profesorul oferă 3 variante clare de așezare în pagină pentru moneda de un milion:
    1. Pe 3 rânduri suprapuse: cifra **`1`** mare sus, cuvântul **`MILION`** la mijloc și **`LEI`** jos;
    2. Sau numărul **`1000000`** scris mare de la un capăt la altul al diametrului central (`45 mm` lățime) cu fontul `Sans` sau `Mono` și cuvântul **`LEI`** dedesubt;
    3. Sau abrevierea modernă **`1M LEI`** înconjurată de steluțe și coroană.

### B. Cilindrul de bază rămâne colțuros (`Sides = 20`)
- **Scenariu**: În Tinkercad, forma `Cylinder` are implicit doar `20` de laturi, făcând moneda de 1 ban să arate ca un poligon cu fațete vizibile în loc de un cerc neted.
- **Prevenire & Ghidare**:
  - La demonstrație, primul pas după tragerea cilindrului și a inelului `Tube` este tragerea glisorului **`Sides` la maxim (`64`)** și a glisorului `Bevel` la `0`.

### C. Bordura (`Tube`) nu este aliniată concentric cu pastila monedei
- **Scenariu**: Elevul plasează manual din ochi inelul `Tube` peste cilindrul de bază, lăsând o margine groasă pe stânga și una ieșită în afară pe dreapta.
- **Prevenire & Ghidare**:
  - Utilizarea obligatorie a comenzii **`Align (L)`**: se selectează ambele forme (`Cylinder` + `Tube`) și se apasă cele două buline centrale pe orizontală și verticală.

### D. Utilizarea Generatorului `Curved Words` pentru `REPUBLICA MOLDOVA` și Modelarea din 2 Părți
- **Scenariu**:
  1. Unii elevi nu găsesc `Curved Words` în meniul de forme de bază (`Basic Shapes`);
  2. Dacă ar încerca să pună relief pe ambele fețe ale aceluiași disc în Tinkercad (întorcând moneda la 180°), fața de jos nu ar mai sta plată pe patul imprimantei 3D și ar necesita suporturi inestetice.
- **Prevenire & Ghidare**:
  - Construiți moneda din **2 jumătăți alăturate pe planul de lucru** (fiecare cu baza de `1.8 mm` și relieful de `3.0 mm`): elevii fac mai întâi discul de bază + bordura `Tube`, îl duplică cu `Ctrl + D` și lucrează ambele fețe (Fața cu `1 BAN` și Spatele cu `REPUBLICA MOLDOVA` + Stema) cu fața în sus!
  - Astfel, în **Bambu Studio**, ambele jumătăți se imprimă 100% plat pe placa PEI fără suporturi, iar după imprimare se lipesc spate în spate într-o monedă perfectă cu două fețe în relief.

### E. Blocaj creativ la reproducerea Stemei (încercarea de a copia fiecare detaliu mic)
- **Scenariu**: Unii elevi perfecționiști pot pierde 20 de minute încercând să reproducă identic fiecare pană a acvilei din Stema de Stat sau pot desena linii mult prea subțiri care nu se vor vedea la imprimare.
- **Prevenire & Ghidare**:
  - Spuneți clar de la început: *„Nu trebuie să repetăm stema fix în fix! La imprimanta 3D, un simbol simplificat și îngroșat arată de 10 ori mai bine!”*
  - Îndrumați elevii să folosească unealta **`Sketch` / `Scribble`** pentru a desena liber o schiță rapidă și groasă (un scut, două coarne arcuite de bour și o steluță între ele) sau 3–4 forme geometrice de bază.

### F. Amestecarea celor două monede la gruparea finală (`Ctrl + G`)
- **Scenariu**: Elevul selectează tot planul de lucru cu `Ctrl + A` și apasă `Ctrl + G`, unind moneda de 1 ban și moneda de 1.000.000 lei într-un singur obiect dublu care este mai greu de rearanjat individual pe placa de imprimare în Bambu Studio.
- **Prevenire & Ghidare**:
  - Elevii grupează separat **Moneda de 1 Ban** (în stânga planului de lucru) și separat **Moneda de 1.000.000 Lei** (în dreapta planului de lucru), lăsând o distanță de `10 – 15 mm` între ele.

---

## 🖨️ 2. Riscuri la Imprimarea Medaliilor de Aur (Etapa 2 & Etapa 8)

### A. Timpul de imprimare al medaliilor din Lecția 05 depășește 90 de minute
- **Scenariu**: Dacă pe o singură imprimantă Bambu Lab A1 sunt puse prea multe medalii de `60 x 60 mm` cu infill mare, printul poate dura peste 100 de minute și nu este gata la minutul 110.
- **Prevenire & Ghidare**:
  - Distribuiți medaliile egal pe toate imprimantele Bambu Lab A1 din laborator, folosind profilul `0.20 mm Standard`, `Infill = 15% Grid/Gyroid` și `2 Wall Loops`, astfel încât lotul să se finalizeze în maximum `75 – 85 de minute`.

### B. Destrămarea capetelor panglicilor textile la introducerea prin urechiușă
- **Scenariu**: Panglica de satin tăiată drept se poate destrăma la capăt când copiii încearcă să o strecoare prin fanta de `12 x 3 mm` a medaliei.
- **Prevenire & Ghidare**:
  - Tăiați capetele panglicilor **în unghi ascuțit (în diagonală la 45°)** sau în formă de „V”: vârful ascuțit intră instantaneu prin urechiușa medaliei fără să se agațe!

---

## ✅ 3. Quick Verification Checklist pentru Profesor

- [ ] **Min 15**: Medaliile de aur din Lecția 05 sunt pornite la imprimat cu filament Silk Gold PLA; panglicile textile sunt tăiate în unghi la capăt.
- [ ] **Min 40**: Prezentarea s-a încheiat; elevii știu cum au apărut banii, istoria banilor în Moldova, unde este monumentul de 1 ban și care sunt părțile unei monede.
- [ ] **Min 65**: Demonstrația în Tinkercad s-a încheiat; diferența dintre baza de `3.0 mm` și relieful de `4.5 mm` este clară.
- [ ] **Min 80**: Toți elevii au finalizat și grupat propria versiune a monedei mărite de **1 BAN** (`50 x 50 mm`).
- [ ] **Min 100**: Fiecare elev a creat și grupat designul său original pentru moneda de **1.000.000 LEI**, cu cifre lizibile și fără elemente plutitoare.
- [ ] **Min 110**: Jocul Kahoot (12 întrebări din `quiz.md`) este finalizat.
- [ ] **Min 120**: Medaliile de aur răcite sunt desprinse de pe imprimante, panglicile sunt montate, iar clasa face fotografia de grup cu medaliile la gât!

