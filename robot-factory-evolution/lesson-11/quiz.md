# Quiz Kahoot: Lecția 11 [RBF2.11] – Controlul în Buclă Închisă: Senzori Optici IR și Navigația Autonomă

- **Cod Lecție**: RBF2.11
- **Număr Întrebări**: 10 întrebări
- **Format**: 4 opțiuni de răspuns per întrebare (A, B, C, D)
- **Lungime Opțiuni**: Ultra-scurte (strict 1–3 cuvinte per opțiune)
- **Timp Recomandat**: 20 secunde per întrebare
- **Platformă Recomandată**: Kahoot (import direct prin `quiz.xlsx`)

---

### Întrebarea 1: Ce caracterizează un sistem de control în buclă închisă (Closed-Loop)?
- A) Comenzi fără verificare
- B) Feedback de la senzori *(Corect)*
- C) Doar control manual
- D) Funcționare fără baterie
> **Explicație**: Bucla închisă citește continuu senzorii pentru a compara starea reală cu ținta dorită și corectează deviațiile în timp real.

---

### Întrebarea 2: La ce lungime de undă funcționează de regulă LED-ul emițător al senzorului TCRT5000?
- A) 400 nanometri
- B) 550 nanometri
- C) 940 nanometri *(Corect)*
- D) 1500 nanometri
> **Explicație**: Lungimea de undă de 940 nm se află în spectrul infraroșu apropiat, fiind complet invizibilă pentru ochiul uman.

---

### Întrebarea 3: De ce banda neagră provoacă o scădere drastică a luminii reflectate în senzor?
- A) Absorbție prin carbon *(Corect)*
- B) Răcire instantanee suprafață
- C) Emisie unde ultrasunete
- D) Polarizare magnetică inversă
> **Explicație**: Pigmentul de carbon din banda izolatoare neagră absoarbe aproape integral radiația infraroșie în loc să o reflecte.

---

### Întrebarea 4: Ce rol îndeplinește pragul critic de decizie (Threshold) în programul C++?
- A) Mărește frecvența Wi-Fi
- B) Diferențiază albul de negru *(Corect)*
- C) Oprește alimentarea bateriei
- D) Inversează sensul acelor
> **Explicație**: Threshold reprezintă valoarea numerică de referință; dacă citirea este peste prag, robotul detectează linia neagră.

---

### Întrebarea 5: Care este rezoluția nativă a convertorului analog-digital (ADC) pe ESP32?
- A) 8 biți
- B) 10 biți
- C) 12 biți *(Corect)*
- D) 16 biți
> **Explicație**: Un ADC pe 12 biți împarte tensiunea de intrare de 0–3.3V în 4096 de trepte distincte de măsurare (valori de la 0 la 4095).

---

### Întrebarea 6: De ce este obligatorie calibrarea senzorilor optici la începerea fiecărei curse?
- A) Variații iluminare ambientală *(Corect)*
- B) Pierderea memoriei flash
- C) Descărcarea bruscă Li-Ion
- D) Schimbarea pinilor GPIO
> **Explicație**: Lumina soarelui, neoanele din sală și culoarea podelei creează niveluri diferite de zgomot optic care necesită reajustarea pragului.

---

### Întrebarea 7: Ce dezavantaj major prezintă algoritmul simplist de tip Bang-Bang?
- A) Viteză zero absolută
- B) Oscilații violente traiectorie *(Corect)*
- C) Arderea imediată a motorului
- D) Lipsa driverului TB6612
> **Explicație**: Corecția brutală (oprire completă a unui motor și accelerare maximă a celuilalt) provoacă o serpuire sacadată pe traseu.

---

### Întrebarea 8: Cum rezolvă controlul proporțional (P-Controller) problema oscilațiilor pe linie?
- A) Ajustare graduală PWM *(Corect)*
- B) Oprește ambii senzori
- C) Declanșează buzzerul continuu
- D) Trece pe telecomandă
> **Explicație**: Controlul proporțional calculează diferența fină de viteză dintre roți în funcție de mărimea erorii de poziționare.

---

### Întrebarea 9: Ce acțiune întreprinde un robot performant la detectarea stării de linie pierdută (Line Lost)?
- A) Rotație spre ultima direcție *(Corect)*
- B) Accelerare drept înainte
- C) Resetare totală microcontroler
- D) Deconectare de la BLE
> **Explicație**: Robotul utilizează o variabilă de memorie pentru a roti pe loc în direcția în care a văzut ultima dată linia neagră.

---

### Întrebarea 10: Ce semnalează citirea concomitentă a valorii de negru pe ambii senzori frontali?
- A) Bandă de sosire *(Corect)*
- B) Baterie complet descărcată
- C) Scurtcircuit pe masă
- D) Derapaj necontrolat spate
> **Explicație**: O linie neagră transversală perpendiculară pe traseu este recunoscută de ambii senzori simultan ca punct de finiș sau intersecție.
