# Prezentare: Lecția 06 [RBF2.6] – Roboți Line Follower, Maze Solver & Senzori

---

## 🎨 Canva AI Master Prompt

```text
Creează o prezentare educațională de 6 slide-uri (5 teoretice + 1 briefing practic), format 16:9, pentru adolescenți de 11–15 ani din cadrul cursului de robotică avansată „Robot Factory: Evolution”.
Stil vizual: Modern tech dark mode (fundal slate grey #1E293B, accente luminoase cyan #06B6D4 și galben solar #F59E0B, carduri aerisite cu contrast ridicat, fonturi tehnice moderne).
Ton: Direct, tehnic, clar și captivant.
Structură:
Slide 1: Roboții Line Follower și aplicațiile lor practice.
Slide 2: Senzorul Infraroșu (IR) – LED emițător + fototranzistor, reflexie alb vs absorbție negru.
Slide 3: Algoritmi de urmărire a liniei – Bang-Bang pe 2 senzori vs matrice de senzori cu control PWM.
Slide 4: Roboții Maze Solver – diferența între labirint cu pereți și labirint pe linii, senzori folosiți (ultrasunete/LiDAR vs IR/culoare).
Slide 5: Rezolvarea labirintului – Regula Mâinii Stângi și optimizarea drumului cel mai scurt.
Slide 6: Briefing practic – asamblarea completă a circuitului și primul test al tracțiunii pe bancul de lucru (fără roți).
```

---

## Slide 1: Roboții Line Follower – Maeștrii Traseelor Fixe

- **Titlu**: Roboții Line Follower: Ghidaj Autonom pe Linie
- **Puncte Cheie**:
  - Ce este un Line Follower: vehicul autonom care detectează și urmărește o linie pe sol.
  - Unde se folosesc: depozite logistice automate (AGV), fabrici industriale, competiții de viteză.
  - Pista standard: bandă neagră mată pe fond alb lucios.
  - Simplitate hardware: câțiva senzori optici orientați spre podea în loc de camere video grele.
- **[Placeholder Imagine: Render 3D al unui robot mobil autonom care urmărește o linie neagră curbată pe o podea albă dintr-un depozit modern]**
- **Speaker Notes**:
  > Roboții care urmăresc o linie sunt printre cei mai eficienți roboți industriali din lume. În loc să proceseze imagini video complicate, ei folosesc doar senzori optici de podea pentru a ști în fiecare milisecundă dacă sunt pe traseu.

---

## Slide 2: Senzorul Infraroșu (IR) – Ochiul pentru Sol

- **Titlu**: Senzorul IR Reflexiv: Cum Distinge Albul de Negru
- **Puncte Cheie**:
  - **Perechea Emițător-Receptor**: LED infraroșu invizibil (850–950 nm) + fototranzistor receptor.
  - **Reflexia pe Alb**: Suprafața albă reflectă lumina direct înapoi $\to$ semnal electric puternic.
  - **Absorbția pe Negru**: Linia neagră absoarbe lumina $\to$ receptorul rămâne în întuneric.
  - **Înălțimea Critică de Montaj**: $3 - 8\text{ mm}$ deasupra solului pentru focalizare optimă.
- **[Placeholder Imagine: Diagramă optică care ilustrează reflexia razelor IR pe o suprafață albă și absorbția razelor pe o suprafață neagră]**
- **Speaker Notes**:
  > Senzorul IR funcționează ca o lanternă invizibilă cu ochi electronic. Negrul absoarbe lumina, iar albul o reflectă ca o oglindă. La o distanță de 3–8 mm de sol, senzorul știe instantaneu dacă se află pe traseu sau pe lângă el.

---

## Slide 3: Cum Urmăresc Linia – Bang-Bang vs Matrice de Senzori

- **Titlu**: Algoritmi de Control: De la Bang-Bang la Control Lin
- **Puncte Cheie**:
  - **Algoritmul Bang-Bang (2 Senzori)**:
    - Ambii pe alb $\to$ merge înainte.
    - Senzor stânga pe negru $\to$ oprește motorul stâng (virează stânga).
    - Senzor dreapta pe negru $\to$ oprește motorul drept (virează dreapta).
    - *Caracteristică*: Mișcare oscilantă stânga-dreapta („wobble”).
  - **Matrice de 5–8 Senzori & PWM**:
    - Măsoară exact deviația milimetrică față de centru.
    - Reglează fin viteza motoarelor prin semnale PWM pentru viraje rapide și fluide.
- **[Placeholder Imagine: Comparație vizuală între oscilația unui robot cu 2 senzori și traiectoria lină a unui robot cu bară de 5 senzori PWM]**
- **Speaker Notes**:
  > Cu 2 senzori, robotul face corecții bruște de pornire/oprire, oscilând continuu pe linie. Când adăugăm o bară de 5 sau 8 senzori, microcontrollerul poate măsura exact abaterea și reglează lin viteza fiecărui motor prin PWM.

---

## Slide 4: Roboții Maze Solver – Cum Înfruntă Labirinturile?

- **Titlu**: Roboții de Labirint: Detectarea Pereților și a Liniilor
- **Puncte Cheie**:
  - Misiunea: găsirea ieșirii dintr-un labirint necunoscut fără ajutor uman.
  - **Labirinturi 3D cu Pereți**:
    - Folosesc **senzori ultrasonici** sau **lasere LiDAR** pentru măsurarea distanței până la pereți.
  - **Labirinturi 2D pe Linii Desenate**:
    - Folosesc **senzori infraroșu** pentru joncțiuni la 90° și **senzori de culoare RGB** pentru marcaje speciale.
- **[Placeholder Imagine: Comparație între un robot Micromouse care navighează între pereți fizici și un robot care rezolvă un labirint pe o grilă de linii negre]**
- **Speaker Notes**:
  > Un robot de labirint poate înfrunta două tipuri de trasee: labirinturi cu pereți fizici (unde folosește ultrasunete sau LiDAR pentru a nu lovi pereții) sau labirinturi pe linii desenate pe podea (unde folosește senzori IR și de culoare).

---

## Slide 5: Cum Ies din Labirint – Regula Mâinii Stângi

- **Titlu**: Ieșirea din Labirint: Algoritmul Mâinii Stângi & Scurtarea Drumului
- **Puncte Cheie**:
  - **Regula Priorității la Stânga (*Left-Hand Rule*)**:
    1. Viraj la **Stânga** (prioritate maximă).
    2. Altfel, mers **Înainte**.
    3. Altfel, viraj la **Dreapta**.
    4. Altfel (Fundătură) $\to$ Rotație de **180°**.
  - **Optimizarea Memoriei (*Dead-End Elimination*)**:
    - La prima parcurgere memorează toate deciziile.
    - La a doua tură elimină automat fundăturile explorate și parcurge direct cel mai scurt drum!
- **[Placeholder Imagine: Hartă grafică a unui labirint care arată traseul complet de explorare cu fundături și traseul optimizat direct spre ieșire]**
- **Speaker Notes**:
  > La fel cum un om poate ieși dintr-un labirint ținând mereu mâna stângă pe perete, robotul aplică aceeași ierarhie de decizii la fiecare intersecție. La a doua încercare, știe deja unde au fost fundăturile și merge direct la țintă!

---

## Slide 6: Briefing Practic: Conectarea Tracțiunii & Testul pe Banc

- **Titlu**: Misiunea de Laborator: Creierul, Mușchii & Testul pe Masă
- **Instrucțiuni Practice**:
  - **1. Montarea ESP32**: Fixarea plăcii de extensie pe șasiul 3D din Lecția 05.
  - **2. Conexiunea Semnalelor**: Cablarea pinilor de direcție, PWM și Standby (`STBY`) la driverul TB6612FNG.
  - **3. Regula de Siguranță**: Șasiul stă suspendat pe stand, **FĂRĂ ROTI**!
  - **4. Testul Firmware**: Încărcarea sketch-ului `Motor_Diagnostics.ino` în Arduino IDE și verificarea rotației axelor.
- **Speaker Notes**:
  > Trecem la lucru! Conectăm microcontrollerul ESP32 la driverul de motoare și încărcăm primul program de test. Păstrăm roțile demontate pentru a verifica în deplină siguranță pe masă rotația independentă a motoarelor!
