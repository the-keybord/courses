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
Care platformă are Wi-Fi și Bluetooth Low Energy integrate direct pe cip?

- A) Arduino Uno
- B) BBC Micro:Bit
- C) ESP32 *(Corect)*
- D) Raspberry Pico

> **Explicație**: ESP32 integrează atât modulul Wi-Fi, cât și Bluetooth Classic + BLE 4.2 direct pe același cip.

---

### Întrebarea 2
Câte nuclee de procesare are cipul ESP32-WROOM de pe robot?

- A) Un nucleu
- B) Două nuclee *(Corect)*
- C) Patru nuclee
- D) Opt nuclee

> **Explicație**: ESP32 folosește un procesor dual-core la 240 MHz: un nucleu poate comanda motoarele, iar celălalt rulează conexiunea BLE.

---

### Întrebarea 3
La ce nivel de tensiune logică funcționează pinii GPIO de la ESP32?

- A) 1.8V
- B) 3.3V *(Corect)*
- C) 5.0V
- D) 7.4V

> **Explicație**: Pinii GPIO operează la nivelul logic de 3.3V. Aplicarea unei tensiuni de 5V pe un pin GPIO poate arde cipul.

---

### Întrebarea 4
Care este curentul maxim aproximativ pe care îl poate da un pin GPIO?

- A) 5 Amperi
- B) 500 mA
- C) ~40 mA *(Corect)*
- D) 10 Amperi

> **Explicație**: Un pin GPIO poate furniza maxim circa 40 mA (recomandat 12 mA), suficient pentru un LED, dar insuficient pentru motoare.

---

### Întrebarea 5
De ce nu putem conecta un motor DC direct la un pin GPIO de la ESP32?

- A) Necesită curent alternativ
- B) Supracurent / risc ardere *(Corect)*
- C) Motorul e greu
- D) Pinii sunt intrări

> **Explicație**: Un motor DC cere între 200 mA și 1000 mA. Un pin GPIO arde instantaneu dacă încercăm să alimentăm motorul direct din el.

---

### Întrebarea 6
Ce rol principal are puntea H (H-Bridge) din driverul TB6612FNG?

- A) Schimbă frecvența Wi-Fi
- B) Sens și putere *(Corect)*
- C) Măsoară temperatura carcasei
- D) Încarcă bateria Li-Ion

> **Explicație**: Puntea H comută curentul de forță din baterie și permite inversarea sensului de rotație al motoarelor stânga/dreapta.

---

### Întrebarea 7
De ce servomotoarele mici (SG90) NU au nevoie de driver extern separat?

- A) Fără motor electric
- B) Driver integrat intern *(Corect)*
- C) Funcționează pe lumină
- D) Baterie internă ceas

> **Explicație**: Servomotoarele au deja integrată în carcasă propria plăcuță electronică de control care comandă motorul intern pe baza semnalului PWM.

---

### Întrebarea 8
Care este tensiunea nominală a bateriei Li-Ion 2S de pe robotul RF 2.0?

- A) 3.7V
- B) 5.0V
- C) 7.4V *(Corect)*
- D) 12.0V

> **Explicație**: Pachetul 2S are 2 celule Li-Ion conectate în serie: 3.7V + 3.7V = 7.4V nominal (8.4V încărcat complet).

---

### Întrebarea 9
Ce face comutatorul de alimentare (power switch) montat pe robot?

- A) Reglează viteza motoarelor
- B) Întrerupe polul pozitiv *(Corect)*
- C) Amplifică semnalul Bluetooth
- D) Schimbă culoarea LED-urilor

> **Explicație**: Comutatorul taie fizic linia pozitivă a bateriei, oprind complet alimentarea robotului pentru siguranță.

---

### Întrebarea 10
Ce tensiune trebuie să măsurăm pe pinul VM al driverului cu comutatorul pe ON?

- A) 0V (lipsă)
- B) 3.3V
- C) 7.0V – 8.4V *(Corect)*
- D) 220V

> **Explicație**: Pinul VM este conectat direct la bateria de 7.4V prin comutator, primind tensiunea completă a acumulatorilor.

---

## ✅ Grila Rapidă de Răspunsuri Corecte

| Nr. | Răspuns Corect |
| :---: | :--- |
| 1 | C – ESP32 |
| 2 | B – Două nuclee |
| 3 | B – 3.3V |
| 4 | C – ~40 mA |
| 5 | B – Supracurent / risc ardere |
| 6 | B – Sens și putere |
| 7 | B – Driver integrat intern |
| 8 | C – 7.4V |
| 9 | B – Întrerupe polul pozitiv |
| 10 | C – 7.0V – 8.4V |
