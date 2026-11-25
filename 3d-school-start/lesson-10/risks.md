# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 10 [3DS2.10]

Acest document reprezintă instrumentul de analiză preventivă a riscurilor pentru instructorul cursului **3D School Start**, identificând potențialele blocaje mecanice, erori de toleranță FDM și dinamica de clasă pentru copiii de 10–12 ani în cadrul Lecției 10.

---

## 1. Riscuri Tehnice & Puncte Critice de Modelare 3D

### Risc 1: Poziționarea Incorectă a Distanței Dintre Axele Șasiului la Scara 2:1
- **Descriere**: La Scara 2:1, distanța teoretică dintre centrele celor două roți dințate este de 60 mm (rază primitivă roată mică 20 mm + rază primitivă roată mare 40 mm). Pentru o rotire lină, adăugăm 1 mm de joc funcțional (backlash), rezultând o distanță exactă de **61 mm**. Dacă elevul așază axele „din ochi”:
  - Prea aproape (sub 60 mm) $\to$ dinții se strivesc reciproc și mecanismul se blochează complet la prima rotație;
  - Prea departe (peste 63 mm) $\to$ vârfurile dinților nu se ating deloc, iar roata motoare se învârte în gol fără să antreneze roata mică.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul impune utilizarea uneltei Riglă (*Ruler* / tasta `R`) în modul de vizualizare de sus (*Top View* – tasta `5` ortogonal).
  - Elevii setează Snap Grid pe **1.0 mm** (fără fracțiuni zecimale) și plasează primul ax la cota X = 0 mm, iar al doilea ax la cota exactă **X = 61 mm**.
  - La verificare, profesorul măsoară pe ecranul elevului distanța dintre centrele axelor cilindrice.

### Risc 2: Modul (Pitch) Diferit pe Cele Două Roți Dințate
- **Descriere**: În generatorul `Metric Gear`, parametrul `Pitch` stabilește pasul și mărimea fizică a fiecărui dinte. Dacă elevul modifică din greșeală pitch-ul pe roata mare (de ex. `Pitch = 4`), lăsând roata mică pe valoarea `Pitch = 3`, dinții vor avea dimensiuni complet diferite și nu se vor întrepătrunde niciodată.
- **Soluție / Safeguard Pedagogic**:
  - Regula de aur scrisă mare pe tablă: *„Pitch-ul trebuie să fie identic pe ambele roți: Pitch = 3!”*.
  - Elevii sunt ghidați să genereze ambele roți păstrând valoarea implicită `Pitch = 3` și modificând exclusiv numărul de dinți (`12` dinți pentru roata mică, `24` dinți pentru roata mare).

### Risc 3: Axul Vertical Fără Toleranță (Nesetat la 9 mm la Scara 2:1)
- **Descriere**: Gaura din centrul fiecărei roți dințate este calibrată la 10 mm la scara 2:1. Dacă elevul generează un cilindru standard de 10 mm (sau lasă dimensiunea implicită de 20 mm) pentru axele șasiului, la printarea FDM roata se va suda fizic pe ax sau nu va putea fi introdusă niciodată.
- **Soluție / Safeguard Pedagogic**:
  - Regula toleranței la Scara 2:1: `10 mm - 1 mm = 9 mm`.
  - Elevii redimensionează ambele axe cilindrice la exact `9 x 9 mm` (înălțime 13 mm) și le verifică înainte de gruparea finală cu baza șasiului.

### Risc 4: Omiterea Scalării la 50% în Bambu Studio
- **Descriere**: Modelele realizate în clasă sunt proiectate la Scara 2:1 pentru a permite copiilor să lucreze doar cu numere întregi pe grila de 1 mm. Dacă profesorul/mentorul uită să aplice scalarea uniformă la **50%** în Bambu Studio la pregătirea plăcii de print, brelocul va fi printat la dimensiune dublă (136 mm lungime în loc de 68 mm), consumând filament dublu și timp de print excesiv.
- **Soluție / Safeguard Pedagogic**:
  - Pasul de scalare la 50% este inclus explicit în procedura profesorului din `README.md`.
  - În Bambu Studio: Selectare completă (`Ctrl + A`) $\to$ Instrumentul *Scale* (tasta `S`) $\to$ bifat *Uniform Scale* $\to$ introducere valoare `50%`.
  - Scalarea la 50% reduce automat toleranța de 1 mm la toleranța fizică ideală FDM de **0.5 mm**, garantând o rotire lină fără joc excesiv.

### Risc 5: Urechea de Breloc Prea Subțire (Rupere în Buzunar)
- **Descriere**: Elevii ar putea avea tendința de a micșora inelul pentru chei. La Scara 2:1, peretele inelului trebuie să fie suficient de gros pentru ca, după scalarea la 50%, să rămână rezistent mecanic.
- **Soluție / Safeguard Pedagogic**:
  - Dimensiunile impuse la Scara 2:1: cilindru plin de 20 x 20 mm, găurit cu un cilindru Hole de 10 x 10 mm (grosime perete de 5 mm la Scara 2:1, care devine 2.5 mm la printare).
  - Inelul este suprapus cel puțin 4 mm peste corpul bazei pentru o fuziune monolitică perfectă.

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 6: Rătăcirea în Meniul Formelor din Tinkercad
- **Descriere**: Copiii de 10 ani se pot pierde căutând generatorul de roți dințate printre zecile de categorii din Tinkercad (`Creatures & Characters`, `Hardware`, `Everyday Objects`).
- **Soluție / Safeguard Pedagogic**:
  - Profesorul proiectează pașii exacți de navigare: click pe `Basic Shapes` $\to$ click pe `Shape Generators` $\to$ click pe `All` $\to$ căutare după forma `Metric Gear` (sau scrierea directă a cuvântului `gear` în bara de căutare a formelor).

### Risc 7: Frustrarea la Debavurarea Capacelor de Blocare
- **Descriere**: La asamblarea fizică, capacele de retenție (care au cavitate de 4.5 mm pe ax de 4.5 mm după scalare) trebuie să intre presate ferm (*press-fit*). Dacă imprimanta a produs un mic "elephant foot" la primul strat, capacul poate intra greu.
- **Soluție / Safeguard Pedagogic**:
  - Mentorul are la îndemână o unealtă simplă de debavurat (*deburring tool*) sau o pensetă pentru a curăța rapid buza interioară a capacelor înainte de presare.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Spinner-ele 3D din Lecția 09 sunt printate, curățate și sortate pe tăvițe pentru testare.
- [ ] Monedele demonstrative și inelele metalice de breloc sunt pregătite la catedră.
- [ ] Mostra didactică cu roțile mari de 12 și 24 dinți (Scara 2:1) funcționează demonstrativ pe birou.
- [ ] În Tinkercad Classroom, grila de lucru este setată pe **Snap Grid: 1.0 mm** (fără subdiviziuni zecimale).
- [ ] Profilul Bambu Studio are presetată scalarea uniformă la **50%** pentru fișierele STL exportate.
- [ ] Înălțimea de strat în Bambu Studio este setată la 0.20 mm cu 3 pereți perimetrici (*wall loops*).
- [ ] Quiz-ul Kahoot de 10 întrebări este testat și gata de lansare în ultimele 10 minute.