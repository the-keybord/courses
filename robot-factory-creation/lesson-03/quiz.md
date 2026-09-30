# Quiz Kahoot: Lecția 03 [RBF1.3] – Platforme de Microcontrolere, Descoperirea BBC Micro:Bit și Primii Pași în MakeCode

---

## 📌 Informații Generale Quiz
- **Cod Lecție**: RBF1.3
- **Număr Întrebări**: 10
- **Durată Alocată în Lecție**: 15 minute (inclusiv discuții și consolidare pedagogică după fiecare întrebare)
- **Timp Recomandat per Întrebare**: 20 – 30 secunde
- **Platformă Recomandată**: Kahoot!

---

## 🏆 Banca de Întrebări & Răspunsuri

### Întrebarea 1
Ce este un microcontroler?

- A) Laptop fără ecran
- B) Computer pe cip *(Corect)*
- C) Consolă de jocuri
- D) Telefon fără SIM

> **Explicație**: Un microcontroler este un computer miniaturizat integrat pe un singur cip, conținând procesor, memorie și pini de intrare/ieșire pentru senzori și motoare.

---

### Întrebarea 2
Care platformă creată în Italia în 2005 are comunitate uriașă, dar NU are Wi-Fi sau Bluetooth integrat?

- A) BBC Micro:Bit
- B) ESP32
- C) Arduino Uno *(Corect)*
- D) Raspberry Pico

> **Explicație**: Arduino Uno (ATmega328P) este cea mai faimoasă platformă clasică, dar procesorul său nu include niciun modul radio wireless integrat.

---

### Întrebarea 3
Câte LED-uri are matricea de pe fața plăcii BBC Micro:Bit?

- A) 16 LED-uri
- B) 25 LED-uri *(Corect)*
- C) 36 LED-uri
- D) 64 LED-uri

> **Explicație**: Micro:Bit-ul are o matrice de 5x5 = 25 LED-uri roșii care pot afișa text, numere, icoane și măsoară nivelul de lumină ambientală.

---

### Întrebarea 4
Ce senzor NU este integrat direct pe placa Micro:Bit v2?

- A) Accelerometru
- B) Senzor ultrasonic *(Corect)*
- C) Microfon integrat
- D) Senzor temperatură

> **Explicație**: Senzorul ultrasonic de distanță (HC-SR04) este un modul extern separat care trebuie conectat prin cabluri.

---

### Întrebarea 5
În MakeCode, ce face blocul „forever"?

- A) Rulează o dată
- B) Repetă la infinit *(Corect)*
- C) Oprește programul
- D) Șterge ecranul

> **Explicație**: Blocul „forever" repetă codul din interiorul său în buclă continuă, la infinit, până când oprim alimentarea plăcii.

---

### Întrebarea 6
Din ce categorie de blocuri face parte „on button A pressed"?

- A) Basic
- B) Input *(Corect)*
- C) Logic
- D) Loops

> **Explicație**: Blocurile pentru butoane, gesturi de agitare (shake) și senzori se găsesc în categoria roz **Input** din MakeCode.

---

### Întrebarea 7
Ce bloc din MakeCode generează un număr la întâmplare (zar)?

- A) show number
- B) pick random *(Corect)*
- C) set variable
- D) repeat times

> **Explicație**: Blocul „pick random 1 to 6" din categoria **Math** generează un număr aleatoriu, simulând aruncarea unui zar clasic.

---

### Întrebarea 8
De ce Micro:Bit-ul nu poate roti direct un motor de pe pinii săi?

- A) Nu are pini
- B) Curent prea mic *(Corect)*
- C) Necesită 220V
- D) Fără suport software

> **Explicație**: Pinii GPIO ai Micro:Bit-ului furnizează doar circa 5 mA, mult prea puțin pentru un motor DC care consumă sute de miliamperi.

---

### Întrebarea 9
Ce rol are placa de expansiune robot:bit?

- A) Înlocuiește procesorul
- B) Driver pentru motoare *(Corect)*
- C) Ecran tactil color
- D) Conexiune 5G

> **Explicație**: Placa robot:bit conține un driver de forță H-Bridge și conectori pentru servomotoare, alimentând motoarele din bateria externă.

---

### Întrebarea 10
Ce coordonate are colțul stânga-sus pe ecranul Micro:Bit?

- A) x=4, y=4
- B) x=1, y=1
- C) x=0, y=0 *(Corect)*
- D) x=5, y=5

> **Explicație**: Matricea de 5x5 LED-uri este numerotată de la 0 la 4 pe ambele axe: colțul stânga-sus are coordonatele (0, 0).

---

## ✅ Grila Rapidă de Răspunsuri Corecte

| Nr. | Răspuns Corect |
| :---: | :--- |
| 1 | B – Computer pe cip |
| 2 | C – Arduino Uno |
| 3 | B – 25 LED-uri |
| 4 | B – Senzor ultrasonic |
| 5 | B – Repetă la infinit |
| 6 | B – Input |
| 7 | B – pick random |
| 8 | B – Curent prea mic |
| 9 | B – Driver pentru motoare |
| 10 | C – x=0, y=0 |
