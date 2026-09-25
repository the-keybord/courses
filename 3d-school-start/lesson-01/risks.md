# Analiză de Riscuri & Pre-Mortem: Lecția 01 [3DS2.1] – Anatomia Imprimantei 3D & Cheese Keyring

Acest document reprezintă analiza de riscuri pedagogice și tehnice (conform **Regulii 14** din `AGENTS.md`), identificând potențialele blocaje, riscuri de plictiseală sau frustrare tehnică în livrarea reală la clasă a Lecției 01, alături de soluțiile preventive recomandate profesorului.

---

## 1. Puncte Critice & Riscuri de Fricțiune în Sală

### ⚠️ Risc 1: Blocajul de la Start (Colectarea & Lansarea Printurilor din Lecția 00)
- **Ce poate eșua**: Dacă profesorul începe să caute fișierele elevilor pe conturi, să repare modele cu erori sau să felieze de la zero în primele 10 minute, se creează un timp mort masiv. Copiii rămân nesupravegheați, încep să se plictisească și pierd ritmul orei.
- **Soluție / Safeguard**:
  - Profesorul trebuie să aibă fișierele din Lecția 00 deja importate în Bambu Studio pe o placă pregătită **înainte de intrarea copiilor în clasă** (la checklist-ul de pregătire).
  - La minutul 00–05 doar se apasă butonul *Print*. Dacă un model lipsește, se trece imediat mai departe și se rezolvă în pauză.

---

### ⚠️ Risc 2: Monologul Teoretic (Axele X/Y/Z/E și Termica)
- **Ce poate eșua**: Conceptele despre motoare pas-cu-pas, cinematica pe 4 axe și termistori pot suna ca o oră uscată de fizică dacă sunt predate doar prin slide-uri și definiții abstracte. Copiii de 10–12 ani își pierd atenția după primele 7 minute de teorie pură.
- **Soluție / Safeguard**:
  - **Interactivitate tactilă obligatorie**: Profesorul mută copiii în picioare lângă imprimanta Bambu Lab A1 pornită.
  - Elevii primesc în mână mostre fizice (o duză reală de 0.4 mm pentru a simți cât de minuscul este orificiul și un senzor termistor).
  - Teoria este ancorată în povești cool din lumea maker (modding-ul pe Ender 3, imprimante care își printează frații în RepRap).

---

### ⚠️ Risc 3: Tăierea Geometrică a Feliei de Cașcaval în Tinkercad
- **Ce poate eșua**: Decuparea unei felii triunghiulare dintr-un cilindru folosind cuburi goale (*Box Hole*) rotite la unghi poate fi contraintuitivă pentru unii elevi. Riscuri frecvente:
  - Rămân „așchii” sau pereți subțiri plutitori din cilindru nedecepați complet.
  - Felia iese prea ascuțită și subțire (se va rupe la print).
- **Soluție / Safeguard**:
  - Profesorul insistă în live demo pe mărirea generoasă a cuburilor de tăiere (să depășească mult cilindrul).
  - *Plan B rapid*: Pentru copiii care întâmpină dificultăți spațiale, profesorul le sugerează folosirea formei de bază **Wedge (Pană)** combinată cu un cilindru pentru rotunjirea spatelui.

---

### ⚠️ Risc 4: Subdimensionarea Orificiului de Breloc (1 mm vs. Shrinkage Plastic)
- **Ce poate eșua**: Un orificiu desenat la fix `1.0 mm` în Tinkercad se va micșora adesea la `0.6–0.8 mm` la imprimarea reală din cauza expansiunii termice a plasticului cald (*thermal hole shrinkage*). Tija filetată a inelului de breloc nu va putea fi înșurubată fără a forța și a sparge piesa.
- **Soluție / Safeguard**:
  - Profesorul le comunică explicit elevilor să deseneze cilindrul de decupare la **`1.5 mm – 1.8 mm`**.
  - Se verifică ca gaura să nu intersecteze vreo „gaură de cașcaval” sferică, păstrând o zonă masivă de cel puțin 3 mm de plastic plin în jur.

---

### ⚠️ Risc 5: Distragerea Timpurie cu Sim Lab
- **Ce poate eșua**: Dacă elevii descoperă modulul de simulare fizică (*Sim Lab*) înainte de a finaliza gruparea modelului, vor începe să arunce obiecte nesalvate în gol și nu își vor termina proiectul pentru print.
- **Soluție / Safeguard**:
  - Sim Lab este prezentat ca o **recompensă / activitate bonus de final (Etapa 8)**.
  - Regula clasei: *„Trecem la Sim Lab doar după ce profesorul a validat că piesa ta este grupată complet (`Group`), colorată în galben și salvată cu numele tău!”*

---

## 2. Tabel Rapid de Verificare pentru Profesor (Quick Checklist)

| Etapă | Ce verifici la fiecare elev? | Indicator de Succes |
| :--- | :--- | :--- |
| **Modelare Bază** | Felia are o grosime de cel puțin 15–20 mm pe Z? | Baza este robustă, fără margini ascuțite ca lama. |
| **Găuri Sferice** | Sferele decupează cașcavalul fără să-l taie în două bucăți separate? | Piesa rămâne un corp solid unitar. |
| **Orificiu Breloc** | Gaura are ~1.5 mm și e plasată într-o zonă plină? | Tija metalică are loc de prindere solidă. |
| **Text Personalizat** | Literele sunt lipite sau gravate în corp (nu plutesc în aer)? | Textul este parte din grupul final (`Ctrl + G`). |
| **Sim Lab** | Elevul a testat gravitația după salvarea completă? | Piesa nu se dezmembrează la impactul virtual. |
