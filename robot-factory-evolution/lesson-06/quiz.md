# Quiz Kahoot: Lecția 06 [RBF2.6] – Roboți Line Follower, Maze Solver & Senzori

---

## Informații Quiz
- **Cod Lecție**: RBF2.6
- **Număr Întrebări**: 10 întrebări
- **Format**: 4 opțiuni per întrebare (strict 1–3 cuvinte per opțiune)
- **Platformă Recomandată**: Kahoot!
- **Tematică**: Roboți Line Follower, senzori Infraroșu (IR), algoritmi de control, roboți Maze Solver și Regula Mâinii Stângi

---

### Întrebarea 1
Ce urmărește un robot Line Follower pe sol?
- [ ] A) Un fascicul laser
- [x] B) O linie desenată *(Corect)*
- [ ] C) Un perete metalic
- [ ] D) O sursă sonoră
> **Explicație**: Roboții Line Follower sunt programați să detecteze și să urmeze în mod autonom o linie marcată pe suprafața podelei.

---

### Întrebarea 2
Ce fel de lumină emite senzorul optic de linie TCRT5000?
- [ ] A) Lumină albastră
- [ ] B) Raze ultraviolete
- [x] C) Lumină infraroșie invizibilă *(Corect)*
- [ ] D) Lumină verde
> **Explicație**: Senzorul de linie emite lumină în spectrul infraroșu (850–950 nm), invizibilă pentru om și imună la becurile din sală.

---

### Întrebarea 3
Ce face banda neagră când este lovită de lumina IR?
- [ ] A) O amplifică
- [ ] B) O reflectă total
- [x] C) O absoarbe *(Corect)*
- [ ] D) O polarizează
> **Explicație**: Suprafața neagră absoarbe lumina emisă de LED-ul IR, lăsând fototranzistorul receptor în întuneric.

---

### Întrebarea 4
Care este înălțimea recomandată pentru montarea senzorului IR față de sol?
- [ ] A) 50 – 80 mm
- [x] B) 3 – 8 mm *(Corect)*
- [ ] C) Peste 15 cm
- [ ] D) Sub 0.5 mm
> **Explicație**: La 3–8 mm fasciculul este perfect focalizat pe sol fără riscul de a agăța mecanic denivelările pistei.

---

### Întrebarea 5
În algoritmul Bang-Bang cu 2 senzori, ce face robotul dacă senzorul stâng atinge linia neagră?
- [ ] A) Accelerează drept
- [ ] B) Merge înapoi
- [x] C) Virează la stânga *(Corect)*
- [ ] D) Se oprește
> **Explicație**: Pentru a reveni pe traseu, motorul stâng este oprit sau încetinit, făcând robotul să vireze spre stânga.

---

### Întrebarea 6
Ce avantaj oferă o matrice de 5–8 senzori față de doar 2 senzori?
- [ ] A) Conexiune wireless
- [ ] B) Baterie mai mică
- [x] C) Viraje mult mai fluide *(Corect)*
- [ ] D) Greutate redusă
> **Explicație**: O matrice de senzori permite calcularea deviației exacte și ajustarea fină a vitezei prin PWM, eliminând oscilațiile sacadate.

---

### Întrebarea 7
Ce senzori folosesc roboții în labirinturi cu pereți fizici?
- [ ] A) Doar butoane mecanice
- [ ] B) Senzori de temperatură
- [x] C) Senzori de distanță *(Corect)*
- [ ] D) Microfoane audio
> **Explicație**: În labirinturile cu pereți 3D, roboții folosesc senzori ultrasonici sau scanere LiDAR pentru a măsura distanța până la obstacole.

---

### Întrebarea 8
Ce senzori folosește robotul într-un labirint desenat din linii pe podea?
- [ ] A) Barometru digital
- [x] B) Senzori optici IR *(Corect)*
- [ ] C) Senzori de vibrație
- [ ] D) Busolă termică
> **Explicație**: În labirinturile pe linii de pe sol, robotul folosește senzori infraroșu și de culoare pentru a citi joncțiunile și marcajele.

---

### Întrebarea 9
Care este prima opțiune de viraj în „Regula Mâinii Stângi”?
- [ ] A) Mers înainte
- [ ] B) Viraj dreapta
- [x] C) Viraj stânga *(Corect)*
- [ ] D) Întoarcere 180°
> **Explicație**: În algoritmul priorității la stânga (Left-Hand Rule), robotul încearcă întotdeauna mai întâi să vireze la stânga la fiecare intersecție.

---

### Întrebarea 10
Cum parcurge robotul labirintul la a doua încercare?
- [ ] A) Explorează la întâmplare
- [x] B) Elimină fundăturile memorate *(Corect)*
- [ ] C) Își schimbă senzorii
- [ ] D) Merge cu spatele
> **Explicație**: Robotul folosește memoria din prima rundă pentru a tăia toate buclele și fundăturile greșite, rulând pe cel mai scurt drum.
