# Analiză de Risc Didactic & Tehnic (Pre-Mortem): Lecția 05 [RBF2.5]

Acest document reprezintă o analiză critică preventivă a potențialelor blocaje mecanice, erori de montaj și capcane pedagogice pentru **Lecția 05: Metode de Măsurare a Distanței & Asamblarea Șasiului Mecanic RF 2.0**.

---

## 1. Riscuri Tehnice & Hardware

| Risc Tehnic Identificat | Severitate | Cauză Tehnică | Soluție / Măsură Preventivă pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Strângerea excesivă a șuruburilor M3 pe piesele 3D** | Ridicată | Elevii forțează șurubelnița și pot crăpa urechile de prindere din plastic printat ale ramei sau suportului de driver. | Profesorul demonstrează tehnica corectă: strângere fermă la mână "la simț", fără forțare după blocarea piuliței. |
| **Montarea inversată a motoarelor TT** | Medie | Motoarele sunt așezate cu axul orientat spre interior în loc de exterior sau cu firele strivite sub corpul motorului. | Se face o oprire de 30 de secunde în care toți elevii ridică rama în aer pentru inspecție vizuală simultană. |
| **Fire ciupite sau agățate în zona axelor roților** | Ridicată | Cablurile de la motoare sau driver sunt lăsate libere și pot atinge axul în rotație, rupându-se în timpul testelor. | Se impune utilizarea colierelor de plastic (*zip ties*) și a canalelor de rutare integrate în rama 3D. |
| **Conectarea greșită a polarității la driverul TB6612FNG** | Ridicată | Inversarea firelor VM (plus baterie) și GND poate distruge etajul de putere MOSFET al driverului. | Profesorul verifică personal conexiunile de alimentare înainte de orice conectare a bateriei pe banc. |

---

## 2. Riscuri Pedagogice & Gestionarea Clasei

| Risc Pedagogic | Impact | De Ce Apare? | Strategie de Salvare / Dinamică de Lucru |
| :--- | :---: | :--- | :--- |
| **Prelungirea teoriei dincolo de 15 minute** | Ridicată | Discuțiile despre LiDAR și mașini autonome pot deveni prea lungi, scăzând timpul necesar asamblării mecanice. | Prezentarea este limitată strict la 4 slide-uri concise; detaliile avansate sunt lăsate pentru lecțiile următoare. |
| **Pierderea piulițelor mici M3 de pe mese** | Medie | Piulițele metalice cad ușor de pe banc și se rostogolesc pe podea. | Fiecare banc primește un mic tăviță sau capac magnetic pentru șuruburi și piulițe. |
| **Diferențe mari de îndemânare mecanică** | Medie | Unii elevi montează motoarele în 3 minute, în timp ce alții au dificultăți în alinierea piuliței pe șurub. | Se aplică principiul de mentorat între colegii de bancă sau profesorul intervine direct cu cleștele de susținere a piuliței. |

---

## 3. Checklist Rapid de Verificare pentru Profesor (Quick Triage)

Înainte de finalul etapei practice, profesorul verifică fiecare robot:
1. [ ] **Rigiditate Mecanică**: Motoarele TT sunt paralele și fixate ferm, fără joc în locașurile ramei 3D.
2. [ ] **Libertate de Rotație**: Axele albe ale reductoarelor se învârt liber, fără frecare pe pereții de plastic.
3. [ ] **Fixare Suporturi**: Piesa suport pentru TB6612FNG și suportul de switch sunt blocate în poziție.
4. [ ] **Cable Management**: Firele sunt strânse în mănunchi cu coliere și nu atârnă în zona roților.
