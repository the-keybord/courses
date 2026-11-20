# Analiza Riscurilor (Pre-Mortem): Lecția 09 [3DS2.9] – Fidget Tri-Spinner Pocket cu Monede de 1 Leu

---

## 🎯 Scopul Documentului
Acest document reprezintă analiza pre-mortem a riscurilor pedagogice, fizice și tehnice specifice **Lecției 09 [3DS2.9]**. Documentul este destinat exclusiv instructorului pentru a anticipa blocajele, erorile de modelare în Tinkercad și posibilele disfuncționalități la asamblarea monedelor și a axului.

---

## ⚠️ 1. Riscuri Tehnice & Mecanice (Imprimare 3D & Asamblare)

### Risc 1.1: Blocarea axului mecanic din cauza jocului insuficient (Clearance sub 0.5 mm)
* **Descriere**: În cazul unui mecanism 100% imprimat 3D, spinnerul depinde de jocul mecanic dintre orificiul central (`8.0 mm`) și axul cilindric (`7.4 mm`). Dacă un elev modifică axul la peste 7.7 mm sau micșorează orificiul central, cele două piese se vor înțepeni.
* **Măsuri de Siguranță (Safeguards)**:
  * În timpul demonstrației, profesorul subliniază că miezul central este o zonă funcțională critică și nu trebuie redimensionată cu cursorul liber.
  * Toate dimensiunile mecanice se introduc prin tastarea directă a valorilor numerice în Tinkercad (`8.0 mm` pentru gaură, `7.4 mm` pentru ax, `5.8 mm` lungime ax pentru corp de `5.0 mm`).
  * Pe Bambu Lab A1 se folosește profilul `0.20 mm Standard` fără supra-extrudare.

### Risc 1.2: Moneda de 1 Leu nu intră sau cade din lăcaș
* **Descriere**: Moneda de 1 Leu are un diametru real de `21.5 mm` și grosime de `1.8 mm`. Dacă elevul lasă un locaș de sub 21.6 mm, moneda nu va intra; dacă îl face de peste 22.2 mm, moneda poate avea joc și poate zăngăni în timpul rotirii.
* **Măsuri de Siguranță (Safeguards)**:
  * Dimensiunea optimă de aur calibrată pentru imprimantele Bambu Lab A1 este de **`21.8 mm`** (+0.3 mm joc pe diametru). Aceasta permite introducerea fermă a monedei prin apăsare ușoară.
  * Orificiul din spate de **`12.0 mm`** lasă un guler generos de `4.9 mm` care împiedică 100% trecerea monedei pe partea cealaltă.

### Risc 1.3: Forfecarea pinului central de îmbinare la presarea capacelor
* **Descriere**: Pinul central al capacului inferior (`4.0 mm`) intră în alezajul capacului superior (`4.2 mm`). Dacă piesele sunt presate strâmb sau forțate oblic, pinul se poate rupe între straturile de filament.
* **Măsuri de Siguranță (Safeguards)**:
  * Asamblarea se face sprijinită plat pe banc: capacul inferior pe masă, spinnerul deasupra, iar capacul superior se presează vertical cu podul palmei.
  * Se imprimă în avans 3–4 seturi de capace de rezervă în laborator.

---

## 🧑‍🏫 2. Riscuri Pedagogice & Managementul Clasei

### Risc 2.1: Elevii nu au adus monede de 1 Leu la oră
* **Descriere**: Unii elevi pot uita să aducă 3 monede de 1 Leu de acasă.
* **Măsuri de Siguranță (Safeguards)**:
  * Profesorul păstrează în laborator o rezervă de 15–20 de monede de 1 Leu curate.
  * Chiar și fără monede inserate, Tri-Spinner-ul Pocket se rotește perfect ca o jucărie ușoară din plastic, permițând elevului să insereze monedele acasă oricând!

### Risc 2.2: Dificultăți la rotirea brațelor la 120° în Tinkercad
* **Descriere**: Dacă un elev selectează doar brațul exterior fără cilindrul central la duplicare, rotația la 120° se va produce descentrat.
* **Măsuri de Siguranță (Safeguards)**:
  * Profesorul insistă pe trucul „Cilindrului Geamăn”: se selectează cilindrul central împreună cu brațul înainte de a apăsa `Ctrl + D`. Centrul grupului rămâne astfel neschimbat!

---

## ✅ 3. Checklist Rapid pentru Profesor (Înainte de Curs)
- [ ] 1 exemplar complet de Tri-Spinner Pocket asamblat cu monede de 1 Leu pe catedră pentru demonstrație.
- [ ] 10–15 monede de rezervă de 1 Leu din Republica Moldova.
- [ ] 2–3 seturi de capace de rezervă imprimate în avans.
- [ ] Bambu Studio deschis cu profilul `0.20 mm Standard`, `Wall loops: 3`, `Infill: 20% Gyroid`.
