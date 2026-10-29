# Prezentare Interactivă (Citire cu Voce Tare): Lecția 09 [RBF2.9] – Alianțele Cromatice, Senzorii Robotului și Pianul Wireless

---

## 🎨 Canva AI Master Prompt (Copy-Paste Ready)

> **Prompt pentru generare automată în Canva AI:**
> Creează o prezentare interactivă de 5 slide-uri (format 16:9) pentru elevi de 11–15 ani la cursul **Robot Factory: Evolution — Lecția 09 [RBF2.9]**.
> - **Regulă strictă de text**: Fiecare slide trebuie să conțină **exact 4 propoziții numerotate (1, 2, 3, 4)**, scrise cu font mare și lizibil de la distanță, concepute pentru a fi citite cu voce tare, pe rând, de către elevi în clasă.
> - **Stil vizual**: Dark mode tehnic (`#0F172A`), accente neon cyan (`#00E5FF`) și verde smarald (`#50C878`), ilustrații clare cu senzori și unde sonore.

---

## Slide 1: Alianțele Cromatice `roboRangers` și Regula Testării pe Rând
1. **În proiectul `RBFesp`, fiecare elev își botează propriul robot în `RBFesp.ino` folosind culoarea oficială `#HEX` a alianței sale și numele robotului, de exemplu `"Scarlet_Viper"`.**
2. **Alianța noastră reunește trei roluri complementare: `Forge Ranger` pentru conexiuni hardware, `Cyber Ranger` pentru codul C++ și `Vanguard Ranger` pentru testare și strategie.**
3. **Atunci când conectăm senzori noi la placa ESP32, regula de aur a inginerilor este să îi cablăm și să îi programăm câte unul singur pe rând, fără să îi amestecăm din prima.**
4. **Astfel, dacă un fir este pus greșit sau o valoare este ciudată, știm imediat unde să căutăm problema și o rezolvăm în câteva secunde.**

> **Ghid pentru Profesor (După citirea celor 4 propoziții)**:
> - Întrebați clasa: *„Ce se întâmplă în lista de Bluetooth dacă toți cei 12 roboți din sală au același nume?”*

---

## Slide 2: Pasul 1 — Senzorul Optic de Linie cu Infraroșu (`IR Line Sensor`)
1. **Senzorul de linie `TCRT5000` are două mici piese optice în vârf: un LED transparent care emite lumină infraroșie invizibilă și un receptor negru care măsoară reflexia.**
2. **Când senzorul stă deasupra unei suprafețe albe, lumina infraroșie ricoșează ca într-o oglindă înapoi în receptor, iar când stă pe o linie neagră, lumina este absorbită complet.**
3. **Pentru a-l conecta la robotul nostru, legăm pinul `VCC` la alimentare, pinul `GND` la masă, iar pinul de semnal `DO` la un pin digital precum `GPIO 32`.**
4. **În fișierul `ButtonHandler.h`, citim starea senzorului cu `digitalRead(PIN_IR)` și trimitem răspunsul direct pe ecranul din browser folosind `monitor.println()`.**

> **Ghid pentru Profesor (După citirea celor 4 propoziții)**:
> - Arătați fizic senzorul IR și explicați de ce ochiul uman nu vede lumina infraroșie, dar receptorul senzorului o detectează instantaneu.

---

## Slide 3: Pasul 2 — Ecolocația cu Senzorul Ultrasonic (`HC-SR04`)
1. **Senzorul ultrasonic `HC-SR04` măsoară distanța exact ca un liliac în zbor, lansând prin aer un impuls scurt de ultrasunete cu frecvența de 40.000 de Hertzi.**
2. **El folosește patru pini: `VCC` la 5 Volți, `GND` la masă, pinul `TRIG` pentru a lansa sunetul timp de 10 microsecunde și pinul `ECHO` pentru a asculta ecoul întors.**
3. **Funcția `pulseIn(PIN_ECHO, HIGH)` cronometrează în microsecunde cât timp a călătorit unda sonoră de la robot până la obstacol și înapoi.**
4. **Pentru a afla distanța exactă în centimetri, înmulțim durata măsurată cu viteza sunetului (`0.034`) și împărțim rezultatul la `2`, deoarece sunetul a parcurs drumul dus-întors.**

> **Ghid pentru Profesor (După citirea celor 4 propoziții)**:
> - Verificați dacă toți elevii au reținut diferența dintre `TRIG` (`OUTPUT` — difuzorul) și `ECHO` (`INPUT` — microfonul).

---

## Slide 4: Pasul 3 — Buzzer-ul Pasiv și Frecvențele Notelor Muzicale (`Hz`)
1. **Un buzzer pasiv funcționează ca un mini-difuzor a cărui membrană vibrează exact în ritmul semnalului electric pe care i-l trimite placa ESP32.**
2. **Viteza acestei vibrații se măsoară în Hertzi (`Hz`), iar fiecare notă muzicală are propria ei frecvență matematică: nota `DO` are `262 Hz`, iar nota `LA` are `440 Hz`.**
3. **În limbajul C++, pornim o notă muzicală apelând funcția `tone(PIN_BUZZER, frecventa)` și oprim complet vibrația apelând funcția `noTone(PIN_BUZZER)`.**
4. **Schimbând frecvența asociată fiecărui buton din telecomanda Web Bluetooth, putem transforma robotul nostru într-un instrument muzical digital.**

> **Ghid pentru Profesor (După citirea celor 4 propoziții)**:
> - Întrebați elevii: *„Pe măsură ce numărul de Hertzi crește de la 262 Hz la 523 Hz, sunetul devine mai gros (grav) sau mai subțire (ascuțit)?”* (Mai subțire/ascuțit!).

---

## Slide 5: Pianul Wireless Bluetooth cu Funcția `event.isPressed()`
1. **La un pian adevărat, o notă muzicală trebuie să sune doar atât timp cât ținem degetul apăsat pe clapă și să se oprească imediat ce ridicăm degetul.**
2. **În arhitectura `RBFesp`, atunci când apăsăm o tastă în browser, funcția `event.isPressed()` devine `true` și pornește sunetul prin `tone(PIN_BUZZER, NOTA_DO)`.**
3. **În secunda în care eliberăm tasta de pe ecran sau de pe tastatură, programul intră automat pe ramura `else` și apelează `noTone(PIN_BUZZER)` pentru a face liniște.**
4. **Astăzi vom programa împreună cele 8 note ale gamei muzicale pe tastele din browser și vom încheia lecția cu primul concert live al Alianțelor Cromatice!**

> **Ghid pentru Profesor (După citirea celor 4 propoziții)**:
> - Feliciți cititorii și dați startul sondajului și al celor 3 experimente practice pas cu pas!
