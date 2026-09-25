# Prezentare: Lecția 01 [3DS2.1] – Anatomia Imprimantei 3D

---

### 🎨 Canva AI Master Prompt

```text
Creează o prezentare educațională teoretică, clară și captivantă (format 16:9 widescreen) destinată elevilor cu vârste între 10 și 12 ani, pentru Lecția 01 din cursul 3D School Start.
Tema principală: Anatomia Mecanică a Imprimantelor 3D, Cele 4 Mari Etape Istorice (RepRap, Prusa, Ender 3, Bambu Lab), Mișcarea pe Axele X-Y-Z-E și Componentele Termice (Hotend, Nozzle, Heatbed, Termistor).
Stil vizual: Modern, curat, mature-tech, fundaluri în nuanțe profesionale de slate/navy/teal cu accente de galben și portocaliu. Carduri structurate, casete cu margini rotunjite, pictograme clare și etichete lizibile. Fără elemente infantile sau supraîncărcate.
Include containere bine definite pentru text și spații rezervate de tip [Placeholder Imagine: ...] pentru inserarea de fotografii reale de imprimante, diagrame de axe și componente mecanice.
Prezentarea se concentrează exclusiv pe teorie, istorie și mecanica imprimării 3D.
```

---

## Structura Slide-urilor (Teorie & Concepte)

---

### Slide 1: Titlu & Deschidere
- **Titlu Principal**: Anatomia Imprimantei 3D
- **Subtitlu**: Cum funcționează componentele unei imprimante FDM | Lecția 01 [3DS2.1]
- **Elemente Vizuale**:
  - [Placeholder Imagine: O imprimantă 3D Bambu Lab A1 în funcțiune în laborator]
  - Card introductiv: *„Descoperim mecanica și componentele din interiorul imprimantei 3D!”*
- **Speaker Notes**:
  *„Bine ați venit la prima noastră lecție de anatomie a imprimantei 3D! Astăzi vom înțelege cum funcționează mașinile noastre din laborator, cum își coordonează mișcările pe axe și cum controlează temperatura pentru a transforma filamentul în obiecte solide.”*

---

### Slide 2: Cele 4 Etape ale Imprimării 3D
- **Titlu**: Evoluția Imprimantelor 3D
- **Conținut Structurat în 4 Carduri**:
  1. **RepRap (2005-2011)**: Proiectul open-source – imprimante care își imprimau propriile piese din plastic.
  2. **Prusa i3 (2012-2018)**: Standardul de fiabilitate, cadru rigid și software dedicat (PrusaSlicer).
  3. **Ender 3 (2018-2022)**: Imprimanta accesibilă care a adus tehnologia 3D acasă și în școli.
  4. **Bambu Lab (2022 - Prezent)**: Viteză ridicată, senzori de calibrare automată și sistem multicolor AMS.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Cronologie vizuală cu RepRap, Prusa MK3S, Creality Ender 3 și Bambu Lab A1]
- **Speaker Notes**:
  *„Imprimantele 3D au evoluat rapid: de la proiecte experimentale construite manual, la modele accesibile tuturor, până la echipamentele rapide și automate pe care le folosim astăzi.”*

---

### Slide 3: Coordonatele Spațiului: Axele X, Y și Z
- **Titlu**: Cum se mișcă imprimanta în spațiu?
- **Conținut**:
  - **Axa X (Stânga - Dreapta)**: Capul de imprimare se deplasează pe șina orizontală ghidat de o curea dințată.
  - **Axa Y (Față - Spate)**: Patul de imprimare culisează înainte și înapoi sub duză.
  - **Axa Z (Sus - Jos)**: Tije filetate din oțel ridică brațul strat cu strat (de regulă cu 0.2 mm la fiecare trecere).
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă 3D a unei imprimante cu săgeți marcând axele X, Y și Z]
- **Speaker Notes**:
  *„Orice obiect 3D are lățime, lungime și înălțime. Motoarele pas-cu-pas deplasează capul și patul de imprimare pe aceste trei axe cu o precizie de fracțiuni de milimetru.”*

---

### Slide 4: Axa E – Extruderul
- **Titlu**: Axa E: Motorul care împinge filamentul
- **Conținut**:
  - **Ce este Axa E?**: Motorul pas-cu-pas care antrenează firul de plastic de pe rolă.
  - **Mecanismul de Antrenare**: Roți dințate metalice care prind filamentul ferm pentru a nu aluneca.
  - **Controlul Fluxului**: Oprește și retrage firul (retraction) la deplasările fără depunere de material.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Detaliu al unui extruder cu roți dințate antrenând un fir de filament PLA]
- **Speaker Notes**:
  *„În timp ce axele X, Y și Z controlează poziția în spațiu, axa E este motorul care împinge plasticul în zona caldă. Fără ea, imprimanta s-ar mișca fără să depună material.”*

---

### Slide 5: Sistemul de Încălzire: Blocul Termic și Duza
- **Titlu**: Zona Caldă: Cum se topește filamentul?
- **Conținut**:
  - **Blocul Termic (*Heater Block*)**: Încălzește zona de lucru la 210°C–220°C pentru PLA.
  - **Duza (*Nozzle*) de 0.4 mm**: Vârful metalic prin care iese firul subțire de plastic topit.
  - **Radiatorul și Heatbreak-ul**: Mențin partea superioară rece pentru a preveni blocajele de filament.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Schemă secționată a unui Hotend evidențiind radiatorul, heatbreak-ul și duza caldă]
- **Speaker Notes**:
  *„În interiorul capului de printare, plasticul este încălzit până devine maleabil și este presat prin duza de 0.4 mm. Partea superioară este răcită continuu pentru a evita blocarea filamentului.”*

---

### Slide 6: Patul Încălzit (Heatbed) & Termistorul
- **Titlu**: Aderența Piesei și Controlul Temperaturii
- **Conținut**:
  - **Patul Încălzit (50°C–65°C)**:
    - Asigură lipirea primului strat de suprafața de lucru.
    - Previne dezlipirea sau curbarea colțurilor piesei (*warping*).
  - **Termistorul (Senzorul de Temperatură)**:
    - Măsoară temperatura în timp real de zeci de ori pe secundă.
    - Permite plăcii de bază să mențină căldura constantă și sigură.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Termografie arătând distribuția căldurii pe suprafața patului de imprimare]
- **Speaker Notes**:
  *„Dacă primul strat se răcește prea brusc, plasticul se contractă și se poate desprinde. Patul încălzit menține piesa stabilă pe durata întregului proces de imprimare.”*
