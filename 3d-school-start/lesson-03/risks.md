# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 03 [3DS2.3] – Magia Imprimării Multicolore & Arta Pixelilor

---

## 📌 Context & Scopul Documentului
Acest document reprezintă o analiză pre-mortem riguroasă dedicată exclusiv profesorului / mentorului pentru **Lecția 03 [3DS2.3]**. Scopul său este de a identifica potențialele puncte de fricțiune tehnică, blocaje de atenție, riscuri de aliniere geometrică și sincronizare a celor 3 imprimante (inclusiv sistemul AMS lite), oferind măsuri proactive de prevenire.

---

## ⚠️ 1. Riscuri Tehnice & de Hardware (Ecosistemul celor 3 Imprimante)

### A. Blocaj sau Întârziere la Schimbarea de Filament în AMS lite (Imprimanta 3)
- **Scenariu de Risc**: La minutul 72 sau 82, în timpul schimbării automate de culoare (Negru ➡️ Roșu ➡️ Alb), filamentul se blochează la tăiere sau senzorul de retragere raportează eroare, oprind printul demonstrativ.
- **Impact**: Profesorul este distras de depanarea imprimantei și nu mai poate asista copiii la calculatoare.
- **Măsuri de Prevenire**:
  - Înainte de începerea orei, profesorul face un ciclu rapid de `Feed / Retract` pe toate cele 3 sloturi AMS pentru a se asigura că tuburile PTFE sunt curate și filamentele se mișcă lin.
  - Se utilizează filamente PLA uscate, fără îndoituri ascuțite pe capătul firului.
  - Dacă apare o eroare minoră, profesorul nu oprește fluxul clasei: le arată copiilor pe scurt mesajul de pe ecran ca pe o lecție reală de inginerie („uite cum senzorul a detectat capătul de fir”) și rezolvă calm în 30 de secunde.

### B. Confuzia la Scalarea Non-Uniformă în Bambu Studio
- **Scenariu de Risc**: La exportul din Tinkercad, modelele proiectate cu cuburi de $1\times1\text{ mm}$ au dimensiuni fizice de doar $15-25\text{ mm}$. Dacă profesorul uită să facă scalarea non-uniformă ($XY = 200-400\%$, $Z = 75\%$), piesa va ieși minusculă sau mult prea groasă pe înălțime.
- **Măsuri de Prevenire**:
  - Profesorul are salvat în Bambu Studio un profil pre-configurat numit `PixelArt_Start_A1`.
  - În ghidul de feliere de pe tablă este notată clar formula: `Lăcățel Uniform Scale = DEBIFAT`, `X & Y = 300%`, `Z = 75%`.

---

## 🧩 2. Riscuri Geometrice & de Modelare în Tinkercad

### A. Deplasarea Pixelilor pe Grilă (Pierderea Alinierei de 1 mm)
- **Scenariu de Risc**: Un elev dezactivează accidental *Snap Grid* sau trage cuburile cu mouse-ul în mod liber, obținând spații de $0.3\text{ mm}$ între pixeli sau suprapuneri ciudate.
- **Impact**: La feliere și imprimare, pixelii neuniți se vor desprinde, iar insigna se va rupe la prima atingere.
- **Măsuri de Prevenire**:
  - Regula de aur explicată la început: **„Verificăm întotdeauna Snap Grid = 1.0 mm!”**.
  - Folosirea obligatorie a modului **Flat View (Ortografic - tasta F5)** și a vederii de sus (*Top View*).
  - Folosirea săgeților de pe tastatură pentru repoziționarea fină a cuburilor (fiecare apăsare = exact 1 mm).

### B. Inversarea sau Greșirea Înălțimilor pe Z ($2\text{ mm}, 3\text{ mm}, 4\text{ mm}$)
- **Scenariu de Risc**: Copilul folosește un cub roșu de $2\text{ mm}$ și unul negru de $4\text{ mm}$, sau întinde cuburile pe Z la dimensiuni aleatorii.
- **Impact**: La schimbarea de culoare în Slicer, culorile vor apărea amestecate pe straturi greșite.
- **Măsuri de Prevenire**:
  - Încurajarea elevilor să **nu modifice niciodată dimensiunea pe Z** a cuburilor din paletă după ce au fost create etaloanele.
  - La finalul modelării, profesorul le cere tuturor să rotească camera în profil și să verifice dacă văd clar cele 3 „trepte de scară” perfect paralele.

### C. Deformarea Accidentală a Pixelilor prin Atingerea Mânerelor de Redimensionare (Punctele Albe/Negre)
- **Scenariu de Risc**: La dimensiunea minusculă de $1 \times 1\text{ mm}$, distanța dintre centrul cubului și mânerele de scalare (punctele albe/negre din colțuri și laturi) este infimă. Când copiii încearcă să mute un pixel sau să folosească `Alt + Drag`, agață accidental mânerul de mărire și întind cubul (ex: devine $1.4 \times 0.8\text{ mm}$ sau $2.3 \times 1.0\text{ mm}$), distrugând alinierea perfectă pe grilă și făcând ca întreaga piesă să se decaleze.
- **Impact**: Pixelii nu se mai unesc compact, apar goluri sau suprapuneri asimetrice, iar modelul devine neregulat și imposibil de feliat curat.
- **Măsuri de Prevenire & Remediere**:
  - **Demonstrație Proactivă**: Profesorul le arată explicit pe ecran greșeala: trage intenționat de un punct alb să vadă cum se strică forma, apoi demonstrează cum se prinde pixelul exclusiv din centrul culorii.
  - **Metoda Alternativă Sigură**: Recomandă folosirea **săgeților de la tastatură** (`←`, `↑`, `→`, `↓`) pentru deplasare milimetrică fără niciun contact cu mânerele de scalare.
  - **Reflexul de Salvare**: Instruiți copiii să folosească instantaneu scurtătura **`Ctrl + Z`** (*Undo*) imediat ce observă că un pixel și-a schimbat dimensiunile originale.

---

## ⏱️ 3. Riscuri de Pacing (Gestionarea Timpului de 120 Minute)

### A. Blocarea elevilor în alegerea modelului Pixel Art
- **Scenariu de Risc**: Unii copii petrec 20 de minute căutând pe internet personaje extrem de complicate (ex: Pokemoni cu 15 culori) care nu se încadrează în regula celor 3 trepte de înălțime.
- **Măsuri de Prevenire**:
  - Profesorul impune ca primă opțiune **cele 5 modele etalon de pe planșă** (Inimă, Măr, Ciupercă, Sabie, Poțiune).
  - Elevii mai rapizi care doresc un model propriu primesc aprobarea profesorului doar dacă schița lor respectă strict regula celor 3 culori (Negru, Roșu, Alb).

### B. Întârzierea pornirii imprimării pe Imprimantele 1 și 2
- **Scenariu de Risc**: Riglele din Lecția 02 nu sunt pornite la minutul 10, ci la minutul 30, ceea ce înseamnă că nu se vor termina până la finalul celor 120 de minute.
- **Măsuri de Prevenire**:
  - Fișierele de print pentru rigle trebuie să fie deja pregătite pe cardul SD / în Bambu Studio înainte de intrarea copiilor în clasă (conform checklist-ului din `README.md`).
  - Lansarea efectivă a printului durează maxim 3 minute la Etapa 2.

---

## ✅ 4. Quick Verification Checklist (Pentru Profesor în timpul orei)

- [ ] **Minutul 15**: Riglele din Lecția 02 sunt în curs de imprimare pe Imprimantele 1 și 2 (primul strat verificat vizual).
- [ ] **Minutul 55**: Paleta de 3 cuburi ($1\times1\text{ mm}$ la $Z=2,3,4\text{ mm}$) este clar afișată pe ecran în Tinkercad.
- [ ] **Minutul 65**: Exemplul demonstrativ (Inima ❤️) a fost feliat ($XY=300\%$, $Z=75\%$) și trimis la Imprimanta 3 cu AMS lite.
- [ ] **Minutul 75**: Toți elevii au ecranul setat pe *Top View + Orthographic (Flat)*, folosesc `Alt + Drag` apucat strict din centrul pixelului (sau săgețile tastaturii) și evită punctele albe de mărire.
- [ ] **Minutul 88**: Piesa demonstrativă din AMS lite este scoasă și transmisă copiilor pentru inspecție tactilă.
- [ ] **Minutul 100**: Kahoot Quiz rulează cu entuziasm și concentrare pe teorie.
- [ ] **Minutul 115**: Riglele din Lecția 02 sunt colectate și împărțite elevilor.
