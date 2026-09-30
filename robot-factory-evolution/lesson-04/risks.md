# Analiză de Riscuri & Pre-Mortem: Lecția 04 [RBF2.4] – Hardware Rebuild & Cable Management

Acest document reprezintă analiza de riscuri pedagogice și tehnice (conform **Regulii 14** din `AGENTS.md`), identificând potențialele blocaje, riscuri de deteriorare hardware sau frustrare tehnică în livrarea reală la clasă a Lecției 04, alături de soluțiile preventive recomandate profesorului.

---

## 1. Puncte Critice & Riscuri de Fricțiune în Sală

### ⚠️ Risc 1: Deteriorarea Cablurilor la Dezizolare (Stripping)
- **Ce poate eșua**: Elevii apasă prea tare cu cleștele de dezizolat (*wire stripper*) pe o mărime greșită (ex: taie pe canalul de 20 AWG în loc de 24 AWG), retezând complet lițele de cupru (*stranded wire*). Cablul devine prea scurt pentru a ajunge de la motor la shield.
- **Soluție / Safeguard**:
  - Profesorul face o scurtă calibrare la început: setează cleștele pe canalul exact de 24 AWG sau demonstrează tehnica de rotație ușoară fără forțare.
  - Se pune la dispoziție o bobină de rezervă de cablu colorat 24 AWG pentru înlocuire rapidă.

---

### ⚠️ Risc 2: Polaritatea Inversată și Scurtcircuit la Baterie (Brownout / Damage)
- **Ce poate eșua**: La reconectarea alimentării pe shield sau breadboard, un elev inversează linia de $VCC$ (roșu) cu $GND$ (negru), riscând deteriorarea regulatorului de tensiune sau a microcontrolerului.
- **Soluție / Safeguard**:
  - Regula absolută: **Bateria se deconectează complet în timpul oricărei modificări de cablare**.
  - Profesorul inspectează vizual linia de alimentare înainte de a permite elevilor să comute întrerupătorul pe ON (*Power Checkpoint*).

---

### ⚠️ Risc 3: Prinderea Cablurilor în Piesele în Mișcare (Kinematic Interference)
- **Ce poate eșua**: Cablurile servo-motoarelor sau ale motoarelor de tracțiune sunt lăsate libere. În timpul deplasării robotului, roțile sau brațele mobile agață firele, smulg conectorii DuPont din header pins sau blochează roțile dințate.
- **Soluție / Safeguard**:
  - Utilizarea obligatorie a colierelor de plastic (*zip ties*) și a canalelor de rutare prin șasiu.
  - Testul mecanic de verificare: înainte de alimentare, elevii rotesc manual roțile și mecanismele la $360^\circ$ pentru a se asigura că niciun fir nu atinge piesele rotative.

---

### ⚠️ Risc 4: Supraîncălzirea la Aplicarea Tubului Heat Shrink
- **Ce poate eșua**: Elevii țin sursa de căldură prea aproape sau prea mult timp pe tubul termocontractil (*heat shrink*), topind izolația cablurilor învecinate sau componentele din plastic PLA imprimate 3D ale șasiului.
- **Soluție / Safeguard**:
  - Profesorul desemnează o singură zonă de încălzire (*Heat Station*) la masa tehnică sau supervizează direct aplicarea căldurii la distanță de siguranță de 5–8 cm.

---

## 2. Tabel Rapid de Verificare pentru Profesor (Quick Checklist)

| Etapă | Ce verifici la fiecare echipă? | Indicator de Succes |
| :--- | :--- | :--- |
| **Inspectare Fire** | Lițele de cupru (*stranded wire*) sunt întregi, fără fire retezate? | Conexiunea electrică este stabilă și rezistentă la vibrații. |
| **Izolație & Heat Shrink** | Nicio îmbinare metalică nu este expusă în aer? | Risc zero de scurtcircuit accidental la contactul cu șasiul. |
| **Rutare Cabluri** | Toate firele sunt compactate în harness și fixate cu zip ties? | Niciun fir nu atinge roțile, reductorul sau brațele mobile. |
| **Polaritate Alimentare** | $VCC$ este strict pe Roșu, iar $GND$ este pe Negru? | Verificare vizuală confirmată înainte de cuplarea bateriei. |
| **Test Mecanic** | Robotul se deplasează liber fără tensiune pe conectori? | Conectorii DuPont rămân ferm fixați în pini în mișcare. |
