# Analiză Pre-Mortem & Riscuri Pedagogice: Lecția 08 [3DS2.8] – Pet Tag Inteligent cu Cip NFC

---

## 📌 Context & Scopul Documentului
Acest document analizează riscurile tehnice, hardware și pedagogice pentru **Lecția 08 [3DS2.8]**, în care elevii lansează la imprimat **Tablourile Puzzle 3D** din Lecția 07, descoperă istoria animalelor de companie și tehnologia NFC, modelează un breloc în formă de **urmă de labă** (`~45 x 45 x 3.2 mm`) cu lăcaș posterior pentru sticker NFC (`26 mm`) și exersează scrierea mesajelor de recuperare în **NFC Tools**.

> [!NOTE]
> Acest fișier este strict destinat analizei profesorului și autorului de curs (review-only). Orice modificări asupra materialelor de bază se realizează exclusiv la decizia acestora.

---

## ⚠️ 1. Riscuri la Modelarea CAD a Brelocului în Tinkercad

### A. Degetele lăbuței nu ating pernița principală (piese deconectate)
- **Scenariu**: Elevul așază cele 4 ovale ale degetelor la 1–2 mm distanță de pernița centrală, așa cum arată o urmă reală de labă în natură. În Tinkercad arată bine, dar când fișierul STL ajunge pe patul imprimantei 3D, fiecare deget se imprimă separat și cade imediat la desprindere!
- **Prevenire & Ghidare**:
  - Demonstrați clar două soluții sigure:
    1. **Suprapunere mecanică solidă**: Baza ovalelor degetelor pătrunde cel puțin `2 – 3 mm` în pernița centrală înainte de `Group (Ctrl + G)`;
    2. **Placă suport subțire (Recomandat)**: Se pune o bază unitară rotunjită dedesubt de `1.2 mm` grosime (în conturul labei), iar degetele și pernița se ridică în relief deasupra ei până la `3.2 mm`.

### B. Lăcașul pentru stickerul NFC (`26 mm`) este prea mic sau perforează brelocul
- **Scenariu**:
  1. Dacă elevul face gaura posterioară de exact `25 mm` (diametrul stickerului), contracția plasticului PLA face ca stickerul să nu încapă și să se ridice pe margini;
  2. Dacă elevul lasă adâncimea găurii la `3.0 mm` într-o placă de `3.2 mm`, peretele rămas (`0.2 mm`) se rupe sau lasă textul de pe față să străpungă.
- **Prevenire & Ghidare**:
  - Regula dimensională obligatorie:
    - Diametrul găurii `Cylinder (Hole)` = **`26.0 mm`** (toleranță `+1.0 mm` față de stickerul de `25 mm`);
    - Adâncimea găurii = **`0.7 mm`** (într-o bază de **`3.2 mm`** grosime, lăsând **`2.5 mm`** de plastic solid rezistent);
    - Păstrarea distanței minime între lăcaș și gaura inelului de prindere.

### C. Urechiușa pentru inelul metalic este prea fragilă
- **Scenariu**: Orificiul de `4.5 mm` este decupat prea aproape de marginea exterioară a labei, lăsând o „punte” de plastic de sub `1.0 mm` care se rupe la prima scuturare a câinelui sau a ghiozdanului.
- **Prevenire & Ghidare**:
  - Urechiușa (`10 x 10 mm`) trebuie să aibă cel puțin **`2.5 mm`** de plastic solid în jurul găurii de `4.5 mm`.

### D. Textul sau inițiala de pe față are pereți prea subțiri
- **Scenariu**: Un nume lung (ex. `MAXIMILIAN`) micșorat pe o perniță de `30 mm` ajunge să aibă litere cu linii sub `0.4 mm` (lățimea duzei), dispărând în feliator.
- **Prevenire & Ghidare**:
  - Recomandați fie porecle scurte (`REX`, `MIMI`, `LEO`), fie o **singură inițială mare și groasă** (ex. `R` de `18 x 18 mm`) cu înălțimea de relief `+1.5 mm` (total `4.7 mm`).

---

## 📱 2. Riscuri Tehnice la Utilizarea & Programarea Stickerelor NFC

### A. Tip de cip NFC incompatibil cu toate telefoanele
- **Scenariu**: Stickerele ieftine de tip *Mifare Classic 1K* nu pot fi citite nativ de iPhone-uri și de multe telefoane Android moderne fără aplicații speciale, dezamăgind elevul când testează acasă.
- **Prevenire & Ghidare**:
  - Folosiți exclusiv stickere standard **`NTAG213`**, **`NTAG215`** sau **`NTAG216`** (13.56 MHz, compatibile universal ISO 14443-A cu orice iPhone XS/11+ și Android fără aplicații speciale la citire!).

### B. Ecranarea semnalului de către metal
- **Scenariu**: Dacă brelocul este prins cu un inel metalic masiv chiar peste centrul stickerului sau lipit direct pe o cataramă metalică groasă, câmpul electromagnetic al telefonului este blocat (curent turbionar în metal), iar tag-ul nu se mai citește.
- **Prevenire & Ghidare**:
  - Stickerul trebuie centrat pe spatele perniței de plastic PLA (plasticul este transparent pentru undele radio de 13.56 MHz!), iar inelul metalic se prinde sus, în urechiușa dedicată, la distanță de sticker.

### C. Blocarea accidentală a cipului demonstrativ (`Lock Tag`)
- **Scenariu**: În aplicația *NFC Tools*, un elev apasă din greșeală pe `Lock tag` (blocare permanentă Read-Only) în timpul testării pe brelocul demonstrativ al profesorului, făcându-l imposibil de rescris pentru următorul coleg!
- **Prevenire & Ghidare**:
  - Profesorul supervizează direct apăsarea butonului `Write` pe telefonul său și folosește stickere demonstrative separat de lotul nou sigilat ce va fi distribuit elevilor la Etapa 8.

### D. Siguranța Datelor Personale (Privacy)
- **Scenariu**: Copiii vor să scrie pe cip adresa exactă a blocului/apartamentului sau numele lor complet împreună cu adresa.
- **Prevenire & Ghidare**:
  - Explicați clar regula de siguranță digitală: **pe un obiect care poate fi găsit de străini NU scriem niciodată adresa de acasă!** În clasă testăm cu un text generic sau cu un număr de telefon demonstrativ, iar acasă părinții decid ce număr de contact salvează pe sticker.

---

## 🖨️ 3. Riscuri la Imprimarea Puzzle-urilor 3D din Lecția 07 (Etapa 2 & Etapa 8)

### A. Desprinderea pieselor mici (`16 piese x 10 elevi = 160 piese`!)
- **Scenariu**: Fiecare puzzle are 16 piese de aproximativ `20 x 20 mm`. Dacă placa PEI are amprente grase de la mâini, una dintre piesele din colț se poate desprinde în timpul imprimării rapide, stricând întregul platou!
- **Prevenire & Ghidare**:
  - Spălați sau degresați plăcile PEI cu alcool izopropilic înainte de oră.
  - Setați viteza primului strat mai lent (`50 mm/s`) și distribuiți puzzle-urile pe 2–3 imprimante Bambu Lab A1 (câte 3–4 puzzle-uri per platou), astfel încât printul să dureze `60 – 75 minute`.

### B. Activarea accidentală a opțiunii `Brim` în Bambu Studio
- **Scenariu**: Dacă feliatorul are activată opțiunea `Outer & Inner Brim`, Bambu Studio va adăuga o bordură de plastic exact în canalul de tăiere de `1.0 mm` dintre cele 16 piese, sudând puzzle-ul!
- **Prevenire & Ghidare**:
  - Setați obligatoriu **`Brim type: No-brim`** în Bambu Studio și verificați vizual în tab-ul *Preview* ca fantele de `1.0 mm` dintre piese să fie complet goale până la patul imprimantei.

---

## ⏳ 4. Riscuri Pedagogice & de Incluziune

### A. Elevii care nu au animale de companie se simt excluși
- **Scenariu**: Un copil fără câine sau pisică își pierde entuziasmul auzind „Pet Tag”.
- **Prevenire & Ghidare**:
  - Încă din primele 3 minute (Etapa 1), prezentați cele două misiuni egale ale proiectului: **Pet Tag** (pentru prietenii necuvântători) și **Smart Anti-Loss Tag** (pentru ghiozdan, chei, penar sau bicicletă — extrem de cool pentru adolescenți și pre-adolescenți!).

### B. Aglomerația la catedră la testarea NFC
- **Scenariu**: Toți cei 10 elevi vin deodată în jurul telefonului profesorului la minutul 85.
- **Prevenire & Ghidare**:
  - Chemați elevii pe rând, câte 1–2 pe măsură ce termină de centrat lăcașul de 26 mm în Tinkercad, ca stație rapidă de „testare tehnologică” de 30 de secunde per elev.

---

## ✅ 5. Quick Verification Checklist pentru Profesor

Înainte de începerea orei:
- [ ] Plăcile PEI de pe Bambu Lab A1 sunt curățate cu alcool izopropilic.
- [ ] În Bambu Studio, toate puzzle-urile din Lecția 07 au **`No-brim`** activ și fanta de 1 mm verificată în *Preview*.
- [ ] Aplicația **NFC Tools** este instalată și testată pe smartphone (funcția NFC activată în setările telefonului).
- [ ] Stickerele NFC sunt model **`NTAG213` / `NTAG215`** de `25 mm` diametru (verificat diametrul real cu rigla).
- [ ] Brelocul demonstrativ „Rex” este pregătit pe catedră pentru deschiderea orei.
