# Prezentare: Lecția 03 [RBF1.3] – Platforme de Microcontrolere, Descoperirea BBC Micro:Bit și Primii Pași în MakeCode

> ### 📋 Master Prompt pentru Canva Magic Design / Instrumente de Prezentare AI
> *(Copiați acest bloc direct în Canva sau asistentul de prezentare pentru a genera designul și structura inițială)*:
> - **Format**: Prezentare educațională pe ecran lat (**16:9 Slide Deck**).
> - **Public Țintă / Audience**: Elevi cu vârsta de **11–14 ani** din programul Robot Factory: Creation (ton tehnic accesibil, prietenos, clar și ușor de urmărit; terminologie explicată simplu pentru începători absoluti în programare și electronică).
> - **Obiectiv / Goal**: Prezentarea ecosistemului de platforme de microcontrolere educaționale (Arduino, Makeblock, CyberBrick, ESP32, Micro:Bit, Raspberry Pi Pico), analiza detaliată a capabilităților BBC Micro:Bit v2 (senzori integrați, LED-uri 5x5, butoane, accelerometru, busolă, microfon, difuzor, logo tactil, radio, BLE), explicarea modului în care Micro:Bit comandă motoare și servomotoare prin placa robot:bit, și introducerea mediului de programare Microsoft MakeCode cu categorii de blocuri.
> - **Stil Vizual & Vibe / Style & Mood**: Educațional modern, curat și accesibil. Paletă de culori inspirată de Micro:Bit: fundal albastru-gri deschis cu accente de verde Micro:Bit (#00ED00) și galben cald. Tipografie modernă sans-serif, carduri cu colțuri rotunjite, spații aerisite. Grafică prietenoasă dar nu copilărească.
> - **Regulă Generare Imagini (Anti-AI Slop & Stil Abstract Exclusiv)**: Prioritizează slide-uri cu tipografie clară și containere libere pentru adăugarea manuală de fotografii reale ale plăcilor Micro:Bit. Dacă generezi ilustrații, folosește exclusiv **grafică vectorială plată (flat vector)** sau **diagrame tehnice 2D simple**. Nu genera imagini 3D pseudo-fotorealiste.
> - **Tratare Imagini de Lecție**: Fiecare slide conține o rubrică de tip `[Placeholder Imagine]` pentru inserarea ulterioară a unei fotografii reale sau capturi de ecran MakeCode.

---

## Slide 1: Coperta de Lecție
- **Titlu**: Creierele Roboților: Microcontrolere și BBC Micro:Bit
- **Subtitlu**: Lecția 03 [RBF1.3] – Robot Factory: Creation
- **Conținut & Puncte Cheie**:
  - Astăzi descoperim ce microcontrolere există și de ce am ales Micro:Bit.
  - Vom explora tot ce poate face placa Micro:Bit: senzori, LED-uri, butoane, radio.
  - A doua parte: primele noastre programe pe simulatorul MakeCode!
- **Note pentru Profesor**:
  - Deschideți cu întrebarea: „Dacă un robot este ca un corp uman, care este creierul lui?"
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu o placă BBC Micro:Bit v2 ținută în mână de un copil, cu matricea LED aprinsă afișând o inimă.*

---

## Slide 2: Ce Este un Microcontroler?
- **Titlu**: Computer Miniaturizat pe un Singur Cip
- **Subtitlu**: Procesor + Memorie + Pini I/O = Creierul Robotului
- **Conținut & Puncte Cheie**:
  - Un microcontroler conține: procesor, memorie RAM, memorie flash și pini de intrare/ieșire.
  - NU are ecran, tastatură sau sistem de operare vizual (ca un laptop).
  - Rolul său: citește senzori → procesează date → comandă actuatori (motoare, LED-uri, buzzer-uri).
  - Se programează de pe un computer, apoi programul rulează independent pe cip.
- **Note pentru Profesor**:
  - Comparați vizual un microcontroler (plăcuță mică) cu un laptop (computer complet). Același concept, scară diferită.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Comparație vizuală: fotografie cu un laptop lângă o placă Micro:Bit, cu săgeți indicând „ecran, tastatură, OS" la laptop și „procesor, memorie, pini" la microcontroler.*

---

## Slide 3: Peisajul Platformelor de Microcontrolere
- **Titlu**: Arduino, Makeblock, CyberBrick, ESP32, Pico & Micro:Bit
- **Subtitlu**: Fiecare Platformă Are Punctele Ei Forte
- **Conținut & Puncte Cheie**:
  - **Arduino Uno**: Cea mai faimoasă, open-source, comunitate uriașă. Fără Wi-Fi/Bluetooth. Programare C/C++.
  - **Makeblock (mBot)**: Module proprietare RJ25, programare vizuală mBlock. Simplu, dar restrictiv.
  - **CyberBrick**: Snap-together, compatibil LEGO, conectori magnetici. Zero cod real.
  - **ESP32**: Dual-core 240 MHz, Wi-Fi + BLE, industrial. Programare C/C++ (avansat).
  - **Raspberry Pi Pico**: ARM dual-core, MicroPython, ieftin. Fără senzori pe placă.
  - **BBC Micro:Bit**: Senzori integrați, blocuri vizuale, Python. **Platforma noastră!**
- **Note pentru Profesor**:
  - Dacă aveți plăci fizice disponibile, arătați-le elevilor. Comparați dimensiunile.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Colaj cu fotografii ale plăcilor: Arduino Uno, mBot, ESP32, Pico și Micro:Bit, așezate pe o masă.*

---

## Slide 4: De Ce Micro:Bit? – Ce Îl Face Special
- **Titlu**: 4 Superputeri ale Platformei BBC Micro:Bit
- **Subtitlu**: Motivele Alegerii Noastre pentru Robot Factory: Creation
- **Conținut & Puncte Cheie**:
  - **1. Barieră de intrare zero**: Programare cu blocuri vizuale (drag & drop), zero experiență necesară.
  - **2. Senzori integrați fără cablare**: Accelerometru, busolă, temperatură, microfon, lumină – direct pe placă.
  - **3. De la blocuri la Python cu un clic**: MakeCode arată codul Python echivalent blocurilor tale.
  - **4. Radio nativ între plăci**: Comunicare wireless directă între Micro:Bit-uri fără configurare de rețea.
- **Note pentru Profesor**:
  - Subliniați că elevii vor trece de la blocuri la Python pe parcursul cursului, dar vor începe cu varianta vizuală.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Diagrama cu cele 4 avantaje dispuse vizual în carduri colorate.*

---

## Slide 5: Anatomia Micro:Bit v2 – Fața Frontală
- **Titlu**: Ce Se Află pe Placa Micro:Bit (Față)
- **Subtitlu**: LED-uri, Butoane și Logo Tactil
- **Conținut & Puncte Cheie**:
  - **Matricea 5x5 de 25 LED-uri roșii**: Afișează numere, litere, icoane, animații. Funcționează și ca senzor de lumină!
  - **Butonul A (stânga)** și **Butonul B (dreapta)**: 2 butoane fizice programabile. Se pot folosi individual (A sau B) sau împreună (A+B).
  - **Logo-ul tactil auriu (v2)**: Funcționează ca al treilea buton – detectează atingerea degetului.
  - **Procesorul ARM Cortex-M4 la 64 MHz**: Nordic nRF52833, suficient de puternic pentru roboti educaționali.
- **Note pentru Profesor**:
  - Indicați fiecare element pe fotografia de pe slide. Dacă aveți un Micro:Bit fizic, ridicați-l.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie mărită a feței frontale Micro:Bit v2 cu etichete săgeată indicând: matrice LED, buton A, buton B, logo tactil.*

---

## Slide 6: Anatomia Micro:Bit v2 – Fața din Spate & Senzori
- **Titlu**: Senzori Integrați și Conectorul Edge
- **Subtitlu**: Tot Ce Are Micro:Bit Fără A Conecta Nimic
- **Conținut & Puncte Cheie**:
  - **Accelerometru (mișcare pe 3 axe)**: Detectează shake, tilt, free fall.
  - **Busolă (magnetometru)**: Direcția cardinală 0°–359°. Necesită calibrare la prima utilizare.
  - **Senzor de temperatură**: Integrat pe procesor, măsoară °C.
  - **Microfon MEMS (v2)**: Detectează nivelul sonor, reacționează la aplauze sau strigăte.
  - **Difuzor buzzer (v2)**: Redă tonuri și melodii fără buzzer extern.
  - **Conectorul Edge (pini GPIO)**: 25 pini – 3 mari (0, 1, 2) accesibili cu cleme crocodil.
  - **Consum: ~30 mA** – alimentat cu 2x AAA (3V) sau USB.
- **Note pentru Profesor**:
  - Atingeți fiecare element dacă aveți placa fizică. Întrebați: „Câți senzori are fără a conecta nimic?"
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie mărită a spatelui Micro:Bit v2 cu etichete: microfon, difuzor, procesor, conector baterie. Plus detaliu al conectorului edge cu pinii aurii.*

---

## Slide 7: Cum Construim un Robot cu Micro:Bit? – Placa robot:bit
- **Titlu**: Micro:Bit = Creierul. robot:bit = Corpul.
- **Subtitlu**: Driver de Motoare, Alimentare Externă și Pini Accesibili
- **Conținut & Puncte Cheie**:
  - **Problemă**: Pinii GPIO ai Micro:Bit furnizează max ~5 mA – nu pot roti un motor!
  - **Soluție**: Placa de expansiune **robot:bit** adaugă:
    - Driver de motoare H-Bridge integrat (amplifică semnalele pentru motoare DC).
    - Conectori dedicați pentru servomotoare cu alimentare 5V.
    - Slot pentru baterie externă (4x AA sau Li-Ion).
    - Toți pinii GPIO expuși în conectori standardizați pentru senzori externi.
  - **Servomotoarele** au driver intern – au nevoie doar de semnal PWM + alimentare 5V de pe robot:bit.
  - **Vom primi plăcile** în lecțiile viitoare!
- **Note pentru Profesor**:
  - Subliniați analogia: Micro:Bit gândește, robot:bit transformă gândurile în mișcare.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu un Micro:Bit montat pe o placă robot:bit, cu motoare și senzori conectați.*

---

## Slide 8: MakeCode – Mediul Nostru de Programare
- **Titlu**: Microsoft MakeCode: Unde Scriem Primele Programe
- **Subtitlu**: makecode.microbit.org
- **Conținut & Puncte Cheie**:
  - **Simulatorul (stânga)**: Micro:Bit virtual cu LED-uri, butoane A/B, senzori simulați.
  - **Toolbox-ul (centru)**: Categorii de blocuri colorate: Basic, Input, Music, LED, Radio, Loops, Logic, Variables, Math.
  - **Spațiul de lucru (dreapta)**: Zona unde tragem și conectăm blocurile.
  - **„on start"**: Rulează codul O SINGURĂ DATĂ la pornire (inițializări, salut).
  - **„forever"**: Rulează codul ÎN BUCLĂ INFINITĂ (animații, citiri de senzori).
- **Note pentru Profesor**:
  - Deschideți MakeCode pe ecranul mare și indicați live fiecare zonă a interfeței.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Captură de ecran a interfeței MakeCode cu zone etichetate: Simulator, Toolbox, Workspace.*

---

## Slide 9: Categoriile de Blocuri MakeCode
- **Titlu**: Toolbox-ul: Blocuri pentru Orice Ai Nevoie
- **Subtitlu**: Fiecare Culoare = O Categorie de Funcții
- **Conținut & Puncte Cheie**:
  - 🔵 **Basic**: show string, show number, show icon, show leds, pause, clear screen.
  - 🩷 **Input**: on button pressed, on shake, temperature, light level, acceleration.
  - 🎵 **Music**: play tone, play melody, set volume.
  - 🔴 **LED**: plot x y, unplot x y, toggle, brightness.
  - 🟢 **Loops**: repeat, for, while, every.
  - 🩵 **Logic**: if then else, comparații (=, >, <), and/or/not.
  - 🟠 **Variables**: set, change, create variable.
  - 🟣 **Math**: arithmetic, pick random, map.
- **Note pentru Profesor**:
  - Arătați fiecare categorie în MakeCode live, deschizând-o pe scurt. Nu intrați în detalii – exercițiile vor acoperi fiecare categorie.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Captură de ecran a Toolbox-ului MakeCode cu toate categoriile vizibile și culorile lor.*

---

## Slide 10: Briefing Practic – Exerciții pe Simulatorul MakeCode
- **Titlu**: Misiunea Practică: 6 Exerciții pe MakeCode (70 minute)
- **Subtitlu**: Checklist de Activități pe Simulator
- **Conținut & Puncte Cheie (Checklist Sintetic)**:
  - 1. **Exercițiul „Salutul Robotului"** (Basic): show string, show icon, pause → animație de inimă care bate.
  - 2. **Exercițiul „Robotul Sensibil"** (Input): on button A/B, on shake → fețe diferite la fiecare eveniment.
  - 3. **Exercițiul „Jocul Deciziilor"** (Logic): if temperature > 25 then soare, else frig → slider de temperatură.
  - 4. **Exercițiul „Numărătoarea Inversă"** (Loops & Variables): for 0→9, while countdown 9→0.
  - 5. **Exercițiul „Pixelul Călător"** (LED): plot/unplot cu coordonate → punct care traversează rândul central.
  - 6. **Provocarea „Zarurile Digitale"** (Combinat): on shake + random + if-else → zar digital 1-6.
- **Note pentru Profesor**:
  - Demonstrați fiecare exercițiu pe ecranul mare, bloc cu bloc, apoi elevii replică pe calculatoarele lor.
- **Imagine / Vizual**:
  - *(Fără imagini – slide de briefing practic și orientare).*
