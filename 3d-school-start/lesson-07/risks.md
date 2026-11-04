# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 07 [3DS2.7] – Tabloul Puzzle 3D & Arta Îmbinărilor

---

## 📌 Context & Scopul Documentului
Acest document reprezintă o analiză pre-mortem tehnică și pedagogică pentru **Lecția 07 [3DS2.7]**, în care elevii pun la imprimat pe Bambu Lab A1 monedele din Lecția 06 și proiectează în Tinkercad un tablou puzzle 4x4 din 16 piese întrepătrunse (`80 x 80 x 2 mm`) folosind o matrice decupatoare parametrică cu fanta de tăiere de 1 mm creată cu unealta **Sketch** și grafică în relief cu **Scribble**.

> [!NOTE]
> Acest fișier este strict destinat analizei profesorului și autorului de curs (review-only). Modificările asupra fișierelor de bază ale lecției se realizează exclusiv la decizia acestora.

---

## ⚠️ 1. Riscuri la Modelarea Puzzle-ului în Tinkercad

### A. Grosimea conturului (`Stroke`) din unealta Sketch setată greșit
- **Scenariu**: Dacă elevul lasă conturul implicit foarte subțire (sub `0.6 mm`), feliatorul Bambu Studio va genera pereți care se ating la imprimare, iar piesele se vor suda inseparabil. Dacă îl face prea gros (`> 2 mm`), golurile dintre piese vor fi uriașe, desenul artistic va fi ciopârțit, iar piesele nu vor sta blocate mecanic.
- **Prevenire & Ghidare**:
  - Profesorul insistă la demonstrație pe setarea valorii etalon de **`Stroke = 1.0 mm`**.
  - Se explică rolul ingineresc: 1 mm reprezintă toleranța de siguranță (*kerf*) pentru duza de 0.4 mm a imprimantei 3D (2 perimetre pe o piesă + 2 perimetre pe piesa vecină + joc liber de 0.2 mm).

### B. Alinierea defectuoasă a celor 4 segmente cap la cap
- **Scenariu**: La multiplicarea segmentului de 20 mm, elevul mută copia din ochi, lăsând un spațiu gol între segmente sau suprapunându-le strâmb. La tăiere, linia va avea întreruperi, iar piesele nu se vor despărți complet.
- **Prevenire & Ghidare**:
  - Demonstrați utilizarea tastei **`Ctrl + D`** asociată cu deplasarea cu săgețile tastaturii (cu `Snap Grid` setat la `1.0 mm` sau cote numerice precise: exact `20 mm` deplasare pe X).
  - Înainte de gruparea celor 4 segmente, elevul măsoară lungimea totală cu rigla: trebuie să fie exact **`80 mm`**.

### C. Înălțimea pe axa Z a grilei decupatoare (`Hole`) este mai mică decât placa
- **Scenariu**: Grila de tăiere este lăsată la o înălțime de 2 mm și plasată puțin deasupra bazei. Când se apasă `Group`, decupajul taie doar desenul superior din Scribble, dar nu trece prin placa de bază, rezultând un bloc solid nedecompozabil.
- **Prevenire & Ghidare**:
  - Regula universală Tinkercad pentru decupatoare: **forma `Hole` trebuie să fie de 3-4 ori mai înaltă decât obiectul tăiat**!
  - Profesorul instruiește elevii să seteze înălțimea pe Z a grilei decupatoare la **`10 – 15 mm`** și să o coboare 2 mm sub planul de lucru, astfel încât să „străpungă” complet ansamblul pe verticală.

### D. Desenul artistic realizat cu Scribble este prea fin sau deconectat
- **Scenariu**: Copilul desenează linii microscopice cu creionul din Scribble sau puncte izolate. În momentul în care grila de 1 mm taie desenul, micile fragmente de sub 1 mm dispar complet la feliere.
- **Prevenire & Ghidare**:
  - Încurajați forme pline, continue și contururi generoase (texte îngroșate, simboluri mari de minim 25 – 30 mm, ochelari sau fețe zâmbitoare cu linii groase).
  - Înălțimea reliefului Scribble să fie de cel puțin **`1.5 – 2.0 mm`** deasupra plăcii roșii (înălțime totală `3.5 – 4.0 mm`).

### E. Decuparea prematură cu `Group (Ctrl + G)`
- **Scenariu**: Unii elevi plasează grila decupatoare peste cubul roșu gol și apasă `Group` înainte să fi desenat grafica cu Scribble. Ulterior, dacă încearcă să deseneze pe cele 16 piese deja tăiate, desenul nu va fi tăiat și va ține piesele unite.
- **Prevenire & Ghidare**:
  - Profesorul stabilește cele două borne clare:
    * *Etapa 1*: Pregătim pânza completă (baza roșie + desenul colorat finisat).
    * *Etapa 2*: Doar când tabloul arată perfect, aducem grila decupatoare și tăiem o singură dată!

---

## 🖨️ 2. Riscuri la Imprimarea 3D a Monedelor din Lecția 06 (Etapa 2 & Etapa 8)

### A. Monedele de 1 Ban și de 1.000.000 Lei au relief foarte fin
- **Scenariu**: Monedele din Lecția 06 conțin texte precum `REPUBLICA MOLDOVA` sau cifra `1000000`. Dacă stratul de feliere este prea gros (`0.28 mm`), detaliile textului se pot estompa.
- **Prevenire & Ghidare**:
  - În **Bambu Studio**, setați înălțimea stratului la **`0.16 mm Optimal`** sau **`0.20 mm Standard`** cu opțiunea **`Arachne Wall Generator`** activată (aceasta îngroașă automat liniile fine de text pentru o lizibilitate perfectă).

### B. Timpul total de imprimare pentru toate monedele grupei
- **Scenariu**: O grupă de 8–10 elevi generează 16–20 de jumătăți de monede. Dacă sunt puse toate pe o singură imprimantă, timpul poate depăși 90 de minute.
- **Prevenire & Ghidare**:
  - Împărțiți platourile pe 2 imprimante Bambu Lab A1 (câte 8–10 monede per imprimantă). Cu viteza de print a seriei A1, un platou se finalizează în aproximativ **45 – 55 de minute**, fiind gata cu mult înainte de minutul 110.

---

## ⏳ 3. Riscuri Pedagogice & de Ritm al Clasei (Pacing & Boredom)

### A. Nerăbdarea la etapa tehnică a șablonului de tăiere
- **Scenariu**: Elevii mai mici sau mai impulsivi vor dori să deseneze direct cu Scribble și pot deveni agitați în timp ce trasează segmentul de 20 mm cu buclă.
- **Prevenire & Ghidare**:
  - Demonstrația profesorului trebuie să fie rapidă, dinamică și prezentată ca o super-putere inginerească: *„În primele 10 minute construim mașina noastră secretă de tăiat — ștanța industrială! Odată ce o avem, putem tăia orice imagine din lume într-un puzzle dintr-un singur click!”*

### B. Elevii rapizi finalizează puzzle-ul în 20 de minute
- **Scenariu**: Unii elevi pricepuți desenează rapid și termină decuparea cu 15 minute înaintea celorlalți.
- **Prevenire & Ghidare**:
  - Oferiți instantaneu misiunea de elită: **Proiectarea Tăviței Rame de Birou (`Puzzle Tray`)**:
    * O placă suport de `84 x 84 mm`, grosime `1.2 mm`;
    * O bordură perimetrală înălțată la `3.5 mm` și grosime de `2 mm`, în care puzzle-ul asamblat să stea perfect pe birou fără să se deplaseze!

---

## ✅ 4. Quick Verification Checklist pentru Profesor

Înainte de începerea orei:
- [ ] Bambu Studio are plăcile cu monedele din Lecția 06 pregătite cu profilul `Arachne` activat.
- [ ] Filamentele Silk Silver și Silk Gold sunt alimentate pe Bambu Lab A1.
- [ ] Unealta `Sketch` este testată în prealabil în Tinkercad pe contul profesorului (verificat glisorul `Stroke = 1.0 mm`).
- [ ] Mostra fizică de puzzle 3D imprimat este pe catedră pentru ca elevii să o poată demonta și reasambla.
- [ ] Prezentarea și tab-ul de Kahoot sunt deschise pe ecranul proiectorului.

