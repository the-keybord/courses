# Analiză de Riscuri & Pre-Mortem: Lecția 02 [3DS2.2] – Ingineria Preciziei în CAD & Rigla Personalizată

Acest document reprezintă analiza de riscuri pedagogice și tehnice (conform **Regulii 14** din `AGENTS.md`), identificând potențialele blocaje, riscuri de plictiseală sau frustrare tehnică în livrarea reală la clasă a Lecției 02, alături de soluțiile preventive recomandate profesorului.

---

## 1. Puncte Critice & Riscuri de Fricțiune în Sală

### ⚠️ Risc 1: Pornirea Imprimării la Începutul Orei (Timp Mort la Minutul 00–10)
- **Ce poate eșua**: Profesorul încearcă să adune fișierele `.stl` din conturile copiilor, să rezolve erori de geometrie sau să felieze proiectele din Lecția 01 pe loc în primele 10 minute. Se creează 10–15 minute de haos și timp mort în clasă, iar copiii își pierd concentrarea.
- **Soluție / Safeguard**:
  - Profesorul importă toate modelele *Cheese Keyring* pe o placă unică în Bambu Studio **înainte de începerea orei** (în cadrul checklist-ului operațional).
  - La minutul 00:00 se apasă direct comanda *Print*. Întreaga operațiune durează maximum 2 minute, iar imprimanta Bambu Lab A1 lucrează silențios pe fundal pe durata întregii sesiuni.

---

### ⚠️ Risc 2: Capcana Teoriei CAD Prea Abstracte (Istorie & Definiții)
- **Ce poate eșua**: Prezentarea istoriei CAD (anii 1960, Ivan Sutherland, Pierre Bézier) și a toleranțelor poate deveni plictisitoare dacă este livrată ca o prelegere academică pasivă. Copiii de 10–12 ani nu rezonează cu definiții de dicționar.
- **Soluție / Safeguard**:
  - **Poveste captivantă și demonstrație fizică**: Profesorul prezintă contrastul dramatic: *„Cum desenau inginerii rachete NASA pe 500 de foi uriașe pe podea vs. un clic pe ecran astăzi”*.
  - **Manipulare directă a instrumentelor**: Profesorul plimbă șublerul digital printre bănci, permițând fiecărui elev să măsoare un obiect real (o monedă, grosimea unui deget, o piesă LEGO).
  - Folosirea formatului interactiv din `presentation_interactive.md`, unde elevii citesc pe rând propozițiile clare de pe ecran.

---

### ⚠️ Risc 3: Pierderea Cotelor Exacte prin Tragerea cu Mouse-ul
- **Ce poate eșua**: Cursanții obișnuiți din primele lecții să redimensioneze formele trăgând de mânerele albe/negre ale cubului vor încerca să nimerească `110 mm` sau `1.6 mm` din mouse, pierzând mult timp și obținând valori inexacte (ex: `109.83 mm`, `1.47 mm`).
- **Soluție / Safeguard**:
  - **Regula de Aur a Inginerului**: Profesorul interzice explicit tragerea manuală cu mouse-ul pentru acest proiect.
  - Se demonstrează și se repetă regula: *Un clic pe mâner $\rightarrow$ clic direct pe numărul negru $\rightarrow$ tastare valoare exactă $\rightarrow$ tasta Enter*.
  - Activarea instrumentului **Ruler (`R`)** pe planul de lucru pentru a vizualiza instantaneu toate cotele.

---

### ⚠️ Risc 4: Dezalinierea Gradațiilor la Multiplicarea cu `Ctrl + D`
- **Ce poate eșua**: Comanda *Duplicate and Repeat* (`Ctrl + D`) este extrem de sensibilă în Tinkercad. Dacă un elev dă clic pe fundal sau pe un alt corp după prima deplasare de 10 mm, memoria de repetare a deplasării se pierde. Elevul va apăsa `Ctrl + D` și toate liniile noi se vor suprapune în același loc sau vor sări haotic.
- **Soluție / Safeguard**:
  - Profesorul explică „regula de aur `Ctrl + D`”: *Selectăm linia $\rightarrow$ `Ctrl + D` o singură dată $\rightarrow$ mutăm cu săgeata/numărul cu exact 10 mm $\rightarrow$ NU dăm clic nicăieri altundeva $\rightarrow$ apăsăm `Ctrl + D` consecutiv de 9 ori*.
  - Dacă s-a greșit, elevul dă imediat `Ctrl + Z` (Undo) sau șterge liniile greșite și reia pasul de la linia de start.

---

### ⚠️ Risc 5: Decupaje Prea Subțiri sau Fragilizarea Riglei (Problema Grosimii pe Z)
- **Ce poate eșua**:
  1. Elevii fac decupaje stencils uriașe care taie rigla în două bucăți separate.
  2. Elevii creează text în relief de 5 mm grosime, făcând ca rigla să nu mai poată fi folosită pe foaie sau în carte (nu mai este plată).
  3. Liniile de font sau decupajele au sub 0.4 mm lățime și dispar complet la imprimarea 3D cu duza de 0.4 mm a imprimantei Bambu Lab A1.
- **Soluție / Safeguard**:
  - Profesorul impune constrângerea de design: *„Rigla este un instrument plat! Toate textele și șabloanele sunt fie găuri (Hole), fie gravate adânc de maxim 0.4 mm în corp”*.
  - Se verifică ca marginea superioară a riglei să aibă cel puțin o bandă continuă de 5 mm de plastic plin pentru rezistență mecanică.

---

### ⚠️ Risc 6: Blocajul la Provocarea Raportorului Semicircular (Jocul Final)
- **Ce poate eșua**: Elevii încearcă să rotească liniile gradațiilor fără a plasa axa de rotație în centrul semicercului, rezultând linii împrăștiate aiurea pe planul de lucru.
- **Soluție / Safeguard**:
  - Profesorul demonstrează pe scurt pe ecran trucul tehnic: gruparea liniei de gradație cu un corp auxiliar centrat pe originea semicercului sau rotirea la pași standard de $15^\circ / 30^\circ$ folosind roata unghiulară interioară din Tinkercad.
  - Această etapă este tratată ca o provocare bonus / joc de echipă fără presiune de notare.

---

## 2. Tabel Rapid de Verificare pentru Profesor (Quick Checklist)

| Etapă | Ce verifici la fiecare elev? | Indicator de Succes |
| :--- | :--- | :--- |
| **Baza Riglei** | Dimensiunile sunt exact `110 mm` lungime, `30 mm` lățime și `1.6 mm` înălțime pe Z? | Baza este dreptunghiulară, plată și flexibilă, perfectă ca semn de carte. |
| **Gradații 10 cm** | Liniile mari sunt plasate la fiecare 10 mm (de la 0 la 10 cm)? | Distanțele sunt egale, iar scala măsoară exact 100 mm. |
| **Planeitate Z** | Niciun text sau formă decorativă nu iese în relief peste cota de 1.6 mm? | Spatele și fața sunt netede, permițând trasarea de linii drepte cu creionul. |
| **Stencils & Decupaje** | Formele decupate lasă o zonă continuă de rezistență fără a tăia rigla în bucăți? | Obiectul este un corp solid unitar la comanda `Group` (`Ctrl + G`). |
| **Provocare Raportor** | Liniile radiale sunt orientate spre centrul comun al semicercului? | Unghiurile de $45^\circ$, $90^\circ$ și $180^\circ$ sunt vizibile clar. |
| **Colectare Printuri** | Fiecare elev și-a montat inelul de breloc pe felia de cașcaval răcită? | Orificiul de 1 mm este funcțional și testat mecanic. |
