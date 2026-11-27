# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 10 [3DS2.10]

Acest document reprezintă instrumentul de analiză preventivă a riscurilor pentru instructorul cursului **3D School Start**, identificând potențialele blocaje mecanice, erori de toleranță FDM și dinamica de clasă pentru copiii de 10–12 ani în cadrul Lecției 10.

---

## 1. Riscuri Tehnice & Puncte Critice de Modelare 3D

### Risc 1: Frustrarea Legată de Testarea în Tinkercad Sim Lab (Eroarea de Coliziune a Formelor Procedurale)
- **Descriere**: În Tinkercad, copiii sunt obișnuiți să apese pe butonul de fizică *Sim Lab* (pictograma măr) pentru a testa mișcarea pieselor. Însă formele generate prin scripturi (`Parametric Gear nonInvolute circular tooth profile`) nu au o plasă de coliziune concavă fidelă în simulator. Motorul de fizică tratează interiorul roții ca o masă solidă convexă, ignorând orificiul central de 6 mm. Când simularea pornește, axul de 5 mm și roata sunt detectate ca fiind suprapuse în același volum solid, ceea ce face ca roata să se blocheze violent sau să fie aruncată în aer! Elevii pot intra în panică, crezând că au greșit modelul 3D.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul avertizează clasa în avans la Pasul 3 și Pasul 5: *„Nu vă speriați dacă Sim Lab nu rotește roțile! Simulatorul are o limită de calcul pe formele procedurale și nu «vede» gaura din roată. În realitate, pe imprimanta Bambu Lab A1, orificiul este perfect gol, iar jucăria se va învârti impecabil!”*.
  - Se explică diferența esențială dintre simulatoare software și prototiparea fizică din lumea reală.

### Risc 2: Dezaxarea Celor Două Baze Cilindrice la Construcția Șasiului Sandwich
- **Descriere**: Dacă elevul încearcă să așeze cutia de legătură sau axele „din ochi”, fără să alinieze cilindrii de bază pe centrele roților folosind unealta *Align* (tasta `L`), distanța dintre axe nu va corespunde distanței optime de angrenare:
  - Dacă axele sunt prea apropiate $\to$ dinții se strivesc și se blochează;
  - Dacă axele sunt prea depărtate $\to$ dinții nu se ating deloc.
- **Soluție / Safeguard Pedagogic**:
  - Metoda vizuală demonstrată: cilindrul portocaliu de 22 x 22 mm este centrat exact sub orificiul roții mari, iar al doilea cilindru sub roata mică.
  - Cutia de legătură de 22 mm lățime unește tangent cei doi cilindri, formând capsula perfect centrată pe axele roților.

### Risc 3: Modul (Pitch) Diferit pe Cele Două Roți Dințate
- **Descriere**: În generatorul `Parametric Gear`, parametrul `pitch` stabilește mărimea dintelui. Dacă elevul modifică din greșeală pitch-ul pe una dintre roți (de exemplu `pitch = 5`), lăsând cealaltă roată pe `pitch = 4`, dinții vor avea dimensiuni incompatibile și mecanismul nu se va roti.
- **Soluție / Safeguard Pedagogic**:
  - Regula de aur proiectată pe ecran: *„Pitch = 4 pe ambele roți!”*.
  - Elevii modifică doar numărul de dinți (`# of teeth`: 13 și 21, sau 12 și 24), păstrând toți ceilalți parametri identici.

### Risc 4: Omiterea Scalării la 70% în Bambu Studio
- **Descriere**: În Tinkercad modelăm la dimensiuni confortabile (orificiu de 6 mm, ax de 5 mm, lățime capsulă 22 mm). Dacă profesorul uită să aplice scalarea uniformă la **70%** la feliere, brelocul va fi printat la dimensiune mare, consumând filament în plus și ocupând mult spațiu pe platoul imprimantei.
- **Soluție / Safeguard Pedagogic**:
  - Pasul de scalare este inclus în checklist-ul de printare: Selectare totală (`Ctrl + A`) $\to$ Scale (`S`) $\to$ Uniform Scale $\to$ **70%**.
  - La 70%, toleranța de 1 mm din Tinkercad se reduce la aproximativ **0.7 mm fizic**, oferind o rotire silențioasă fără gripare mecanică.

### Risc 5: Înălțimea Incorectă a Axelor pe Placa Inferioară
- **Descriere**: Dacă axul este făcut prea scurt (de exemplu 6 mm, egal cu înălțimea roții), el nu va ajunge să intre în orificiul plăcii superioare, iar carcasă sandwich nu se va putea închide. Dacă este prea lung (peste 15 mm), va ieși inestetic în afară.
- **Soluție / Safeguard Pedagogic**:
  - Cota impusă: **13 mm înălțime** (4 mm bază + 6 mm roată + 1 mm joc vertical + 2 mm fixare în placa superioară).

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 6: Căutarea Generatorului de Roți în Meniurile Tinkercad
- **Descriere**: Unii elevi de 10 ani se pot pierde prin categoriile de forme din Tinkercad.
- **Soluție / Safeguard Pedagogic**:
  - Calea directă arătată la videoproiector: `Shape Generators` $\to$ `All` $\to$ căutare după cuvântul `gear`.
  - Mentorul asistă rapid elevii care nu găsesc forma în primele 2 minute.

### Risc 7: Montarea Inversată a Plăcii Superioare
- **Descriere**: Dacă orificiul pentru inelul de breloc este făcut pe un capăt la placa de jos și pe celălalt capăt la placa de sus, ele nu se vor suprapune corect la montarea inelului metalic.
- **Soluție / Safeguard Pedagogic**:
  - Recomandarea de a duplica (`Ctrl + D`) placa inferioară gata găurită, ștergând doar axele pline și înlocuindu-le cu cilindri Hole în aceleași poziții.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Spinnerele 3D din Lecția 09 sunt printate, curățate și pregătite cu monede de 1 Leu pentru concurs.
- [ ] Inelele metalice de breloc (keyring 20–25 mm) sunt pe masa demonstrativă.
- [ ] Mostra didactică de breloc sandwich funcțional este testată și pusă la îndemâna elevilor.
- [ ] Generatorul `Parametric Gear nonInvolute circular tooth profile` este localizat în Tinkercad.
- [ ] Explicația despre limitarea Sim Lab este pregătită pentru a preveni confuzia la clasă.
- [ ] Profilul Bambu Studio are presetată scalarea la **70%** (cu strat 0.20 mm și 3 pereți perimetrici).
- [ ] Quiz-ul Kahoot de 10 întrebări este testat și gata de rulare.