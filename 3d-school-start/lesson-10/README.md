# Lecția 10 [3DS2.10]: Fabrica de Jucării – Secretele Rotițelor Dințate, Raportul de Transmisie 1:2 & Brelocul Mecanic Dual-Gear (Scara 2:1)

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: 3DS2.10
- **Modul**: Modulul 2 – Fabrica de jucării
- **Vârsta Țintă**: 10 – 12 ani (Nivelul 2 – Start)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune aplicată de inginerie mecanică și modelare 3D în Tinkercad. După ce în Lecția 09 elevii au explorat rotația liberă pe rulmentul unui fidget tri-spinner, această lecție introduce primul mecanism mecanic de transmisie a mișcării prin contact direct: **angrenajul cu două roți dințate (Gears)**. Elevii descoperă istoria roților dințate (de la mecanismul din Antikythera și morile de apă antice, până la ceasurile elvețiene și cutiile de viteze auto), învață regula contra-rotației (sens orar versus sens anti-orar) și fenomenul de multiplicare a vitezei prin **raportul de transmisie 1:2** (la o singură rotație a roții mari cu 24 de dinți, roata mică cu 12 dinți execută două rotații complete!).
- **Strategia Didactică Scara 2:1 (Fără Zecimale în Tinkercad!)**:
  Pentru a elimina complet frustrarea copiilor de 10 ani legată de tastarea zecimalelor fine (sub 1 mm) în Tinkercad, întregul proiect este modelat la **Scara 2:1 (Mărime Dublă)**, folosind exclusiv numere întregi și pasul standard al grilei de **1 mm**:
  - Gaura centrală din roată este de **10 mm**, iar axul cilindric de pe șasiu este de **9 mm** $\to$ o toleranță curată și ușor de înțeles de exact **1 mm**!
  - Dinții și distanțele dintre centre sunt calculate în milimetri întregi.
  - În software-ul de feliere **Bambu Studio**, mentorul aplică comanda de scalare la **50%**, iar piesa printată pe Bambu Lab A1 devine un breloc compact de buzunar cu o toleranță fizică reală de **0.5 mm**, rotindu-se fin și impecabil!
- **Proiect Practic**: Colectarea spinnerelor printate din Lecția 09 + Punerea la imprimat a modelelor pe Bambu Lab A1 + Proiectarea completă în Tinkercad a brelocului mecanic la Scara 2:1 cu două roți dințate în raport 1:2, șasiu rotunjit cu inel de chei, axe calibrate cu toleranță de 1 mm și căpăcele de siguranță anti-cădere.

### Întrebări Esențiale:
1. De ce două roți dințate aflate în contact direct se rotesc întotdeauna în sensuri opuse (una în sens orar, cealaltă în sens anti-orar)?
2. Ce se întâmplă cu viteza și forța atunci când o roată mare cu 24 de dinți antrenează o roată mică cu 12 dinți (raportul 1:2)?
3. De ce este mult mai simplu pentru un inginer să modeleze un mecanism la Scara 2:1 (dublu) cu toleranță de 1 mm și să îl scaleze la 50% pentru producție?
4. Ce este jocul mecanic dintre dinți (backlash) și de ce adăugăm un spațiu de 1 mm între centrele axelor la Scara 2:1?
5. De ce axul de pe șasiu are diametrul de 9 mm dacă gaura din roată are diametrul de 10 mm?

### 🔗 Resurse & Linkuri Utile
- **Tinkercad Classroom**: https://www.tinkercad.com/
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Echipamente Digitale
- [ ] Contul Tinkercad Classroom deschis cu codul clasei afișat la videoproiector.
- [ ] Proiectul demonstrativ `3DS2.10_Dual_Gear_Keychain_Demo_2X` salvat în Tinkercad pentru demonstrația la tablă.
- [ ] Prezentarea interactivă pregătită conform `presentation_interactive.md`.
- [ ] Jocul Kahoot de 10 întrebări deschis într-un tab separat (conform `quiz.md`).
- [ ] Bambu Studio pregătit pe laptopul de catedră pentru demonstrația live a funcției **Scale -> 50%**.

### Hardware & Materiale Fizice pentru Clasă
- [ ] Imprimantele 3D **Bambu Lab A1** (sau A1 Combo) pregătite, patul de printare curățat, filamente PLA încărcate în culori vii contrastante.
- [ ] Tri-spinnerele 3D din Lecția 09 sortate și pregătite pentru distribuirea la Pasul 1.
- [ ] Mostre didactice la catedră: un model printat la mărime mare 100% (Scara 2:1) și modelul final scalat la 50%, arătând copiilor cum toleranța de 1 mm a devenit 0.5 mm în realitate.
- [ ] Monede de 1 Leu pentru echiparea spinnerelor din Lecția 09.
- [ ] Inele metalice de breloc pregătite pentru testul de prindere.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:10** | **1. Colectarea Modelelor din Lecția Anterioară** | Distribuirea tri-spinnerelor 3D din Lecția 09. Elevii montează monedele de 1 Leu în lăcașuri și testează rotirea liberă. |
| **00:10 – 00:25** | **2. Pregătirea & Pornirea Imprimării 3D** | Felierea în Bambu Studio a unui breloc dual-gear: demonstrarea comenzii `Scale 50%` și lansarea printului demonstrativ pe Bambu Lab A1. |
| **00:25 – 00:45** | **3. Descoperirea Noii Teme & Prezentarea Interactivă** | Parcurgerea prezentării la tablă: istoria angrenajelor, contra-rotația, multiplicatorul de viteză 1:2 și secretul proiectării la Scara 2:1 cu toleranță de 1 mm. |
| **00:45 – 00:55** | **4. Pauză Scurtă & Prezență** | Pauză activă de relaxare, verificarea prezenței și a logării în Tinkercad. |
| **00:55 – 01:20** | **5. Demonstrația Profesorului în Tinkercad (Scara 2:1)** | Modelarea live: roata mică (12 dinți) și mare (24 dinți) cu Metric Gear (înălțime 8 mm, gaură 10 mm), șasiul de 136 x 68 x 6 mm cu ureche de inel și cele 2 axe de 9 mm cu toleranță de 1 mm. |
| **01:20 – 01:45** | **6. Lucru Individual la Propriul Proiect** | Fiecare elev își modelează brelocul la Scara 2:1 pe grila de 1 mm fără zecimale, adaugă mânerul de rotire și își personalizează șasiul. |
| **01:45 – 01:55** | **7. Joc Kahoot / Evaluare Interactivă** | 10 întrebări dinamice despre roți dințate, raportul 1:2 și logica scalării (conform `quiz.md`). |
| **01:55 – 02:00** | **8. Concluzii & Pregătirea Cozii de Printare** | Salvarea proiectelor, pregătirea scalării la 50% pentru imprimarea dintre ore și fotografia de grup. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Colectarea Modelelor din Lecția Anterioară (00:00 – 00:10)
Profesorul distribuie tri-spinnerele printate:
- Elevii montează cele 3 monede de 1 Leu în buzunarele brațelor, asamblează axul central și capacele ergonomice de deget.
- Se testează rotirea liberă și se reamintește regula toleranței de printare.
- Profesorul anunță tranziția spre mecanisme interconectate:
  *"Astăzi învățăm cum facem ca două roți să colaboreze și să se învârtă una pe cealaltă prin dinți! Vom crea un breloc mecanic cu două roți în raport 1:2. Iar pentru că la 10 ani este obositor să tastăm numere cu virgule precum 4.4 sau 0.6 mm, aplicăm un truc secret din marile birouri de proiectare: **desenăm totul la Scara 2:1 (de două ori mai mare)**, cu numere întregi și toleranță simplă de 1 mm, iar imprimanta Bambu Lab îl va micșora la 50% când îl printează!"*

---

### Pasul 2: Pregătirea & Pornirea Imprimării 3D (00:10 – 00:25)
Profesorul deschide Bambu Studio pe ecranul mare:
- Încarcă fișierul demonstrativ modelat la Scara 2:1.
- Arată clasei cum piesa pare mare pe patul virtual de printare.
- Apasă pe unealta **Scale** (tasta `S`), tastează valoarea **`50%`** și bifează *Uniform scale*:
  - Gaura de 10 mm devine instantaneu 5 mm!
  - Axul de 9 mm devine instantaneu 4.5 mm!
  - Toleranța de 1 mm dintre ele devine exact **0.5 mm**!
- Elevii înțeleg instantaneu matematica scalării: *"Am desenat ușor cu numere întregi, iar slicer-ul a micșorat piesa pentru buzunarul nostru!"*
- Se lansează printul demonstrativ pe Bambu Lab A1.

---

### Pasul 3: Descoperirea Noii Teme & Prezentarea Interactivă (00:25 – 00:45)
Se parcurge prezentarea conform `presentation_interactive.md`. Elevii citesc cu voce tare propozițiile numerotate:

**1. Ce este o Roată Dințată și unde o întâlnim?**
- O roată dințată (*Gear*) are pe margine dinți special calculați care se prind în dinții roții vecine pentru a transmite mișcarea fără alunecare.
- Cel mai vechi mecanism mecanic din lume este **Mecanismul de la Antikythera** (Grecia Antică, peste 2100 de ani), un calculator mecanic din bronz cu roți dințate care prezicea eclipsele și mișcarea planetelor.
- Astăzi, roțile dințate sunt peste tot: în ceasurile mecanice, în biciclete, în brațele roboților și în cutiile de viteze ale mașinilor.

**2. Regula Contra-Rotației:**
- Când două roți dințate exterioare sunt în contact:
  - Dacă roata stângă este rotită în sensul acelor de ceasornic (*clockwise*), dinții ei împing în jos roata vecină.
  - Ca urmare, roata dreaptă se va roti obligatoriu în sens opus (*counter-clockwise*)!

**3. Raportul de Transmisie 1:2 (Multiplicatorul de Viteză):**
- **Roata Mare**: are **24 de dinți**.
- **Roata Mică**: are **12 dinți**.
- Când roata mare face o singură tură completă, prin punctul de contact trec 24 de dinți. Roata mică, având doar 12 dinți, este forțată să facă **exact 2 rotații complete**!
- Acesta este un **multiplicator de viteză 1:2**: învârți încet de roata mare, iar roata mică zboară cu viteză dublă!

**4. Secretul Scării 2:1 și Toleranța de 1 mm:**
- În loc să lucrăm cu zecimale grele, folosim grila standard de 1 mm din Tinkercad.
- Lăsăm **1 mm joc** între ax și gaură (ax de 9 mm în gaură de 10 mm).
- Lăsăm **1 mm joc** între dinții roților (*backlash*).
- Prin micșorarea la 50% în imprimantă, toți acești 1 mm devin exact 0.5 mm, obținând piese care se învârt impecabil!

---

### Pasul 4: Pauză Scurtă & Prezență (00:45 – 00:55)
Pauză activă de 10 minute pentru relaxare și conectarea în Tinkercad Classroom.

---

### Pasul 5: Demonstrația Profesorului în Tinkercad (Scara 2:1) (00:55 – 01:20)
Profesorul modelează live la tablă, folosind exclusiv numere întregi pe grila de 1 mm:

#### 1. Generarea Roții Mici (12 Dinți) la Scara 2:1:
- Deschideți meniul: `Shape Generators` -> `All`.
- Trageți forma **`Metric Gear`** pe planul de lucru.
- În panoul de setări:
  - `NumTeeth`: **12**;
  - `Pitch`: lăsați valoarea standard (de exemplu `4`);
  - `Height`: **8 mm** (va deveni 4 mm la print);
  - `Hole`: **10 mm** (va deveni 5 mm la print).
- Colorați roata în galben solar.

#### 2. Generarea Roții Mari (24 Dinți) cu Mâner:
- Trageți un al doilea `Metric Gear`.
- Setați:
  - `NumTeeth`: **24** (exact dublu!);
  - `Pitch`: **aceeași valoare exactă** ca la roata mică;
  - `Height`: **8 mm**;
  - `Hole`: **10 mm**.
- Colorați roata în albastru cyan.
- **Mânerul de învârtit (*Turning Knob*)**:
  - Trageți un cilindru: Diametru **12 x 12 mm**, Înălțime **10 mm**.
  - Așezați-l pe fața roții mari și grupați-l (`Ctrl + G`).

#### 3. Măsurarea Distanței Dintre Centre ($L$):
- Apropiați cele două roți dințate până când dinții se întrepătrund frumos, lăsând un spațiu curat de **1 mm** între ei (*backlash*).
- Priviți de sus în modul ortogonal (tasta `5`).
- Măsurați cu rigla distanța dintre centrul roții mari și centrul roții mici: va fi o cotă întreagă curată (de exemplu **61 mm**).

#### 4. Modelarea Șasiului Breloc la Scara 2:1:
- **Placa de Bază**:
  - Trageți un cub roșu: Lungime **136 mm**, Lățime **68 mm**, Înălțime **6 mm** (la 50% va deveni 68 x 34 x 3 mm).
  - În panoul de proprietăți, setați `Radius` la **12 mm** pentru a rotunji perfect toate colțurile șasiului.
- **Urechea pentru Inelul de Breloc (*Keyring Loop*)**:
  - Trageți un tub cilindric (*Tube*) pe capătul din stânga al șasiului: Diametru exterior **20 x 20 mm**, Înălțime **6 mm**, Grosime perete **5 mm** (gaura interioară este de 10 mm, care la printare devine 5 mm, ideală pentru orice inel de chei!).
  - Suprapuneți-l pe marginea bazei și grupați-le.
- **Cele 2 Axe Cilindrice (Toleranța de 1 mm!)**:
  - Axul 1 (pentru roata mare): Cilindru Diametru **9 x 9 mm**, Înălțime **13 mm** (gaura din roată este de 10 mm, deci avem exact **1 mm joc**!).
  - Axul 2 (pentru roata mică): Cilindru identic, Diametru **9 x 9 mm**, Înălțime **13 mm**.
  - Așezați Axul 1 și Axul 2 pe baza șasiului la distanța exactă măsurată anterior (**61 mm** între centre).
  - Grupați axele cu baza șasiului (`Ctrl + G`).

#### 5. Capacele de Siguranță (*Locking Retainer Caps*):
- Modelăm 2 căpăcele tip ciupercă la mărime dublă:
  - Cilindru plin: Diametru **16 x 16 mm**, Înălțime **4 mm**.
  - Decupaj central (Hole): Cilindru Diametru **9 x 9 mm**, Adâncime **3 mm**.
  - Grupați căpăcelul. (La printarea scalată la 50%, acesta se va fixa pe axul de 4.5 mm!).

---

### Pasul 6: Lucru Individual la Propriul Proiect (01:20 – 01:45)
Elevii lucrează pe stațiile lor, modelând la Scara 2:1:
- Pasul este extrem de relaxant și plăcut, deoarece grila Tinkercad este la 1.0 mm și toate cotele sunt întregi (12 dinți, 24 dinți, gaură 10 mm, axe 9 mm, șasiu 6 mm).
- Fiecare copil își poate decora șasiul cu un text mic sau cu un model spiralat pe fața roții mici folosind unealta *Scribble*.
- Profesorul verifică la fiecare masă regula de aur: gaura din roată = 10 mm, axul de pe șasiu = 9 mm (diferență de 1 mm).

---

### Pasul 7: Joc Kahoot / Evaluare Interactivă (01:45 – 01:55)
Rularea celor 10 întrebări teoretice din `quiz.md`. Elevii răspund cu entuziasm la întrebările despre contra-rotație, raportul 1:2 și trucul ingineresc al scalării 2:1 la 50%.

---

### Pasul 8: Concluzii & Pregătirea Cozii de Printare (01:55 – 02:00)
- Denumirea proiectelor: `3DS2.10_BrelocGears_NumeElev`.
- Profesorul reamintește: *"La noapte, pe imprimantele Bambu Lab A1, vom lua proiectele voastre mari și le vom felia la 50%! Data viitoare veți primi brelocul miniatural gata asamblat, cu roțile dințate funcționale!"*.
- Fotografie de grup cu spinnerele funcționale în mână.
