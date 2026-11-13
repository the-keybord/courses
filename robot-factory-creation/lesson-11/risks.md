# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 11 [RBF1.11]

Acest document reprezintă un instrument critic de analiză preventivă a riscurilor pentru instructorul cursului **Robot Factory: Creation**, evaluând potențialele blocaje mecanice, întârzieri de fabricație și surse de frustrare pentru elevii de 11–14 ani în timpul Lecției 11.

---

## 1. Riscuri Tehnice & Puncte Critice de Fabricație

### Risc 1: Blocajul Timpului de Imprimare (Imprimantele nu pot printa pentru 12 elevi simultan)
- **Descriere**: O sesiune de printare pentru 12 perechi de biele și bumpere durează între 2 și 3 ore pe 2–3 imprimante Bambu Lab. Dacă elevii ar aștepta ca piesele lor să se printeze în timpul celor 120 de minute ale orei, peste 70% din clasă ar fi inactivă.
- **Soluție / Safeguard Pedagogic**: 
  - Profesorul pre-printează în avans un set complet de biele și bumpere în culorile alianțelor înainte de oră.
  - În timpul orei, elevii parcurg complet procesul CAM în Bambu Studio (export Onshape 3MF, orientare, setare infill Gyroid, feliere), lansează 1–2 plăci demonstrative pe imprimantele din clasă pentru a vedea procesul fizic, dar primesc imediat piesele gata pre-fabricate pentru a începe montajul mecanic fără timpi morți.

### Risc 2: Ruperea Ochiurilor Bielei la Strângerea Șuruburilor
- **Descriere**: La vârsta de 11–14 ani, elevii au tendința de a strânge șuruburile cu forță maximă. Plasticul PLA printat la 3 mm grosime poate crăpa dacă șurubul este forțat după atingerea capătului de filet, sau dacă biela este strânsă atât de tare încât nu mai poate pivota pe fuzete.
- **Soluție / Safeguard Pedagogic**:
  - Regula "Finger-Tight & Half Turn Back": mentorul demonstrează la ecran cum se strânge șurubul până la contact, urmat de o rotire inversă de 180° pentru a asigura rotirea liberă a articulației.
  - La catedră se țin 5 biele de rezervă gata printate pentru înlocuire instantanee în caz de fisurare.

### Risc 3: Nepotrivirea Toleranțelor la Găurile Șuruburilor (Gaură prea strâmtă / prea largă)
- **Descriere**: În funcție de contracția termică a filamentului PLA, găurile de 2.2 mm sau 3.2 mm pot ieși mai strâmte cu 0.2 mm, blocând șurubul.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul are pe masa de lucru o mică trusă cu un alezor manual sau o spirală subțire de 2.5 mm / 3.2 mm pentru lărgirea rapidă a orificiilor dacă un elev întâmpină rezistență mecanică excesivă.

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 4: Asimetria Virajului și Frustrarea "Mașina Trage Doar spre Stânga"
- **Descriere**: Elevii sar peste pasul de centrare electrică a servomotorului la 90°, montând biela când servo-ul se află la un unghi extrem. Când pornesc mașina, aceasta virează violent într-o singură parte și nu răspunde la comanda opusă.
- **Soluție / Safeguard Pedagogic**:
  - Checkpoint obligatoriu cu profesorul sau liderul Forge Ranger înainte de înșurubarea definitivă: servomotorul este pornit scurt la curent pentru a se auto-centra, iar poziția perpendiculară a brațului este validată vizual.

### Risc 5: Plictiseală în Timpul Așteptării la Pista de Slalom
- **Descriere**: Dacă la traseul de slalom concurează câte o singură mașină, restul de 10–12 elevi își pot pierde concentrarea și pot începe să ruleze mașinile necontrolat prin sală.
- **Soluție / Safeguard Pedagogic**:
  - Împărțirea rolurilor active la pistă: în timp ce un elev pilotează mașina, coechipierul din alianță este Comisar de Traseu (rearanjează jaloanele atinse), iar un membru dintr-o altă alianță acționează cronometrul oficial la videoproiector.
  - Organizarea a două mini-zone: Zona de Antrenament Liber (paddock / teste pe cerc mic) și Zona de Cursă Oficială Cronometrată.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Un stoc de 12–15 biele de direcție și bumpere pre-printate există pe masa de catedră înainte de intrarea elevilor în clasă.
- [ ] Cel puțin o imprimantă Bambu Lab A1 este gata cu filament PLA încărcat pentru demonstrația live de feliere și start print.
- [ ] Bateriile Li-Ion ale triciclurilor sunt verificate cu multimetrul / încărcate la peste 3.8V pentru a preveni încetinirea motoarelor.
- [ ] Bateriile telecomenzilor radio 2.4 GHz sunt funcționale și nu există confuzie între telecomenzile împerecheate ale colegilor (etichete cu nume pe fiecare transmițător).
- [ ] Pista de slalom este delimitată cu bandă adezivă pe podea înainte de minutul 90 al lecției.
