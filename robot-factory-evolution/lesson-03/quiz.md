# Quiz Kahoot: Lecția 03 [RBF2.3] – Platforme de Microcontrolere, Anatomia ESP32 și Reconstrucția Circuitului RF 2.0

---

## 📌 Informații Generale Quiz
- **Cod Lecție**: RBF2.3
- **Număr Întrebări**: 10
- **Durată Alocată în Lecție**: 15 minute (inclusiv discuții și consolidare pedagogică după fiecare întrebare)
- **Timp Recomandat per Întrebare**: 20 – 30 secunde
- **Platformă Recomandată**: Kahoot!

---

## 🏆 Banca de Întrebări & Răspunsuri

### Întrebarea 1
**Care dintre următoarele platforme de microcontrolere are Wi-Fi ȘI Bluetooth Low Energy integrate direct pe cip, fără module externe?**
- A) Arduino Uno (ATmega328P)
- B) BBC Micro:Bit v2
- C) ESP32 (Espressif Systems) *(Corect)*
- D) Raspberry Pi Pico (RP2040, fără W)

> **Explicație**: ESP32 integrează atât modulul Wi-Fi 802.11 b/g/n, cât și Bluetooth Classic + BLE 4.2 pe același cip. Arduino Uno nu are radio, Micro:Bit v2 are doar un protocol radio proprietar de 2.4 GHz și BLE, iar Pico standard (fără W) nu are conectivitate wireless.

---

### Întrebarea 2
**Câte nuclee de procesare are cipul ESP32-WROOM utilizat în robotul nostru RF 2.0?**
- A) Un singur nucleu (single-core)
- B) Două nuclee (dual-core) *(Corect)*
- C) Patru nuclee (quad-core)
- D) Opt nuclee (octa-core)

> **Explicație**: ESP32 folosește un procesor Xtensa LX6 cu două nuclee (dual-core) tactate la 240 MHz. Un nucleu poate gestiona controlul motoarelor, iar celălalt poate rula comunicația Bluetooth simultan.

---

### Întrebarea 3
**La ce tensiune logică funcționează pinii GPIO ai ESP32?**
- A) 1.8V
- B) 3.3V *(Corect)*
- C) 5.0V
- D) 7.4V

> **Explicație**: Nucleul ESP32 și pinii săi GPIO operează la standardul logic de 3.3V. Aplicarea unei tensiuni superioare (peste 3.6V) pe un pin GPIO riscă să distrugă ireversibil tranzistoarele interne ale cipului.

---

### Întrebarea 4
**Care este curentul maxim aproximativ pe care un singur pin GPIO al ESP32 îl poate furniza (source)?**
- A) 5 Amperi
- B) 500 mA
- C) Aproximativ 40 mA *(Corect)*
- D) 10 Amperi

> **Explicație**: Un pin GPIO al ESP32 poate furniza maxim aproximativ 40 mA (miliamperi), cu o valoare recomandată de 12 mA pentru operare de durată. Această cantitate este suficientă pentru un LED, dar complet insuficientă pentru un motor electric.

---

### Întrebarea 5
**De ce un motor DC TT nu poate fi conectat direct la un pin GPIO al ESP32?**
- A) Motorul funcționează doar pe curent alternativ
- B) Curentul cerut de motor depășește cu mult limita GPIO, iar pinul s-ar arde *(Corect)*
- C) ESP32 nu suportă motoare mai mari de 1 gram
- D) Pinii GPIO sunt doar de intrare, nu de ieșire

> **Explicație**: Un motor DC TT consumă între 200 mA și 1000 mA, de 5 până la 80 de ori mai mult decât cele ~40 mA pe care le poate furniza un pin GPIO. Conectarea directă ar distruge pinul sau ar lăsa motorul nemișcat.

---

### Întrebarea 6
**Ce face circuitul H-Bridge din interiorul driverului de motoare TB6612FNG?**
- A) Convertește curentul alternativ în curent continuu
- B) Amplifică semnalul slab de pe GPIO și permite inversarea sensului curentului prin motor *(Corect)*
- C) Transformă semnalul Bluetooth în impulsuri de lumină
- D) Măsoară temperatura internă a motorului

> **Explicație**: Puntea H (H-Bridge) este un aranjament de 4 tranzistoare MOSFET care comută curentul de putere din baterie prin motor în ambele sensuri. ESP32 trimite doar semnale de control pe pini (AIN1, AIN2, PWM), iar driverul furnizează curentul de forță necesar motoarelor.

---

### Întrebarea 7
**De ce servomotoarele micro (SG90 / MG90S) NU au nevoie de un driver extern de tip TB6612FNG?**
- A) Servomotoarele nu conțin motor electric
- B) Au un circuit de control integrat în interiorul carcasei *(Corect)*
- C) Funcționează exclusiv pe energie solară
- D) Sunt alimentate doar cu 0.5V din baterii ceas

> **Explicație**: Servomotoarele micro conțin în interiorul carcasei un motor DC miniaturizat, un reductor mecanic și un circuit electronic de control care primește semnalul PWM, compară poziția curentă a axului și comandă intern motorul. ESP32 trimite doar un semnal PWM pe firul de semnal.

---

### Întrebarea 8
**Care este tensiunea nominală a pachetului nostru de acumulatori Li-Ion 2S folosit în robotul RF 2.0?**
- A) 3.7V (o singură celulă)
- B) 5.0V (nivel USB)
- C) 7.4V (două celule în serie) *(Corect)*
- D) 12.0V (pachet auto standard)

> **Explicație**: Configurația 2S conectează două celule Li-Ion de 3.7V în serie, rezultând o tensiune nominală de 7.4V (3.7V + 3.7V) și o tensiune maximă la încărcare completă de 8.4V.

---

### Întrebarea 9
**Ce rol are comutatorul de alimentare (power switch) pe care l-am lipit în circuitul robotului?**
- A) Reglează viteza motoarelor printr-un potențiometru
- B) Deconectează fizic polul pozitiv al bateriei de restul circuitului *(Corect)*
- C) Amplifică semnalul Bluetooth primit de ESP32
- D) Schimbă frecvența de comunicație Wi-Fi

> **Explicație**: Comutatorul de alimentare întrerupe fizic firul pozitiv al bateriei. În poziția OFF, niciun curent nu circulă prin circuit, prevenind descărcarea accidentală a acumulatorilor și eliminând riscul de scurtcircuit în repaus.

---

### Întrebarea 10
**Ce tensiune trebuie să citim cu multimetrul pe pinul VM al driverului de motoare TB6612FNG când comutatorul robotului este pe ON?**
- A) 0V (nicio tensiune)
- B) 3.3V (tensiune logică ESP32)
- C) Tensiunea bateriei: între 7.0V și 8.4V *(Corect)*
- D) Exact 220V (tensiune de rețea)

> **Explicație**: Pinul VM (motor voltage) al driverului TB6612FNG este conectat direct la bateria 2S Li-Ion. Tensiunea citită trebuie să reflecte starea de încărcare a acumulatorilor, variind între 7.0V (descărcată) și 8.4V (încărcată complet).

---

## ✅ Grila Rapidă de Răspunsuri Corecte

| Nr. | Răspuns Corect |
| :---: | :--- |
| 1 | C – ESP32 |
| 2 | B – Dual-core |
| 3 | B – 3.3V |
| 4 | C – ~40 mA |
| 5 | B – Curentul depășește limita GPIO |
| 6 | B – Amplifică semnal și inversează sens curent |
| 7 | B – Circuit de control integrat intern |
| 8 | C – 7.4V |
| 9 | B – Deconectează fizic polul pozitiv |
| 10 | C – Tensiunea bateriei (7.0V–8.4V) |
