# Analiza Riscurilor (Pre-Mortem): Lecția 10 [RBF2.10] – Tranziția la Cloud CAD: Înrolarea în Onshape, Arhitectura Documentelor & Marea Asamblare a Geamănului Digital RF 2.0

---

## 1. Riscuri Tehnice & Software (Onshape Cloud, Înrolare & Navigare)

### Risc 1.1: Întârzierea sau Blocarea Emailului de Activare Onshape for Education
- **Descriere**: La crearea conturilor noi de student pe Onshape, emailul de verificare poate întârzia 2–5 minute sau poate ajunge în folderul de *Spam* / *Junk*, blocând accesul elevilor la workspace.
- **Măsură de Prevenție**:
  - Profesorul instruiește elevii să caute imediat în folderul *Spam* după cuvântul „Onshape”.
  - Pentru elevii care întâmpină dificultăți temporare cu adresa de email personală, profesorul pune la dispoziție 2–3 conturi generice de rezervă ale laboratorului (ex: `lab.robotics01@school.org`), permițându-le să intre instantaneu în documentul șablon fără a pierde ritmul clasei.

### Risc 1.2: Accelerarea Hardware WebGL Dezactivată în Browser
- **Descriere**: Pe unele laptopuri din laborator, accelerarea grafică hardware poate fi dezactivată în Google Chrome sau Edge (`Settings -> System -> Use graphics acceleration when available`), cauzând un avertisment Onshape despre performanță scăzută sau un ecran negru în zona 3D.
- **Măsură de Prevenție**:
  - Profesorul verifică în avans o stație de lucru accesând `chrome://gpu` sau deschizând un model Onshape de test. Dacă apare avertismentul, se bifează „Use graphics acceleration” și se restartează browserul în 10 secunde.

### Risc 1.3: Pierderea Pieselor din Câmpul Vizual (Panică de Navigare 3D)
- **Descriere**: Începătorii care dau zoom excesiv sau trag mouse-ul necontrolat pot „arunca” componentele în afara ecranului în spațiul tridimensional infinit și cred că fișierul s-a șters.
- **Măsură de Prevenție**:
  - Se scrie mare pe tablă tasta magică: **`F` = Fit to Window**. O singură apăsare a tastei `F` recalculează întregul volum al ansamblului și readuce instantaneu toate piesele centrate pe ecran.

---

## 2. Riscuri Mecanice & Metodologice (Asamblare, Mates & Standard Content)

### Risc 2.1: Omiterea Comenzii Obligatorii `Fix` pe Șasiul Principal
- **Descriere**: Dacă un elev uită să ancoreze șasiul principal și aplică direct `Fastened Mate` între șasiu și un motor, la prima mișcare șasiul va sări la motor sau întregul robot se va roti necontrolat când elevul încearcă să atașeze alte piese.
- **Măsură de Prevenție**:
  - Profesorul instituie „Regula Ancorei de Aur”: prima acțiune înainte de a atinge orice unealtă de îmbinare este `Right-Click` pe `Chassis_Main_Plate` -> **`Fix`**. Pictograma cu ancoră trebuie să fie vizibilă lângă piesă în arborele din stânga.

### Risc 2.2: Piese Inversate sau Răsucite la 90° în Conexiunea `Fastened Mate`
- **Descriere**: Din cauza orientării vectorilor normalei suprafeței pe găurile circulare, motoarele TT sau plăcile electronice pot intra cu fața în jos sau orientate spre interiorul șasiului.
- **Măsură de Prevenție**:
  - Se explică și se afișează permanent pe proiector regula celor 2 butoane din fereastra de Mate:
    1. **`Flip primary axis`** (săgeata dublă verticală): întoarce piesa cu 180° dacă a intrat invers.
    2. **`Reorient secondary axis`** (săgeata circulară): rotește piesa în trepte de 90° până se așază drept.

### Risc 2.3: Selectarea Lungimilor Greșite de Șuruburi în `Standard content`
- **Descriere**: Elevii pot alege la întâmplare șuruburi prea scurte (de exemplu M3 x 10 mm pentru motoarele TT, care nu trec prin corpul motorului) sau șuruburi prea lungi (M3 x 30 mm la placa electronică, care străpung componentele vecine).
- **Măsură de Prevenție**:
  - Profesorul proiectează **Tabelul Lungimilor Metrice RF 2.0**:
    - **Motoare TT (tracțiune)**: `M3 x 30 mm` (trecere completă) + piuliță `M3 Hex Nut`.
    - **Placă electronică ESP32**: `M3 x 8 mm`.
    - **Suport baterie 18650, roată castor & bracket ultrasonic**: `M3 x 10 mm`.
  - Mostrele reale de șuruburi de la catedră permit elevilor să înțeleagă fizic de ce un motor gros de 22 mm nu poate fi prins cu un șurub de 10 mm.

---

## 3. Riscuri de Pacing & Gestionarea Timpului

### Risc 3.1: Blocarea în Faza de Prezentare a Logourilor sau Înrolare
- **Descriere**: Showroom-ul de teme și crearea conturilor Onshape pot consuma mai mult de 35 de minute dacă se acordă prea mult timp fiecărui desen sau dacă se depanează adrese de email lente, scăzând timpul pentru asamblarea 3D.
- **Măsură de Prevenție**:
  - Se folosește un cronometru vizual pe ecran: exact 15 minute pentru showroom și exact 20 de minute pentru înrolare/teorie.
  - La minutul 00:35, toți elevii au ecranul Onshape deschis cu documentul șablon copiat.

---

## 4. Checklist Rapid de Verificare (Cu 5 Minute Înainte de Oră)
- [ ] Conexiunea la internet este activă pe toate stațiile de lucru și browserul Chrome/Edge deschide rapid `cad.onshape.com`?
- [ ] Link-ul documentului master `RBF2_RF2_Chassis_Assembly_Template` este testat într-o fereastră incognito și butonul `Make a copy` este funcțional?
- [ ] Documentul conține toate piesele RF 2.0 dezasamblate și niciun șurub pre-introdus?
- [ ] Pe catedră sunt așezate robotul fizic RF 2.0 asamblat, șublerul digital și tava cu șuruburi M3 de 8 mm, 10 mm, 30 mm și piulițe?
- [ ] Quiz-ul Kahoot de 10 întrebări este încărcat și pregătit pentru runda finală de verificare?

