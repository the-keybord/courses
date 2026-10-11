# Prezentare Interactivă (Lectură la Tablă): Lecția 06 [RBF2.6] – Roboți Line Follower & Maze Solver

---

## 🎨 Canva AI Master Prompt

```text
Creează o prezentare educațională interactivă de 5 slide-uri pentru lectură la tablă, format 16:9, pentru elevi de 11–15 ani (cursul „Robot Factory: Evolution”).
Format conținut: Fiecare slide conține exact 3–4 propoziții numerotate clar (1, 2, 3, 4), redactate cu text mare, aerisit și contrastant pentru a fi citite cu voce tare de către elevi, urmate de o secțiune de ghidaj pentru profesor.
Design vizual: Tech dark mode profesional, fundal gri petrol / slate grey (#1E293B), accente cyan (#06B6D4) și galben solar (#F59E0B), carduri moderne și curate.
Tematică restrânsă (5 slide-uri): 
1. Ce sunt roboții Line Follower și unde sunt folosiți.
2. Ce senzor folosesc pentru linie (Infraroșu reflexiv: LED IR + fototranzistor, alb vs negru).
3. Cum controlează direcția pe linie (algoritmul Bang-Bang cu 2 senzori vs matrice cu mai mulți senzori).
4. Ce sunt roboții Maze Solver și ce senzori folosesc (labirint cu pereți vs labirint pe linii, senzori ultrasonici, IR și culoare).
5. Cum găsesc ieșirea din labirint (Regula Mâinii Stângi și memorarea drumului cel mai scurt).
```

---

## Slide 1: Roboții Line Follower – Maeștrii Traseelor Fixe

1. Roboții Line Follower sunt vehicule autonome capabile să detecteze și să urmărească automat o linie desenată pe sol.
2. În fabricile moderne și marile depozite precum Amazon, sute de astfel de roboți transportă mărfuri grele ghidându-se după linii magnetice sau optice.
3. În competițiile de robotică, traseul este format de regulă dintr-o bandă neagră mată aplicată pe un fundal alb lucios.
4. Robotul nu are nevoie de o cameră video complicată, ci doar de câțiva senzori optici orientați direct spre podea.

> **Ghidaj Profesor**: Solicitați unui elev să citească cele 4 propoziții. Întrebați clasa: *„Unde ați mai văzut roboți care merg singuri pe un traseu fix?”* (menționați trenurile autonome, roboții industriali AGV din fabricile auto).

---

## Slide 2: Senzorul Infraroșu (IR) – Ochiul pentru Linia Neagră

1. Senzorul de linie conține o pereche formată dintr-un LED emițător de lumină infraroșie invizibilă și un fototranzistor receptor.
2. Suprafața albă a pistei reflectă aproape toată lumina infraroșie înapoi în receptor, permițând trecerea curentului electric.
3. Banda neagră absoarbe lumina emisă, astfel încât receptorul rămâne în întuneric și trimite un semnal logic către microcontroler.
4. Pentru ca citirea să fie precisă, senzorul este montat foarte aproape de sol, la o distanță optimă de 3 până la 8 milimetri.

> **Ghidaj Profesor**: Invitați următorul elev să citească. Subliniați că lumina infraroșie este invizibilă pentru ochiul uman, dar este „văzută” perfect de fototranzistor.

---

## Slide 3: Cum Urmăresc Linia – De la Bang-Bang la Control Lin

1. În cel mai simplu mod numit Bang-Bang, robotul folosește doi senzori montați în stânga și în dreapta liniei negre.
2. Când ambii senzori văd alb, robotul merge înainte; dacă senzorul stâng atinge linia neagră, motorul stâng este oprit pentru a vira spre stânga.
3. Roboții rapizi de competiție folosesc o matrice de cinci sau opt senzori aliniați într-o bară frontală.
4. Microcontrollerul calculează deviația exactă față de mijlocul liniei și reglează continuu viteza motoarelor prin semnale PWM pentru viraje fluide.

> **Ghidaj Profesor**: Solicitați citirea slide-ului. Arătați pe scurt diferența: un robot cu 2 senzori oscilează stânga-dreapta, pe când o matrice de senzori îi permite să meargă lin la viteză mare.

---

## Slide 4: Roboții Maze Solver – Cum Înfruntă Labirinturile?

1. Roboții de labirint au misiunea de a găsi singuri drumul de la punctul de start până la ieșire sau până în centrul unei rețele complexe.
2. În labirinturile clasice 3D cu pereți, roboții folosesc senzori de distanță ultrasonici sau lasere LiDAR montate în față și în lateral.
3. În labirinturile plate desenate pe podea, roboții folosesc senzori infraroșu pentru a detecta joncțiunile la nouăzeci de grade și senzori de culoare pentru marcaje speciale.
4. Robotul explorează intersecțiile, ia decizii autonome în fiecare nod și își amintește traseul parcurs.

> **Ghidaj Profesor**: Invitați următorul elev să citească. Explicați diferența dintre a măsura pereți fizici (cu ultrasunete/LiDAR) și a citi o grilă de linii pe sol (cu senzori IR).

---

## Slide 5: Cum Ies din Labirint – Regula Mâinii Stângi și Drumul Scurt

1. Pentru a nu se rătăci într-un labirint necunoscut, robotul aplică o regulă simplă: la fiecare intersecție alege cu prioritate virajul la stânga.
2. Dacă nu poate vira la stânga, merge înainte; dacă drumul înainte este blocat, virează la dreapta, iar dacă ajunge într-o fundătură se întoarce la o sută optzeci de grade.
3. Pe măsură ce explorează, microcontrolerul memorează toate virajele și deciziile luate pe parcursul labirintului.
4. La a doua cursă, robotul elimină din memorie toate fundăturile explorate și parcurge labirintul direct pe cel mai scurt drum posibil.

> **Ghidaj Profesor**: Solicitați citirea ultimului slide. Concluzionați: *„Așa cum noi ținem mâna pe peretele stâng pentru a ieși dintr-un labirint, robotul urmează aceeași logică matematică pentru a găsi ieșirea!”*
