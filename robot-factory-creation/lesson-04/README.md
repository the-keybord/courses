# Lecția 04 [RBF1.4]: Tipuri de Cabluri, Conectori și Programarea Senzorilor Integrați BBC Micro:Bit în MakeCode

Bine ați revenit la cursul **Robot Factory: Creation**! Astăzi este o zi mult așteptată în laboratorul nostru de mecatronică: **plăcile fizice BBC Micro:Bit au sosit pe bancurile de lucru**! Trecem de la simulatoare virtuale pe ecran direct la atingerea, programarea și testarea hardware-ului real.

Lecția este structurată în două părți complementare. În prima parte, abordăm un capitol fundamental de inginerie electrică: **cablurile și conectorii**. Chiar dacă Micro:Bit-ul are mulți senzori direct pe placă, pentru a comanda motoarele robotului, plăcile de extensie robot:bit și bateriile externe avem nevoie de cablaje de înaltă calitate. Vom învăța din ce sunt fabricate cablurile (cupru cositorit vs aluminiu, silicon vs PVC, lițat vs masiv), ce înseamnă sistemul inversat AWG, de ce cablurile subțiri provoacă căderi periculoase de tensiune ($V = I \cdot R$) și reseturi de procesor (brownout), ce sunt conectorii DuPont (2.54 mm), JST-PH (2.0 mm), JST-XH, XT30 și ce scule profesionale se folosesc pentru dezizolat, sertizat și lipit.

A doua parte a lecției, inima laboratorului nostru de astăzi, este un maraton practic de programare hardware în Microsoft MakeCode. Elevii vor învăța să conecteze plăcile Micro:Bit prin WebUSB direct din browser și vor realiza **6 exerciții progresive cu blocuri de bază**, programând toți senzorii integrați pe placă: senzorul de temperatură, senzorul de lumină (matricea LED), accelerometrul pentru înclinare și mișcare, pedometrul cu variabile, busola magnetică și microfonul de sunet.

---

## 1. Informații Generale despre Lecție
- **Cod Lecție**: RBF1.4
- **Grupa de Vârstă**: 11 – 14 ani
- **Durată Totală**: 120 minute (2 ore)
- **Tipul Lecției**: Masterclass teoretic (cabluri, izolații, AWG, cădere de tensiune, conectori JST/DuPont/XT) & laborator practic de programare pe plăcile fizice BBC Micro:Bit în MakeCode
- **Dinamica de Lucru**: Individual / Echipe de 2 elevi pe stație de lucru cu placă fizică Micro:Bit v2
- **Proiect Practic**: 6 Programe MakeCode descărcate și rulate pe hardware-ul fizic Micro:Bit (Termometru Vizual Bar Graph & Alertă Termică, Faruri Inteligente de Noapte, Nivelă 2D de Înclinare, Pedometru Inteligent, Busolă Magnetică și Alarmă la Zgomot)
- **Obiectiv Major**: Înțelegerea standardelor industriale de cabluri și conectori, urmată de dobândirea fluenței în programarea senzorilor fizici integrați pe BBC Micro:Bit folosind blocuri logice și structuri decizionale.

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1example_rbf1_lesson04_cables_microbit/edit?usp=drive_link
- **Kahoot**: https://create.kahoot.it/details/rbf1-lesson04-cables-connectors-quiz
- **Editor Microsoft MakeCode**: https://makecode.microbit.org

### ❓ Întrebări Esențiale & Obiective Operaționale

#### Obiective Operaționale
La finalul acestei sesiuni de 120 de minute, cursanții vor fi capabili:
1. **Să clasifice materialele unui cablu electric** (cupru cositorit vs aluminiu, izolație din silicon vs PVC, miez lițat vs masiv) și să argumenteze de ce cablurile lițate din silicon sunt optime pe roboți mobili.
2. **Să decodeze standardul AWG (American Wire Gauge)** și logica sa inversată (număr mic = fir gros; număr mare = fir subțire), corelând grosimea firului cu capacitatea de curent și căderea de tensiune.
3. **Să definească noțiunea de pas al pinilor (pitch)** și să compare conectorii DuPont (2.54 mm), JST-PH (2.0 mm), JST-XH și conectorii de baterie XT30 cu ghidaj de polarizare (*keying*).
4. **Să împerecheze și să descarce cod direct din browser pe placa fizică Micro:Bit prin WebUSB** sau prin transferul fișierului `.hex` pe unitatea USB.
5. **Să programeze senzorii de mediu ai plăcii** (temperatură și lumină ambientală), utilizând blocuri decizionale `if/then/else` pentru a crea un termometru digital și un far automat de noapte.
6. **Să utilizeze accelerometrul și magnetometrul intern** pentru detecția gesturilor (`on shake`, `on tilt`), afișarea unghiului de busolă (`compass heading`) și numărarea pașilor cu variabile.
7. **Să folosească microfonul integrat de pe micro:bit v2** pentru a măsura nivelul de zgomot ambiental (`sound level`) și a declanșa o alarmă sonoră și vizuală când se depășește un prag critic.

#### Întrebări Esențiale de Inginerie
- *De ce un cablu electric marcat cu 18 AWG este mult mai gros și suportă mai mult curent decât un cablu de 28 AWG?*
- *Cum măsoară matricea de 25 de LED-uri a Micro:Bit-ului nivelul de lumină din încăpere fără să aibă un senzor optic separat?*
- *Ce este un detector de brownout și de ce un cablu prea subțire poate reseta microcontrolerul când pornim motoarele?*
- *Cum detectează accelerometrul intern dacă am scuturat placa sau dacă am înclinat-o spre stânga ori spre dreapta?*

---

## 2. Pregătirea Lecției (Checklist Profesor)

Înainte de intrarea elevilor în laborator, profesorul verifică următoarele elemente tehnice:

### Software & Resurse Digitale
- [ ] Prezentarea Google Slides deschisă pe ecranul mare al laboratorului.
- [ ] Quiz-ul Kahoot pregătit în modul Classic Live Game.
- [ ] Pagina `makecode.microbit.org` accesibilă pe toate calculatoarele elevilor (Google Chrome sau Microsoft Edge recomandat pentru suport complet WebUSB).

### Hardware & Materiale pe Mesele de Lucru
- [ ] **Plăci BBC Micro:Bit v2**: 1 bucată per elev (sau per pereche de 2 elevi).
- [ ] **Cabluri micro-USB de date**: verificate prealabil (atenție: unele cabluri ieftine sunt doar pentru încărcare, fără linii de date; asigurați-vă că transmit date prin USB!).
- [ ] **Mostre fizice de cabluri și conectori pe masa demonstrativă**: mostre de sârmă masivă, cablu lițat din silicon, cablu PVC, conectori DuPont 2.54mm, conectori JST-PH 2.0mm, conectori XT30 și un clește de dezizolat / clește de sertizat pentru demonstrație vizuală.
- [ ] **Suporturi de baterii 2xAAA (opțional)**: pentru testarea liberă a pedometrului și busolei prin clasă.

---

## 3. Structura Sesiunii de 120 Minute (Timeline Table)

| Interval Timp | Durată | Etapă | Descriere Operațională |
| :---: | :---: | :--- | :--- |
| **00:00 – 00:05** | 5 min | **Pasul 1: Deschidere & Anunțul Zilei: Hardware-ul Fizic a Sosit!** | Preluarea prezenței, primirea entuziasmantă a plăcilor BBC Micro:Bit fizice pe bancuri și lansarea temei de inginerie electrică. |
| **00:05 – 00:30** | 25 min | **Pasul 2: Masterclass Teoretic – Cabluri, AWG, Conectori și Scule** | Prezentare pe ecran: structura conductorului (cupru cositorit vs aluminiu, lițat vs masiv), izolații (silicon vs PVC), sistemul AWG, căderea de tensiune ($V=I \cdot R$), tipuri de conectori (DuPont, JST-PH, XT30) și scule de lucru. |
| **00:30 – 00:35** | 5 min | **Pasul 3: Pauză & Conectarea Plăcilor Fizice prin WebUSB** | Hidratare, conectarea cablurilor micro-USB și împerecherea plăcilor fizice Micro:Bit în MakeCode cu funcția „Pair Device". |
| **00:35 – 01:45** | 70 min | **Pasul 4: Laborator Practic – 6 Exerciții cu Senzorii Integrați** | Programare practică pas cu pas în MakeCode: Termometru de mediu, Veioză de noapte cu senzor de lumină, Nivelă 2D de înclinare, Pedometru inteligent cu variabile, Busolă magnetică cu semnal sonor și Alarmă la zgomot cu microfonul intern. |
| **01:45 – 02:00** | 15 min | **Pasul 5: Quiz Kahoot de Evaluare (13 Întrebări)** | Test interactiv axat 100% pe teoria cablurilor, a materialelor, a standardului AWG și a conectorilor. Întrebările complete și explicațiile se regăsesc în `quiz.md`. |

---

## 4. Desfășurarea Detaliată a Lecției

---

### Pasul 1: Deschidere & Anunțul Zilei: Hardware-ul Fizic a Sosit! (00:00 – 00:05)

Profesorul deschide sesiunea cu entuziasm:

*„Astăzi facem pasul cel mare! În sesiunea trecută am învățat pe simulatorul MakeCode ce este un microcontroler și cum gândesc computerele. Astăzi, plăcile fizice BBC Micro:Bit sunt pe mesele voastre! Le vom atinge, le vom conecta prin USB și vom descărca propriile noastre programe pe ele.*

*Dar înainte de a scrie cod pentru senzori, trebuie să înțelegem un secret de bază al oricărui robot: cum ajunge energia electrică și informația de la baterie și senzori la creierul electronic. Dacă folosim cabluri nepotrivite sau conectori slăbiți, chiar și cel mai bun microcontroler se va bloca. Haideți să descoperim secretele cablurilor și conectorilor!"*

---

### Pasul 2: Masterclass Teoretic – Cabluri, AWG, Conectori și Scule (00:05 – 00:30)

Profesorul livrează o prezentare dinamică de 25 de minute pe ecranul laboratorului, folosind mostre reale pe masa demonstrativă.

#### 1. Conductorul Metalic: Cupru Pur / Cositorit vs Aluminiu
- **Cuprul pur (OFC - Oxygen-Free Copper)**: Este metalul standard în electronică datorită conductivității electrice excelente și rezistenței mecanice bune.
- **Cuprul cositorit (tinned copper)**: Lițele de cupru sunt acoperite cu un strat fin de staniu (cositor). Acest lucru împiedică oxidarea cuprului (care altfel prinde o pojghiță verde izolatoare) și permite lipirea instantanee cu fludorul. Este standardul numărul 1 în robotică și aeromodelism.
- **Aluminiul placat cu cupru (CCA - Copper Clad Aluminum)**: Un fir ieftin cu miez de aluminiu. Are o rezistență electrică cu 60% mai mare decât cuprul, este rigid, se rupe ușor la îndoiri repetate și se lipește foarte greu. *Complet interzis pe roboți!*

#### 2. Miez Lițat (Stranded) vs Miez Masiv (Solid Core)
- **Firul monofilar masiv (solid core wire)**: Conține o singură sârmă groasă. Este rigid și își păstrează forma când este îndoit, fiind bun pe breadboard-uri fixe. Însă pe un robot mobil supus vibrațiilor produse de roți și motoare, sârma masivă suferă de oboseală mecanică și se fracturează în interiorul plasticului.
- **Firul multifilar lițat (stranded wire)**: Conține zeci de micro-firișoare fine răsucite laolaltă. Este foarte flexibil și poate rezista la mii de mișcări și vibrații fără să se rupă.

#### 3. Izolația: Silicon vs PVC vs Teflon
- **Siliconul (silicone insulation)**: Materialul ideal în robotică. Este moale, ultra-flexibil și rezistă la temperaturi între -60°C și +200°C. Dacă îl atingem accidental cu vârful letconului încins la 350°C, nu se topește!
- **PVC (polyvinyl chloride)**: Izolația clasică ieftină. Este mai rigidă și se topește instantaneu la căldura letconului, retrăgându-se și lăsând sârma dezvelită.
- **Teflonul (PTFE)**: Izolație aerospațială ultra-subțire și extrem de rezistentă chimic, dar costisitoare și greu de dezizolat.

#### 4. Standardul AWG (American Wire Gauge) & Căderea de Tensiune
- **Logica inversată a AWG**:
  - **Număr AWG MIC = Fir GROS** (capacitate mare de curent).
  - **Număr AWG MARE = Fir SUBȚIRE** (destinat exclusiv semnalelor slabe).
  - *Ghid practic*: 14–16 AWG pentru baterii mari de drone (20–40A); 20–22 AWG pentru alimentarea motoarelor și plăcilor de extensie robot:bit (3–7A); 26–28 AWG pentru semnale logice și senzori subțiri (< 1A); 30 AWG pentru micro-reparații pe circuite integrate.
- **Fizica pierderilor de tensiune**:
  - Rezistența firului este dată de formula: $R = \rho \cdot \frac{L}{A}$ (cu cât firul e mai subțire, cu atât rezistența $R$ este mai mare).
  - Conform Legii lui Ohm, căderea de tensiune pe cablu este: $V_{drop} = I \cdot R$. Dacă motoarele absorb un curent mare la pornire printr-un fir subțire, pe cablu se pierd 1–2V. Tensiunea la microcontroler scade brusc sub pragul critic, iar **detectorul de brownout (*brownout detector*) resetează instantaneu procesorul**!
  - În plus, energia pierdută se transformă în căldură prin **efectul Joule (*Joule heating*)**: $P = I^2 \cdot R$, existând riscul de topire a plasticului.

#### 5. Conectori de Semnal și de Putere: Pitch și Polarizare (Keying)
- **Ce este "Pitch"?**: Distanța dintre centrele a doi pini vecini. Standardul clasic este **2.54 mm** (0.1 inch / DuPont). Standardele miniaturale folosesc **2.00 mm** (JST-PH).
- **Conectorii DuPont (pas 2.54 mm)**: Standardul universal pentru barete de pini și breadboard. Nu au clemă de blocare mecanică și pot aluneca la vibrații puternice.
- **Conectorii JST-PH (pas 2.00 mm) & JST-XH (2.54 mm)**: Conectori compacți cu buze de fricțiune sau ghidaje polarizate (*keying*), ideali pentru senzori.
- **Conectorii XT30 / XT60**: Conectori de forță pentru baterii Li-Po/Li-Ion cu contacte aurite și formă asimetrică trapezoidală, făcând fizic imposibilă conectarea inversă a plusului cu minusul.

#### 6. Trusa de Scule a Inginerului
- **Clește de dezizolat (*wire stripper*)**: fante calibrate pe AWG pentru a tăia doar izolația fără a ciupi lițele de cupru.
- **Clește de sertizat cu clichet (*ratcheting crimper*)**: presează simultan aripioarele de contact electric pe cupru și aripioarele de descărcare a tensiunii mecanice (*strain relief*) pe izolație.
- **Letcon (*soldering iron*) & tub termocontractil (*heat shrink*)**: pentru îmbinări permanente izolate profesional.
- **Multimetru digital pe test de continuitate (*continuity buzzer*)**: verifică bip-ul pe fir și liniștea absolută între plus și masă (GND) înainte de alimentare.

---

### Pasul 3: Pauză & Conectarea Plăcilor Fizice prin WebUSB (00:30 – 00:35)

Elevii se hidratează scurt timp de 5 minute. Profesorul distribuie cablurile micro-USB și plăcile Micro:Bit v2.

1. Elevii conectează cablul micro-USB între calculator și mufa superioară a plăcii BBC Micro:Bit. LED-ul galben de alimentare de pe spatele plăcii se aprinde.
2. În editorul MakeCode (`makecode.microbit.org`), elevii apasă pe butonul cu 3 puncte `...` de lângă butonul mov **Download** și selectează opțiunea **Connect Device** / **Pair Device**.
3. În fereastra pop-up din browser, selectează dispozitivul `BBC micro:bit CMSIS-DAP` și apasă **Connect**.
4. Din acest moment, butonul Download se transformă într-un buton direct de flash: orice apăsare descarcă și rulează codul pe placa fizică în doar 2–3 secunde!

---

### Pasul 4: Laborator Practic – 6 Exerciții cu Senzorii Integrați (00:35 – 01:45)

Profesorul prezintă pe ecran logica fiecărui senzor, iar elevii programează, testează și observă comportamentul plăcii fizice.

---

#### Exercițiul 1: Termometru Vizual cu Coloană de Mercur pe LED-uri & Alertă Termică (Senzor de Temperatură & Bar Graph)
- **Concept Teoretic**: În loc să afișăm doar un număr static sau o iconiță, transformăm matricea 5x5 de LED-uri a Micro:Bit-ului într-un **termometru analogic cu coloană de mercur digitală** folosind blocul de grafic de bare. Matricea va lumina dinamic rândurile de LED-uri de jos în sus, proporțional cu temperatura citită de procesor.
- **Instrucțiuni MakeCode**:
  1. În blocul `forever`:
  2. Tragem blocul **`plot bar graph of ... up to ...`** (din categoria **LED**).
  3. În primul câmp, introducem blocul **`temperature (°C)`** (din categoria **Input**).
  4. În al doilea câmp (*up to*), tastăm valoarea **`40`** (temperatura maximă a scalei în grade Celsius).
  5. **Sistem de Protecție la Supraîncălzire**:
     - Sub blocul de bar graph, adăugăm o verificare decizională `if ... then` (din **Logic**):
     - `if temperature (°C) > 30 then`:
       - Redă un sunet de avertizare pe difuzorul intern: `play tone High B for 1/8 beat` (din categoria **Music**).
       - Afișează pictograma de flăcări / alertă (`show icon IconNames.Angry`).
  6. **Afișare la cerere pe Logo Tactil**:
     - Tragem blocul de eveniment `on logo touched` (din categoria **Input**).
     - În interiorul lui, punem `show number (temperature (°C))` pentru a citi valoarea numerică exactă doar atunci când atingem sigla aurie Micro:Bit!
- **Testare pe Placa Fizică**: Elevii observă câte rânduri de LED-uri sunt aprinse la temperatura camerei (~22°C = 3 rânduri aprinse). Apoi, țin degetul apăsat ferm pe procesorul din spatele plăcii timp de 10 secunde și privesc coloana de LED-uri cum urcă spre vârf până când se declanșează alarma de supraîncălzire!

---

#### Exercițiul 2: Luxmetru & Veioză Automată de Noapte (Senzorul de Lumină)
- **Concept Teoretic**: Matricea de 25 de LED-uri roșii funcționează invers ca o matrice de fotodiode, măsurând lumina ambientală de la 0 (beznă totală) la 255 (lumină directă foarte puternică).
- **Instrucțiuni MakeCode**:
  1. În blocul `forever`:
  2. Citim valoarea `light level` (din categoria **Input**).
  3. Adăugăm o condiție `if/then/else` (din categoria **Logic**):
     - `if light level < 50 then`: aprinde toate cele 25 de LED-uri la luminozitate maximă (`show leds` desenând o inimă mare sau un pătrat plin 5x5) pentru a lumina camera.
     - `else`: stinge ecranul (`clear screen`).
  4. La apăsarea butonului `A` (`on button A pressed`), afișează valoarea numerică exactă a luminii (`show number light level`).
- **Testare pe Placa Fizică**: Elevii acoperă complet fața plăcii cu palma (simulând noaptea) și observă aprinderea automată a „veiozei"!

---

#### Exercițiul 3: Nivelă Digitală 2D & Indicator de Înclinare (Accelerometru)
- **Concept Teoretic**: Accelerometrul intern măsoară forța gravitațională pe 3 axe ($X, Y, Z$) și recunoaște unghiul de înclinare al plăcii.
- **Instrucțiuni MakeCode**:
  1. Folosim evenimentele dedicate de gesturi din categoria **Input**:
     - `on tilt left`: afișează o săgeată spre stânga (`show arrow ArrowNames.West`).
     - `on tilt right`: afișează o săgeată spre dreapta (`show arrow ArrowNames.East`).
     - `on logo up`: afișează o săgeată în jos (`show arrow ArrowNames.South`).
     - `on logo down`: afișează o săgeată în sus (`show arrow ArrowNames.North`).
     - `on screen up` (când placa este perfect orizontală pe masă): aprinde doar LED-ul central de la coordonatele $(2, 2)$ (`plot x: 2 y: 2`), confirmând că suprafața este dreaptă!
- **Testare pe Placa Fizică**: Elevii țin placa în mână ca pe un volan și o înclină în cele 4 direcții pentru a ghida săgețile.

---

#### Exercițiul 4: Pedometru Inteligent & Numărător de Pași (Accelerometru & Variabile)
- **Concept Teoretic**: Când omul merge sau aleargă, corpul generează o accelerație verticală bruscă la fiecare pas, pe care accelerometrul o detectează ca un gest de „scuturare" (*shake*).
- **Instrucțiuni MakeCode**:
  1. În blocul `on start`:
     - Creăm o variabilă `pasi`.
     - Setăm `set pasi to 0`.
     - Afișăm numărul `show number pasi`.
  2. În blocul de eveniment `on shake` (din **Input**):
     - Schimbăm valoarea variabilei: `change pasi by 1` (din **Variables**).
     - Redăm un sunet scurt de confirmare: `play sound SoundExpression.giggle` sau `play tone Middle C for 1/16 beat` (din **Music**).
     - Afișăm valoarea actualizată: `show number pasi`.
  3. La apăsarea simultană a butoanelor `A + B` (`on button A+B pressed`):
     - Resetăm contorul: `set pasi to 0`.
     - Afișăm pictograma `show icon IconNames.SmallDiamond` și apoi `show number 0`.
- **Testare pe Placa Fizică**: Elevii deconectează placa (sau folosesc suportul de baterii) și fac pași prin clasă, verificând acuratețea numărării pașilor!

---

#### Exercițiul 5: Busolă Magnetică Digitală cu Avertizare la Nord (Magnetometru)
- **Concept Teoretic**: Magnetometrul intern măsoară câmpul magnetic terestru și calculează unghiul față de Nordul magnetic (de la 0° la 359°).
- **Instrucțiuni MakeCode**:
  1. În blocul `forever`:
  2. Creăm o variabilă `directie` și îi atribuim valoarea `compass heading (°)` (din categoria **Input**).
  3. Adăugăm o structură decizională multiplă:
     - `if directie < 45 or directie > 315 then`: afișează litera `"N"` (Nord).
     - `else if directie >= 45 and directie < 135 then`: afișează litera `"E"` (Est).
     - `else if directie >= 135 and directie < 225 then`: afișează litera `"S"` (Sud).
     - `else`: afișează litera `"W"` (Vest).
  4. **Funcția de precizie sonoră**: Dacă `directie >= 355 or directie <= 5` (Nord exact), redă un semnal sonor continuu (`play tone High C for 1/8 beat`), permițând navigarea cu ochii închiși!
- **Testare pe Placa Fizică**: La prima pornire, Micro:Bit-ul cere calibrarea (*Tilt to fill screen*) – elevii rotesc placa în cerc până când toate LED-urile se aprind, apoi explorează punctele cardinale din clasă.

---

#### Exercițiul 6: Detector de Sunet & Alarmă Antiefracție (Microfon Integrat v2)
- **Concept Teoretic**: Placa Micro:Bit v2 are un microfon MEMS integrat și un LED indicator de sunet, capabil să măsoare intensitatea acustică de la 0 la 255.
- **Instrucțiuni MakeCode**:
  1. Folosim evenimentul `on loud sound` (din categoria **Input**) sau citim `sound level` în `forever`.
  2. Setăm pragul de sensibilitate în `on start`: `set loud sound threshold to 140`.
  3. În blocul `on loud sound`:
     - Declanșăm o alarmă vizuală: afișăm intermitent pictograma de Craniu (`show icon IconNames.Skull`) și Semnul Exclamării.
     - Declanșăm o sirenă audio prin difuzorul intern: `play sound SoundExpression.siren until done`.
     - Derulăm mesajul `"INTRUS DETECTAT!"`.
  4. La apăsarea butonului `A`, oprim alarma și revenim la o față zâmbitoare (`show icon IconNames.Happy`).
- **Testare pe Placa Fizică**: Elevii bat din palme sau vorbesc tare lângă placă pentru a testa declanșarea alarmei antiefracție!

---

### Pasul 5: Quiz Tehnic de Evaluare (01:45 – 02:00)

Sesiunea se încheie cu un quiz interactiv Kahoot de 13 întrebări, proiectat pe ecranul mare al sălii. Quiz-ul testează 100% conceptele teoretice predate în Masterclass (materiale conductoare, izolații din silicon vs PVC, AWG, căderea de tensiune, conectori DuPont/JST/XT și scule de lucru).

Întrebările complete, cele 4 opțiuni de răspuns ultra-scurte (1–3 cuvinte fiecare) și explicațiile pedagogice detaliate se regăsesc în fișierul dedicat: [`quiz.md`](quiz.md).

---

## 5. Încheiere & Managementul Resurselor

- **Salvarea Proiectelor MakeCode (3 minute)**: Elevii își denumesc fișierele de proiect în MakeCode (ex: `Nume_Senzori_Microbit`) și le descarcă pe calculator ca fișiere `.hex` de rezervă.
- **Deconectarea Plăcilor**: Se deconectează cablurile micro-USB în siguranță și se așază plăcile Micro:Bit în cutiile lor de protecție electrodinamică.
- **Preview Lecția Următoare**: În Lecția 05 vom conecta placa BBC Micro:Bit pe placa de expansiune **robot:bit**, învățând cum alimentăm motoarele de curent continuu și cum controlăm primul nostru șasiu mobil pe roți!
