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
**Ce este un microcontroler?**
- A) Un laptop fără ecran și fără tastatură
- B) Un computer miniaturizat pe un singur cip, cu procesor, memorie și pini I/O *(Corect)*
- C) O consolă de jocuri portabilă cu Wi-Fi
- D) Un telefon mobil fără cartelă SIM

> **Explicație**: Un microcontroler este un computer miniaturizat integrat pe un singur cip, care conține procesor, memorie RAM, memorie flash și pini de intrare/ieșire. Nu are ecran, tastatură sau sistem de operare vizual – rolul său este de a citi senzori și de a comanda actuatori.

---

### Întrebarea 2
**Care platformă de microcontrolere a fost creată în 2005 la Ivrea, Italia și are o comunitate open-source imensă, dar NU are Wi-Fi sau Bluetooth integrat?**
- A) BBC Micro:Bit
- B) ESP32
- C) Arduino Uno *(Corect)*
- D) Raspberry Pi Pico

> **Explicație**: Arduino Uno (ATmega328P) este cea mai celebră platformă, creată în 2005 la Ivrea. Are o comunitate uriașă și mii de biblioteci, dar procesorul său nu include niciun modul de comunicație wireless integrat.

---

### Întrebarea 3
**Câte LED-uri are matricea de afișare de pe fața BBC Micro:Bit?**
- A) 16 LED-uri (4x4)
- B) 25 LED-uri (5x5) *(Corect)*
- C) 36 LED-uri (6x6)
- D) 64 LED-uri (8x8)

> **Explicație**: Micro:Bit-ul are o matrice de 5 pe 5 = 25 LED-uri roșii pe fața frontală. Aceste LED-uri pot afișa numere, litere, icoane și animații, și funcționează și ca senzor de lumină.

---

### Întrebarea 4
**Ce senzor NU este integrat direct pe placa BBC Micro:Bit v2?**
- A) Accelerometru (senzor de mișcare)
- B) Senzor ultrasonic de distanță *(Corect)*
- C) Microfon
- D) Senzor de temperatură

> **Explicație**: Micro:Bit v2 integrează accelerometru, busolă, microfon, difuzor, senzor de temperatură și senzor de lumină. Senzorul ultrasonic de distanță (HC-SR04) este un modul extern care trebuie conectat separat prin pini GPIO.

---

### Întrebarea 5
**În MakeCode, care este diferența dintre blocul „on start" și blocul „forever"?**
- A) „on start" rulează codul la infinit, „forever" rulează o singură dată
- B) Nu există nicio diferență, sunt identice
- C) „on start" rulează codul o singură dată la pornire, „forever" îl repetă la infinit *(Corect)*
- D) „on start" funcționează doar pe simulator, „forever" doar pe placa fizică

> **Explicație**: Blocul „on start" execută codul o singură dată, imediat după pornirea Micro:Bit-ului – ideal pentru inițializări. Blocul „forever" repetă codul în buclă infinită, non-stop, ideal pentru animații sau citiri continue de senzori.

---

### Întrebarea 6
**Din ce categorie de blocuri MakeCode face parte blocul „on button A pressed"?**
- A) Basic (albastru închis)
- B) Input (roz/magenta) *(Corect)*
- C) Logic (turcoaz)
- D) Loops (verde)

> **Explicație**: Blocurile de tip eveniment pentru butoane, agitare și alți senzori se găsesc în categoria Input (culoare roz/magenta) din Toolbox-ul MakeCode.

---

### Întrebarea 7
**În programul „Zarurile Digitale", ce bloc din MakeCode generează un număr aleatoriu de la 1 la 6?**
- A) „show number" din Basic
- B) „pick random 1 to 6" din Math *(Corect)*
- C) „set variable to 6" din Variables
- D) „repeat 6 times" din Loops

> **Explicație**: Blocul „pick random" se găsește în categoria Math și generează un număr aleatoriu într-un interval specificat. În exercițiul zarurilor, intervalul este de la 1 la 6, simulând un zar clasic.

---

### Întrebarea 8
**De ce Micro:Bit-ul nu poate roti un motor DC direct de pe pinii săi GPIO?**
- A) Pinii GPIO nu există pe Micro:Bit
- B) Curentul maxim per pin (~5 mA) este prea mic pentru un motor *(Corect)*
- C) Motoarele DC funcționează doar pe curent alternativ de 220V
- D) Micro:Bit-ul nu suportă blocuri pentru motoare

> **Explicație**: Fiecare pin GPIO al Micro:Bit-ului poate furniza maxim aproximativ 5 mA, mult prea puțin pentru un motor DC care consumă sute de miliamperi. De aceea avem nevoie de placa de expansiune robot:bit cu un driver de motoare integrat.

---

### Întrebarea 9
**Ce rol are placa de expansiune robot:bit în construcția unui robot cu Micro:Bit?**
- A) Înlocuiește complet Micro:Bit-ul cu un procesor mai puternic
- B) Amplifică semnalele Micro:Bit pentru motoare și oferă alimentare externă *(Corect)*
- C) Adaugă un ecran tactil color plăcii Micro:Bit
- D) Permite conectarea Micro:Bit la rețeaua 5G

> **Explicație**: Placa robot:bit conține un driver de motoare H-Bridge, conectori pentru servomotoare cu alimentare de 5V și acceptă o baterie externă. Micro:Bit-ul trimite semnalele de control, iar robot:bit le amplifică în curent suficient pentru motoare.

---

### Întrebarea 10
**Care coordonate LED corespund colțului stânga-sus al matricei 5x5 în MakeCode?**
- A) x=4, y=4
- B) x=1, y=1
- C) x=0, y=0 *(Corect)*
- D) x=5, y=5

> **Explicație**: Matricea LED folosește un sistem de coordonate unde coloanele (X) și rândurile (Y) pornesc de la 0. Colțul stânga-sus este la coordonatele (0, 0), iar colțul dreapta-jos este la (4, 4).

---

## ✅ Grila Rapidă de Răspunsuri Corecte

| Nr. | Răspuns Corect |
| :---: | :--- |
| 1 | B – Computer miniaturizat pe un singur cip |
| 2 | C – Arduino Uno |
| 3 | B – 25 LED-uri (5x5) |
| 4 | B – Senzor ultrasonic de distanță |
| 5 | C – „on start" o dată, „forever" la infinit |
| 6 | B – Input |
| 7 | B – „pick random 1 to 6" din Math |
| 8 | B – Curentul GPIO prea mic (~5 mA) |
| 9 | B – Amplifică semnale și alimentare externă |
| 10 | C – x=0, y=0 |
