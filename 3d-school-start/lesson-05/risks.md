# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 05 [3DS2.5] – Medalia de Aur & Secretele Gloriei

---

## 📌 Context & Scopul Documentului
Acest document reprezintă o analiză critică dedicată profesorului pentru **Lecția 05 [3DS2.5]**. Scopul este de a anticipa posibilele blocaje tehnice și frustrări ale copiilor de 10–12 ani în timpul proiectării unei medalii clasice de 6 x 6 cm în Tinkercad, precum și asigurarea unei calități optime la imprimarea cu filament auriu Silk PLA.

---

## ⚠️ 1. Riscuri la Modelarea în Tinkercad

### A. Urechiușa pentru panglică este prea subțire și fragilă
- **Scenariu**: Copilul plasează un inel foarte subțire (grosime de perete sub 1.5 mm) sau lasă o fantă minusculă prin care panglica textilă de 10–15 mm nu poate trece. La prima probă la gât, urechiușa se rupe sub greutatea medaliei.
- **Prevenire & Ghidare**:
  - Profesorul menționează clar la demonstrație: *„Urechiușa este puntea de rezistență a medaliei!”*.
  - Dimensiune minimă obligatorie pentru fanta panglicii: **12 mm x 3 mm**.
  - Grosimea pereților exteriori ai inelului: minim **2.5 mm**.

### B. Litere prea mici sau linii filiforme care nu se imprimă
- **Scenariu**: Elevul vrea să scrie un mesaj foarte lung (ex: *„Pentru cea mai minunată mătușă din lume care îmi cumpără mereu înghețată”*). Literele devin microscopice (sub 3 mm înălțime), iar duza de 0.4 mm a imprimantei le va transforma într-o masă topită ilizibilă.
- **Prevenire & Ghidare**:
  - Regula de aur a mesajului: **Maxim 3–4 cuvinte mari și clare** (ex: *„Cea mai bună mamă”*, *„Locul 1 pentru tata”*, *„Super Prieten”*).
  - Lățimea liniei unei litere trebuie să fie de minim 1 mm, iar înălțimea de relief pe axa Z să fie de cel puțin **1.2 – 1.6 mm** peste fața medaliei.

### C. Elemente suspendate care „plutesc” în aer (Axa Z)
- **Scenariu**: Când elevul adaugă steluțe sau frunze de laur, ridică accidental corpul cu conul negru de înălțare la 2 mm deasupra medaliei. La printare, imprimanta ar încerca să depună plasticul în aer!
- **Prevenire & Ghidare**:
  - Elevii apasă tasta **`D` (Drop)** pentru a coborî orice formă la nivelul planului de lucru, apoi o ridică la cota bazei (3.2 mm).
  - Verificare obligatorie prin rotirea camerei din profil înainte de gruparea finală (`Ctrl + G`).

### D. Decorarea spatelui (Reversul) vs Aderența pe Patul Cald
- **Scenariu**: Elevul încearcă să pună reliefuri ieșite în afară pe ambele fețe ale medaliei (și pe avers, și pe revers).
- **Avertisment Tehnic**: Dacă medalia are reliefuri pe spate, ea nu se va mai putea sprijini plan pe patul de imprimare, necesitând suporturi care lasă urme inestetice.
- **Soluție Didactică**:
  - Fața din spate (reversul) trebuie să rămână plană, dar poate conține **gravură în adâncime (`Hole` de 0.8 mm)**, cum ar fi anul `2026` sau inițialele copilului!
  - Astfel, medalia stă perfect plată pe patul PEI, iar detaliile de pe spate se imprimă direct pe primul strat.

---

## ⏱️ 2. Gestionarea Timpului & Ritmului Clasei

### A. Dezbateri prelungite despre cui i se dăruiește medalia
- **Risc**: Copiii încep să discute minute în șir și nu se pot hotărî dacă să facă medalia pentru cățel, pentru mamă sau pentru frate.
- **Rezolvare**: Profesorul stabilește o numărătoare inversă veselă de 2 minute: *„Până număr la 10, fiecare alege primul campion de suflet care îi vine în minte!”*.

### B. Proiectarea crenguțelor de dafin consumă prea mult timp
- **Risc**: Unii copii încearcă să deseneze manual 50 de frunze una câte una.
- **Rezolvare**: Profesorul le arată scurtătura de maestru: duplicarea cu **`Ctrl + D`** (rotire cu 15° și mutare ușoară) sau folosirea a 2–3 crenguțe predefinite grupate.

---

## 🖨️ 3. Particularitățile Imprimării 3D cu Filament Silk Gold (PLA Mătăsos)

### A. Luciu metalic optim și viteză
- Filamentele Silk PLA își obțin luciul strălucitor prin reflexia luminii pe straturile exterioare.
- În **Bambu Studio**, se recomandă ca pereții exteriori să fie imprimați la o viteză stabilă (aprox. 50–80 mm/s) și la o temperatură de **220°C**, asigurând o suprafață mătăsoasă și aurie fără dungi mate.

### B. Densitatea de umplere (Infill)
- Se recomandă un infill de **15% – 20% Gyroid**. Aceasta conferă medaliei o greutate plăcută și solidă în mână, similară unei decorații metalice reale.

---

## ✅ 4. Quick Verification Checklist pentru Profesor

- [ ] **Min 10**: Mini-misterul cu medalia a stârnit curiozitatea clasei; discuția despre campioni este antrenantă.
- [ ] **Min 20**: Plăcile cu insignele Pixel Art din Lecția 04 sunt lansate la imprimare pe imprimantele Bambu Lab A1.
- [ ] **Min 35**: Prezentarea s-a încheiat; copiii au înțeles de ce măslinul și aurul simbolizează victoria eternă.
- [ ] **Min 55**: Fiecare elev a creat baza cilindrică de 60 x 60 x 3.2 mm și urechiușa pentru panglică.
- [ ] **Min 80**: Fanta urechiușei este verificată (minim 12 mm lățime) și nu există elemente plutitoare.
- [ ] **Min 95**: Modelele sunt grupate complet (`Ctrl + G`), colorate simbolic în auriu și inspectate din toate unghiurile.
- [ ] **Min 110**: Kahoot-ul a fixat noțiunile teoretice (argintul din 1896, aurul din 1904, panglica din 1960).
- [ ] **Min 120**: Imprimantele au terminat printarea: insignele Pixel Art răcite sunt colectate de elevi, culorile panglicilor pentru medalia de aur sunt alese, iar poza de grup este realizată!
