# Prezentare: Lecția 03 [RBF2.3] – Platforme de Microcontrolere, Anatomia ESP32 și Reconstrucția Circuitului RF 2.0

> ### 📋 Master Prompt pentru Canva Magic Design / Instrumente de Prezentare AI
> *(Copiați acest bloc direct în Canva sau asistentul de prezentare pentru a genera designul și structura inițială)*:
> - **Format**: Prezentare educațională pe ecran lat (**16:9 Slide Deck**).
> - **Public Țintă / Audience**: Elevi cu vârsta de **11–15 ani** din programul Robot Factory: Evolution (ton tehnic direct, serios dar accesibil, fără infantilizare; terminologie inginerească explicată clar).
> - **Obiectiv / Goal**: Prezentarea ecosistemului de platforme de microcontrolere educaționale și industriale (Arduino, Micro:Bit, Makeblock, CyberBrick, ESP32, Raspberry Pi Pico, STM32), analiza detaliată a arhitecturii ESP32 (dual-core, Wi-Fi, BLE, GPIO, ADC, PWM), explicarea funcționării pinilor GPIO și a limitelor de curent, demonstrarea necesității unui driver H-Bridge pentru motoarele DC și clarificarea de ce servomotoarele micro funcționează fără driver extern.
> - **Stil Vizual & Vibe / Style & Mood**: Ingineresc, tehnic și curat. Paletă de culori sobră și matură (gri antracit, albastru electric închis, accente de verde neon tehnic pe fundaluri întunecate). Tipografie modernă sans-serif, carduri de informații cu chenare drepte și spații aerisite. Fără decorațiuni copilărești sau metafore spațiale.
> - **Regulă Generare Imagini (Anti-AI Slop & Stil Abstract Exclusiv)**: Generează cât mai puține imagini posibile. Prioritizează slide-uri curate cu tipografie și containere libere pentru adăugarea manuală de fotografii reale ale plăcilor de microcontrolere. Dacă generezi ilustrații, folosește exclusiv **grafică vectorială plată (flat vector)** sau **diagrame tehnice 2D simple**. Nu genera imagini 3D pseudo-fotorealiste.
> - **Tratare Imagini de Lecție**: Fiecare slide conține o rubrică de tip `[Placeholder Imagine]` pentru inserarea ulterioară a unei fotografii reale sau a unei diagrame tehnice.

---

## Slide 1: Coperta de Lecție
- **Titlu**: Creierele Roboților: Microcontrolere și ESP32
- **Subtitlu**: Lecția 03 [RBF2.3] – Robot Factory: Evolution
- **Conținut & Puncte Cheie**:
  - Astăzi deschidem cutia neagră a microcontrolerelor.
  - Descoperim ce platforme există, de ce am ales ESP32 și cum comunică procesorul cu motoarele.
  - A doua parte: reconstrucția completă a circuitului robotic RF 2.0.
- **Note pentru Profesor**:
  - Salutați rapid și faceți tranziția directă către recap. Lecția are un format alert: 25 minute de teorie intensă, apoi 70 minute de practică.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie de aproape cu un modul ESP32-WROOM montat pe o placă de extensie, cu cabluri DuPont conectate.*

---

## Slide 2: Ce Vom Descoperi Astăzi?
- **Titlu**: Întrebările Cheie ale Lecției
- **Subtitlu**: 4 Provocări de Inginerie
- **Conținut & Puncte Cheie**:
  - 1. Ce platforme de microcontrolere există pe piață și prin ce se deosebesc?
  - 2. Ce face ESP32 atât de puternic pentru robotica mobilă (dual-core, Wi-Fi, BLE, GPIO)?
  - 3. De ce un motor DC nu poate fi conectat direct la un pin GPIO, dar un servomotor micro da?
  - 4. Cum distribuim 7.4V de la baterie prin tot circuitul robotului RF 2.0?
- **Note pentru Profesor**:
  - Folosiți aceste 4 întrebări ca fir roșu al prezentării. La finalul teoriei, elevii trebuie să poată răspunde la fiecare.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Colaj grafic cu pictograme tehnice: cip, baterie, motor, semnal PWM.*

---

## Slide 3: Peisajul Platformelor de Microcontrolere (Partea 1)
- **Titlu**: Arduino, BBC Micro:Bit & Makeblock
- **Subtitlu**: Trei Abordări Diferite ale Electronicii Educaționale
- **Conținut & Puncte Cheie**:
  - **Arduino Uno (ATmega328P)**: Platformă open-source, 16 MHz, 32 KB flash, comunitate uriașă. Lipsă completă de wireless integrat.
  - **BBC Micro:Bit**: Matrice 25 LED-uri, accelerometru, busolă, radio 2.4 GHz. Ideal pentru copii mai mici, limitat ca GPIO și putere de calcul.
  - **Makeblock (mBot)**: Ecosistem cu mufe RJ25 proprietare, programare vizuală mBlock. Simplu, dar restrictiv la componente universale.
- **Note pentru Profesor**:
  - Dacă aveți mostre fizice ale acestor plăci pe masa demonstrativă, arătați-le pe rând. Comparați dimensiunile fizice.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu trei plăci de microcontrolere (Arduino Uno, Micro:Bit, mBot) așezate alături pe o masă.*

---

## Slide 4: Peisajul Platformelor (Partea 2) & De Ce ESP32?
- **Titlu**: CyberBrick, ESP32, Raspberry Pi Pico & STM32
- **Subtitlu**: De la Jucării la Inginerie Industrială
- **Conținut & Puncte Cheie**:
  - **CyberBrick**: Conectori magnetici snap-together, compatibil LEGO. Zero flexibilitate la nivel de cod sau pini.
  - **ESP32 (Espressif)**: Dual-core 240 MHz, Wi-Fi + BLE, 34 GPIO, ADC, PWM, touch, deep sleep. Sub 5$.
  - **Raspberry Pi Pico**: Dual-core ARM 133 MHz, MicroPython, bun dar fără Bluetooth (varianta standard).
  - **STM32**: Industrial-grade ARM Cortex, putere maximă, curbă de învățare abruptă.
  - **Concluzia**: ESP32 oferă cel mai bun raport putere / conectivitate / preț / ecosistem pentru RF 2.0.
- **Note pentru Profesor**:
  - Subliniați că ESP32 este chipul care domină piața IoT globală, nu doar o jucărie educațională.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu un modul ESP32-WROOM dezgolit lângă o monedă de 1 leu pentru referința de dimensiune.*

---

## Slide 5: ESP32 în Detaliu – Arhitectura Internă
- **Titlu**: Anatomia ESP32: Ce Se Află în Interiorul Cipului
- **Subtitlu**: Dual-Core, Radio și 34 de Linii GPIO
- **Conținut & Puncte Cheie**:
  - **Procesor**: 2x Xtensa LX6 la 240 MHz – un nucleu pentru motoare, unul pentru BLE.
  - **Wi-Fi**: 802.11 b/g/n (2.4 GHz) – folosit în RF 1.0, abandonat pentru BLE în RF 2.0.
  - **BLE 4.2**: Protocol wireless cu consum ultra-redus, ideal pentru gamepad de telefon.
  - **ADC 12-bit**: Citire tensiuni analogice (0–3.3V → valori 0–4095).
  - **PWM pe orice pin**: Controlul vitezei motoarelor și al poziției servomotoarelor.
  - **10 pini Touch**: Senzori tactili capacitivi fără butoane mecanice.
  - **Deep Sleep**: Consum sub 10 µA pentru aplicații IoT pe baterie.
- **Note pentru Profesor**:
  - Afișați diagrama bloc oficială Espressif dacă o aveți disponibilă. Focalizați-vă pe dual-core și GPIO.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Diagrama bloc simplificată a ESP32 (procesoare, radio, GPIO, ADC) – descărcată din documentația Espressif.*

---

## Slide 6: Pinii GPIO – Limbajul Fizic al Microcontrolerului
- **Titlu**: Ce Sunt Pinii GPIO și Ce Pot Face
- **Subtitlu**: Digital, Analog și PWM
- **Conținut & Puncte Cheie**:
  - **Ieșire Digitală**: HIGH (3.3V) sau LOW (0V) – aprinde LED-uri, trimite semnale.
  - **Intrare Digitală**: Citește starea unui buton sau a unui senzor (apăsat/neapăsat).
  - **Intrare Analogică (ADC)**: Măsoară tensiuni variabile (potențiometru, senzor de lumină).
  - **Ieșire PWM**: Comutare ultra-rapidă HIGH/LOW pentru control de viteză sau poziție servo.
  - **⚠️ Limita Critică**: Max ~40 mA per pin. Un LED consumă 10-20 mA (OK). Un motor DC consumă 200-1000 mA (IMPOSIBIL direct din GPIO!).
- **Note pentru Profesor**:
  - Întrebați elevii: „Dacă un pin dă maxim 40 mA și motorul cere 800 mA, de câte ori depășim limita?" (răspuns: de 20 de ori).
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Diagramă simplificată a unui pin GPIO cu direcțiile de curent (source/sink) și pragurile de tensiune HIGH/LOW.*

---

## Slide 7: Driverul de Motoare – De Ce Avem Nevoie de H-Bridge
- **Titlu**: TB6612FNG: Amplificatorul de Forță al Robotului
- **Subtitlu**: Cum Transformăm Semnale Slabe în Mișcare Puternică
- **Conținut & Puncte Cheie**:
  - **Problema 1 – Curent insuficient**: GPIO furnizează ~40 mA, motorul cere 200-1000 mA.
  - **Problema 2 – Inversare de sens**: Un singur pin nu poate inversa polaritatea pe bornele motorului.
  - **Soluția – Puntea H (H-Bridge)**: 4 MOSFET-uri care comută curentul din bateria de 7.4V prin motor în ambele direcții.
  - **Pinii de control**: AIN1, AIN2 (direcție Motor A), PWMA (viteză Motor A), STBY (activare/dezactivare).
  - **Alimentare separată**: VM = 7.4V direct din baterie (putere), VCC = 3.3V din ESP32 (logică).
- **Note pentru Profesor**:
  - Dacă aveți un modul TB6612FNG fizic, arătați-l și indicați pinii pe el.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Diagramă a principiului H-Bridge cu cele 4 tranzistoare și motorul în centru, cu săgeți indicând cele două direcții de curent.*

---

## Slide 8: Servomotoare Micro – Excepția Elegantă
- **Titlu**: De Ce Servo SG90 / MG90S Nu Are Nevoie de Driver Extern?
- **Subtitlu**: Un Motor cu Creierul Său Propriu
- **Conținut & Puncte Cheie**:
  - **Ce conține un servomotor micro în interior**: Motor DC miniaturizat + reductor mecanic + circuit electronic de control + potențiometru de feedback.
  - **Circuitul intern** primește semnalul PWM, compară poziția și comandă automat motorul.
  - **Din perspectiva ESP32**: Trimitem doar un semnal PWM pe firul de semnal (curent neglijabil pe GPIO).
  - **Alimentare**: 5V de pe șina plăcii de extensie (nu de pe GPIO!).
  - **Protocolul**: 50 Hz, impuls 500 µs = 0°, impuls 2500 µs = 180°.
- **Note pentru Profesor**:
  - Întrebați elevii: „Cine este driverul servomotorului?" Răspuns: circuitul electronic din interiorul carcasei.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Fotografie cu un servomotor SG90 deschis, arătând motorul DC intern, cutia de viteze și plăcuța electronică de control.*

---

## Slide 9: Distribuția de Putere – 7.4V Prin Tot Circuitul
- **Titlu**: Cum Ajunge Energia de la Baterie la Fiecare Component
- **Subtitlu**: Bateria 2S → Comutator → Placă Extensie → Tot Sistemul
- **Conținut & Puncte Cheie**:
  - **Sursa**: Pachet 2S Li-Ion (7.4V nominal, max 8.4V).
  - **Comutatorul ON/OFF**: Întrerupe fizic polul pozitiv – oprire completă fără deconectare cablu.
  - **Placa de extensie violet ESP32**: Hub central de distribuție cu VIN, GND, regulator intern 5V/3.3V.
  - **Către ESP32**: 7.4V → regulator intern → 3.3V la procesor.
  - **Către servomotoare și senzori**: Șina de 5V a plăcii de extensie.
  - **Către motoarele DC**: 7.4V direct pe pinul VM al driverului TB6612FNG.
- **Note pentru Profesor**:
  - Folosiți schema imprimată distribuită elevilor și indicați fiecare nod de tensiune.
- **Imagine / Vizual**:
  - > 🖼️ **[Placeholder Imagine]**: *Schema bloc simplificată a fluxului de putere: Baterie → Switch → Placă Extensie → (ESP32 + Senzori 5V + Driver VM 7.4V).*

---

## Slide 10: Briefing Practic – Reconstrucția Circuitului RF 2.0
- **Titlu**: Misiunea Practică: Recablare Completă și Lipire Comutator
- **Subtitlu**: Checklist de Lucru pe Bancul Individual (70 minute)
- **Conținut & Puncte Cheie (Checklist Sintetic)**:
  - 1. **Deconectare baterie** și fotografiere circuit actual.
  - 2. **Demontare** toate cablurile DuPont vechi → pungă etichetată.
  - 3. **Recablare** cu cabluri DuPont noi (scurte, calitate superioară) conform schemei imprimate.
  - 4. **Lipire comutator**: Tăiere fir pozitiv → dezizolare 5-7 mm → pre-tinning → lipire pe terminale → izolare cu heat shrink → test continuitate.
  - 5. **Conectare baterie 7.4V**: Fir pozitiv (după comutator) → VIN placă extensie. Fir negativ → GND. Cablu suplimentar VIN → VM driver motoare.
  - 6. **Verificare cu multimetru**: VIN = 7.0-8.4V, VM driver = 7.0-8.4V, șina 5V = ~5.0V, LED ESP32 = aprins.
- **Note pentru Profesor**:
  - Acest slide este exclusiv un panou de orientare. Profesorul demonstrează fiecare pas live, pe rând, la masa demonstrativă.
- **Imagine / Vizual**:
  - *(Fără imagini – slide de briefing tehnic și orientare).*
