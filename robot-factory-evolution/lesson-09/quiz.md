# Quiz Kahoot: Lecția 09 [RBF2.9] – Alianțele Cromatice, Senzorii (IR & Ultrasonic) și Pianul Wireless în `RBFesp`

- **Cod Lecție**: RBF2.9
- **Număr Întrebări**: 10
- **Format**: Mini quiz interactiv de verificare teoretică (4 variante scurte de 1–3 cuvinte per întrebare)
- **Platformă Recomandată**: Kahoot! / Quizizz

---

### Întrebarea 1
Ce regulă strictă definește numele unei alianțe roboRangers?
- A) Strict o culoare *(Corect)*
- B) Nume de planetă
- C) Marcă de mașină
- D) Număr de serie
> **Explicație**: Fiecare alianță poartă obligatoriu numele unei culori sau nuanțe oficiale (Hue Alliance) din catalogul celor 30 de culori cu cod HEX.

---

### Întrebarea 2
Cum testăm corect 3 senzori noi pe robot?
- A) Toți deodată
- B) Câte unul singur *(Corect)*
- C) Fără alimentare
- D) Cu ochii închiși
> **Explicație**: Regula de aur în inginerie (Unit Testing) este să conectăm și să programăm câte o singură componentă pe rând.

---

### Întrebarea 3
Ce face o suprafață neagră cu lumina infraroșie emisă de senzorul IR?
- A) O absoarbe complet *(Corect)*
- B) O reflectă dublu
- C) O colorează albastru
- D) O transformă-n sunet
> **Explicație**: Banda neagră absoarbe lumina infraroșie, în timp ce suprafața albă o reflectă înapoi în receptorul senzorului IR.

---

### Întrebarea 4
Cu ce funcție C++ citim starea pinului digital `DO` al senzorului IR?
- A) `digitalRead()` *(Corect)*
- B) `tone()`
- C) `noTone()`
- D) `delay()`
> **Explicație**: Pinul `DO` (Digital Output) al senzorului de linie oferă un semnal digital (`0` sau `1`), citit cu `digitalRead()`.

---

### Întrebarea 5
Ce rol are pinul `TRIG` la senzorul ultrasonic `HC-SR04`?
- A) Lansează ultrasunetul *(Corect)*
- B) Ascultă ecoul
- C) Măsoară lumina
- D) Cântă o notă
> **Explicație**: Pinul `TRIG` (Trigger) primește un impuls scurt de 10 microsecunde pentru a lansa unda ultrasonică în aer.

---

### Întrebarea 6
De ce împărțim la `2` formula distanței la senzorul ultrasonic?
- A) Drum dus-întors *(Corect)*
- B) Are două baterii
- C) Merge la 2V
- D) Are două cabluri
> **Explicație**: Sunetul parcurge distanța de la robot la obstacol și apoi înapoi la robot, deci durata măsurată reprezintă dublul distanței.

---

### Întrebarea 7
În ce unitate de măsură se exprimă frecvența unei note muzicale la buzzer?
- A) În Hertzi (Hz) *(Corect)*
- B) În Centimetri
- C) În Grame
- D) În Litri
> **Explicație**: Frecvența sunetului se măsoară în Hertzi (Hz), adică numărul de vibrații pe secundă (de exemplu, DO = 262 Hz, LA = 440 Hz).

---

### Întrebarea 8
Ce funcție C++ pornește o notă muzicală de o anumită frecvență pe buzzer?
- A) `tone()` *(Corect)*
- B) `pulseIn()`
- C) `digitalRead()`
- D) `stopMotors()`
> **Explicație**: Funcția `tone(PIN_BUZZER, frecventa)` generează semnalul de frecvența dorită (în Hz) pentru a cânta nota muzicală.

---

### Întrebarea 9
Ce funcție din `RBFesp` verifică dacă o clapă a pianului este ținută apăsată?
- A) `event.isPressed()` *(Corect)*
- B) `monitor.clear()`
- C) `pinMode()`
- D) `delayMicroseconds()`
> **Explicație**: Metoda `event.isPressed('W')` returnează `true` în momentul în care jucătorul apasă tasta în browser.

---

### Întrebarea 10
Ce trebuie să apelăm pe ramura `else` când eliberăm clapa pianului?
- A) Funcția `noTone()` *(Corect)*
- B) Funcția `tone()`
- C) Funcția `pulseIn()`
- D) Funcția `p4()`
> **Explicație**: Apelul `noTone(PIN_BUZZER)` pe ramura `else` oprește sunetul imediat ce ridicăm degetul de pe tastă, exact ca la un pian real.
