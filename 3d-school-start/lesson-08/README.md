# Lecția 08 [3DS2.8]: Pet Tag Inteligent cu Cip NFC – Istoria Animalelor de Companie & Brelocul Anti-Pierdere

---

## 📌 1. Informații Generale & Obiective de Învățare

- **Cod Lecție**: `3DS2.8`
- **Curs**: 3D School Start (Nivel 2)
- **Modul**: Modulul 1 – *Laboratorul Creativ*
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore)
- **Software Modelare**: Tinkercad Classroom
- **Software Slicing**: Bambu Studio
- **Aplicație Mobilă NFC**: **NFC Tools** (Android / iOS)
- **Hardware & Echipamente**:
  - Imprimante **Bambu Lab A1** (în Etapa 2 se pun la imprimat **tablourile puzzle 3D** modelate de elevi în Lecția 07, care vor fi colectate și testate la Etapa 8)
  - **Stickere rotunde NFC** (`NTAG213` sau `NTAG215`, diametru `25 mm`, câte unul per elev + câteva de rezervă)
  - Inele metalice de breloc pentru montare
  - Smartphone-ul profesorului cu aplicația gratuită **NFC Tools** instalată și 1–2 brelocuri demonstrative în formă de lăbuță deja imprimate 3D pentru testarea live a scrierii și scanării NFC în timpul orei
- **Proiect Practic**:
  - **Brelocul Inteligent „Paw Tag” cu Cip NFC (pentru animalul de companie sau obiecte personale)**:
    - Modelarea în Tinkercad a unui breloc în formă de **urmă de labă de animal** (dimensiune optimizată `45 x 45 mm`, grosime de bază `3.2 mm`), prevăzut cu inel/urechiușă de prindere (`4.5 mm` orificiu).
    - Gravarea/reliefarea pe față a **numelui** animalului (ex. `REX`, `MIMI`) sau a **primei litere (inițiala)** — iar pentru elevii care nu au un animal de companie, brelocul devine un **tag anti-pierdere** pentru ghiozdan, chei sau bicicletă cu numele elevului!
    - Realizarea pe spatele brelocului a unui **lăcaș circular îngropat** (`26 mm` diametru, adâncime `0.7 mm`) în care se va lipi etanș stickerul rotund NFC de `25 mm`.
    - Programarea mesajului de recuperare pe cipul NFC prin aplicația **NFC Tools** (ex. *„Acesta este Rex! Dacă l-ați găsit, vă rog să sunați la numărul...”*).
- **Noutatea Zilei**:
  - Descoperim care au fost primele animale de companie ale omenirii (câinele domesticit acum 15.000 – 30.000 de ani și pisica acum ~9.500 – 10.000 de ani).
  - Aflăm când au început animalele să primească nume proprii (de la câinele regal *Abuwtiyuw* și pisica *Ta-Miu* în Egiptul Antic, până la romanul *Fido*).
  - Înțelegem de ce poartă animalele zgardă (istorie și siguranță) și cum sunt identificate oficial astăzi: medalionul extern (*Pet Tag*), **microcipul RFID** cât un bob de orez (cod de 15 cifre) și **Pașaportul pentru Animale** cu vaccinul antirabic obligatoriu.
  - Descoperim fizica tehnologiei **NFC (Near Field Communication)** — cum comunică cipul fără baterie prin inducție electromagnetică și regulile esențiale de siguranță a datelor personale.

### ❓ Întrebări Esențiale (Ce descoperim azi?)
1. **Care au fost primele animale de companie din istoria omenirii și de când există dovezi că oamenii le-au oferit nume proprii?**
2. **De ce au început animalele să poarte zgardă în Antichitate și ce roluri are aceasta astăzi?**
3. **Cum sunt identificate oficial animalele de companie în zilele noastre (Medalion, Microcip RFID de 15 cifre și Pașaport de animal)?**
4. **Cum funcționează un cip NFC fără baterie și cum putem scrie un mesaj de salvare care apare instant pe orice smartphone?**
5. **Cum proiectăm în Tinkercad un breloc în formă de labă cu lăcaș tehnic calibrat pentru un sticker NFC de 25 mm?**

### 🔗 Resurse & Linkuri Utile
- **Prezentare**: https://docs.google.com/presentation/d/1xUnPwjtqX8fhQ_-68-dFK1fdnCaS-j3Y7xwURAFcMfo/edit?usp=sharing
- **Kahoot**: https://create.kahoot.it/details/60346022-871b-4176-a524-d71d7c32e5c7
- **Alte Materiale**:
---

## 📋 2. Pregătirea Lecției (Checklist Profesor)

Înainte de începerea orei, profesorul pregătește laboratorul:

### Conturi & Software
- [ ] Deschide **Tinkercad Classroom** cu codul clasei activ.
- [ ] Deschide pe proiector prezentarea interactivă (`presentation_interactive.md`) și tab-ul cu jocul **Kahoot** (din `quiz.md`).
- [ ] Are pregătite și verificate în **Bambu Studio** plăcile cu fișierele **Tablourilor Puzzle 3D** modelate de elevi în Lecția 07 (verificat ca fanta de tăiere de 1 mm să separe clar toate cele 16 piese în fereastra *Preview*).
- [ ] A instalat pe smartphone aplicația gratuită **NFC Tools** (disponibilă pe Google Play și App Store) și a verificat că cititorul NFC al telefonului este activat.

### Imprimante 3D & Materiale Fizice
- [ ] **Imprimantele Bambu Lab A1**: Plăcile PEI sunt curățate impecabil cu alcool izopropilic (critic pentru aderența celor 16 piese mici ale puzzle-urilor din Lecția 07!).
- [ ] **Materiale NFC & Demonstrative**:
  - Stickere rotunde **NFC (NTAG213 / NTAG215, 25 mm)** — câte unul pentru fiecare elev;
  - 1–2 brelocuri în formă de lăbuță gata imprimate 3D cu sticker NFC lipit pe spate (unul deja programat cu mesajul lui „Rex” pentru demonstrația de la Etapa 1, și unul gol pentru testele copiilor la Etapa 5/6);
  - Inele metalice de breloc pentru prindere.

---

## ⏱️ 3. Desfășurarea Lecției Pas cu Pas (Tabel Minute-by-Minute)

| Minut | Etapă | Ce facem? (Pe scurt) |
| :---: | :--- | :--- |
| **00 – 10 min** | **1. Bun venit & Demonstrația Magică NFC cu „Rex”** | Primirea elevilor. Profesorul arată un breloc lăbuță, apropie telefonul de el și pe ecran apare instant mesajul lui „Rex”. Lansăm misterul zilei! |
| **10 – 20 min** | **2. Pornirea Imprimării Puzzle-urilor 3D din Lecția 07** | Lansăm la imprimat pe Bambu Lab A1 **tablourile puzzle 4x4** modelate în lecția trecută (distribuite optim pe imprimante pentru a fi gata până la minutul 110). |
| **20 – 40 min** | **3. Teorie: Primele Animale de Companie, Zgărzile, Microcipul, Pașaportul & NFC** | Parcurgem prezentarea interactivă (din `presentation_interactive.md`): câinii și pisicile din preistorie, primele nume din Egiptul Antic, identificarea modernă și fizica cipului NFC fără baterie. |
| **40 – 50 min** | **4. Pauză & Prezență** | 10 minute de mișcare, hidratare și discuții despre animalele de companie ale elevilor. Notarea prezenței. |
| **50 – 65 min** | **5. Demonstrația Profesorului (Tinkercad + Scriere Live în NFC Tools)** | Construirea pas cu pas a brelocului în formă de lăbuță (`45 x 45 mm`), crearea lăcașului de `26 mm` pe spate pentru stickerul NFC, textul/inițiala în relief + demonstrație live de programare a mesajului în **NFC Tools**. |
| **65 – 100 min** | **6. Atelier Practic: Proiectarea Brelocului „Paw Tag” & Testare NFC** | Elevii își modelează propriul tag pentru animal sau obiect personal; pe rând, vin la catedră pentru a testa scrierea și scanarea mesajului pe brelocul demo cu telefonul profesorului. |
| **100 – 110 min** | **7. Joc Kahoot: Animale de Companie, Identificare & Tehnologia NFC** | 10 întrebări interactive (din `quiz.md`) pentru fixarea noțiunilor istorice și tehnice despre identificarea animalelor și comunicația NFC. |
| **110 – 120 min** | **8. Colectarea Puzzle-urilor din Lecția 07, Stickerul NFC & Poză de Grup** | Ridicăm și testăm îmbinarea celor 16 piese ale tablourilor puzzle de pe imprimante, fiecare elev primește stickerul său NFC și facem fotografia oficială! |

---

## 📖 4. Elaborarea Detaliată a Fiecărei Etape

---

### Etapa 1: Bun Venit & Demonstrația Magică NFC cu „Rex” (Minutele 00 – 10)
- Elevii intră în laborator și se așază la stațiile de lucru.
- Profesorul ține în mână un breloc imprimat 3D în formă de lăbuță de câine și întreabă clasa:
  - *„Imaginați-vă că găsiți în parc un cățeluș simpatic sau un ghiozdan uitat pe o bancă. Cum aflați al cui este și pe cine să sunați dacă pe breloc scrie doar numele «Rex»? Priviti ce se întâmplă când ating acest breloc cu telefonul meu!”*
- Profesorul apropie smartphone-ul de spatele brelocului; instantaneu, fără nicio cameră foto și fără cod QR, pe ecranul telefonului apare mesajul:
  - *„Salut! Acesta este Rex. Dacă l-ați găsit pe Rex, vă rog să sunați la numărul 06X XXX XXX. Vă mulțumesc!”*
- Reacția copiilor creează entuziasm imediat. Profesorul întreabă cine are acasă un câine, o pisică, un papagal sau un hamster — și îi asigură pe cei fără animale că astăzi vor crea cel mai inteligent **breloc anti-pierdere pentru ghiozdan, chei sau bicicletă**!

---

### Etapa 2: Pornirea Imprimării Puzzle-urilor 3D din Lecția 07 (Minutele 10 – 20)
1. **Lansarea Producției pe Bambu Lab A1**:
   - Profesorul deschide **Bambu Studio**, unde **tablourile puzzle 4x4** proiectate de elevi în Lecția 07 sunt deja aranjate pe plăcile de imprimare PEI.
   - Profesorul verifică rapid în *Preview* ca fanta de 1 mm să separe clar toate cele 16 piese și distribuie tablourile egal pe toate imprimantele disponibile din laborator (profil `0.20 mm Standard`, 10–15% infill, fără brim pe interior ca să nu lipească piesele).
2. **Observarea Primului Strat**:
   - Elevii urmăresc cu atenție primele linii trasate de duză: cele 16 piese independente ale puzzle-ului încep să prindă contur pe placa încălzită la 60°C.

---

### Etapa 3: Teorie – Primele Animale, Zgarda, Medalionul Cool & Magia NFC (Minutele 20 – 40)

Profesorul parcurge cele 4 slide-uri scurte și vesele din `presentation_interactive.md` (invitând elevii să citească pe rând de pe tablă) și întreține o discuție caldă, relaxată:

#### 1. Primii prieteni necuvântători & primele nume (Teorie scurtă și bună)
- **Câinele și Pisica**: Primul animal care a devenit prietenul omului a fost **câinele** (acum peste 15.000 de ani, ajutând la pază și vânătoare), urmat de **pisică** (acum ~10.000 de ani, campioană la prins șoareci în depozitele de grâne).
- **Primele nume din istorie**: Acum peste 4.000 de ani, în **Egiptul Antic**, oamenii își iubeau atât de mult animalele încât le dădeau nume drăguțe (precum *„Pisicuța”*) și le confecționau primele **zgărzi** din piele. Iar în **Roma Antică**, cel mai celebru nume de câine era **Fido** (care înseamnă *„Credinciosul”* în latină — nume folosit până azi!).

#### 2. De ce poartă zgardă, Pașaportul de Animal & Microcipul
- **Zgarda și Medalionul**: Încă din vechime, oamenii prindeau de zgardă o mică plăcuță cu numele stăpânului pentru ca animalul pierdut să poată fi adus acasă.
- **Identificarea modernă**:
  - **Microcipul veterinar**: O capsulă minusculă cât un **bob de orez** pusă nedureros sub piele, care poate fi citită cu un scanner la clinică;
  - **Pașaportul de animal (`Pet Passport`)**: Documentul oficial cu poză, datele stăpânului și vaccinurile la zi, necesar atunci când un cățel sau o pisică călătorește cu avionul sau mașina peste graniță!
- **De ce rămâne medalionul esențial?** Un trecător obișnuit de pe stradă nu are un scanner veterinar la el — primul lucru pe care îl vede este **medalionul de la zgardă**!

#### 3. Cum arată un Medalion (`Pet Tag`) super cool?
- Profesorul discută cu elevii despre designul și estetica medalioanelor moderne:
  - **Forme simpatice**: Urmă de **lăbuță**, **os de cățel**, **inimioară**, **steluță** sau un **disc colorat** cu colțuri rotunjite (ca să nu zgârie animalul sau ghiozdanul).
  - **Cum îl facem să arate frumos și clar**: Culori vii și contrastante (de exemplu lăbuță albastră cu litere albe, sau neagră cu nume auriu), numele animalului sau **prima literă mare** în relief pe față.
  - **Pentru cei fără animale**: Același design arată super tare și ca **breloc inteligent anti-pierdere** pentru ghiozdan, chei sau bicicletă!

#### 4. Magia Cipului NFC — Și Noi Vom Face Asta Azi!
- **Cum funcționează NFC?** Este o tehnologie wireless fără baterie: când atingi brelocul cu telefonul, antena telefonului trimite o mică undă care trezește cipul pentru o secundă și citește mesajul!
- **Misiunea noastră**: **Noi tot vom face asta astăzi!** Vom modela în Tinkercad brelocul în formă de lăbuță și îi vom pune pe spate un **sticker rotund NFC** pe care vom scrie chiar noi mesajul de ajutor (*„Acesta este Rex, dacă l-ați găsit...”*).
- **Regula de aur a siguranței**: Pe un tag NFC pe care îl poate scana oricine nu scriem niciodată adresa exactă de acasă — punem doar numele și telefonul unui părinte!

---

### Etapa 4: Pauză Scurtă & Prezență (Minutele 40 – 50)
- Pauză de 10 minute pentru relaxare și hidratare.
- Profesorul notează prezența în catalog și verifică progresul imprimantelor Bambu Lab A1 (dacă piesele puzzle-urilor aderă impecabil pe patul PEI).

---

### Etapa 5: Demonstrația Profesorului (Tinkercad + Scriere Live în NFC Tools) (Minutele 50 – 65)

Profesorul demonstrează pe proiector modelarea brelocului în Tinkercad și apoi face demonstrația live de programare a cipului NFC:

#### Partea A: Modelarea Brelocului „Urmă de Labă” cu Lăcaș NFC în Tinkercad
1. **Corpul Central al Lăbuței (Pernița Principală)**:
   - Tragem pe planul de lucru forma **Heart** (Inimă — întoarsă invers arată exact ca pernița trilobată a unei labe!) sau combinăm 1 cilindru central turtit (`32 x 26 mm`) cu 2 cercuri laterale.
   - Îi setăm dimensiunea perniței principale la aproximativ **34 x 30 mm** și înălțimea (grosimea) la **3.2 mm**.
   - *(Verificare critică)*: Pernița trebuie să aibă diametrul de minimum **30 mm** astfel încât stickerul NFC rotund de **25 mm** să încapă confortabil pe spate fără să iasă în afară!
2. **Cele 4 Degete ale Lăbuței**:
   - Tragem o formă `Cylinder` (cu `Sides = 64`), o ovalizăm la dimensiunea **10 x 13 mm** și înălțimea **3.2 mm**.
   - O duplicăm cu **Ctrl + D** de 3 ori pentru a obține cele 4 degete, pe care le aranjăm în arc de cerc deasupra perniței principale (lăsând o mică suprapunere de 1–2 mm sau conectându-le printr-o punte discretă, ori așezate pe o bază unită dacă vrem să fie conectate ferm ca un singur breloc!).
   - *Truc de rezistență mecanică*: Pentru ca degetele să nu se rupă ușor dacă brelocul atârnă la zgardă sau la ghiozdan, recomandăm fie suprapunerea parțială a degetelor peste perniță (sau o placă subțire de legătură de **1.2 mm** dedesubt cu contur rotunjit al labei, astfel încât toate cele 4 degete să stea solide pe aceeași bază!).
3. **Urechiușa de Prindere pentru Inel**:
   - Adăugăm un mic inel `Tube` sau un cilindru plin (`10 x 10 x 3.2 mm`) lipit în partea de sus a lăbuței (sau între cele două degete centrale) și decupăm în centrul lui o gaură cu un `Cylinder (Hole)` de **4.5 mm** diametru.
4. **Lăcașul Îngropat pe Spate pentru Stickerul NFC (`Recessed Pocket`)**:
   - Pe spatele brelocului (la cota `Z = 0`), centrăm pe zona perniței un cilindru transparent **`Cylinder (Hole)`** cu dimensiunile: **26 mm x 26 mm** (toleranță `+1 mm` față de stickerul de 25 mm!) și înălțimea de **0.7 mm**.
   - *Atenție*: Verificăm să rămână cel puțin **2.5 mm** de plastic solid deasupra găurii (3.2 mm total minus 0.7 mm adâncime = 2.5 mm grosime sigură, fără să găurim brelocul pe partea cealaltă!).
   - Selectăm tot corpul lăbuței + gaura inelului + lăcașul NFC de pe spate și apăsăm **Group (Ctrl + G)**.
5. **Numele sau Inițiala în Relief pe Față**:
   - Folosind unealta **`Text`**, scriem **numele animalului** (ex. `REX`, `LUNA`, `BARSIC`) sau **prima literă mare** a numelui (ex. `R`) sau numele propriu al elevului (pentru tag-ul de ghiozdan/chei).
   - Așezăm textul pe centrul perniței principale, îi setăm înălțimea totală la **4.7 mm** (astfel încât literele să iasă în relief cu **1.5 mm** deasupra bazei de 3.2 mm) și îl centrăm cu **Align (L)**.
   - Selectăm tot ansamblul și apăsăm **Group (Ctrl + G)** (sau păstrăm textul de altă culoare dacă vom printa multicolor pe straturi cu AMS lite!).

#### Partea B: Demonstrație Live de Programare a Cipului NFC (`NFC Tools`)
Profesorul proiectează sau arată grupului pas cu pas cum se scrie informația pe stickerul rotund de 25 mm lipit pe brelocul demonstrativ:
1. Deschidem aplicația **NFC Tools** pe smartphone și accesăm fila **Write** (*Scrie*).
2. Apăsăm **Add a record** (*Adaugă o înregistrare*) -> alegem **Text** (sau demonstrăm și varianta *Telephone* / *URL*).
3. Tastăm mesajul clar și politicos:  
   *„Acesta este Rex. Dacă l-ați găsit pe Rex, vă rog să sunați la numărul 06X XXX XXX. Vă mulțumesc!”*
4. Apăsăm **OK**, apoi apăsăm butonul **Write** și apropiem partea de sus/spate a telefonului (unde se află antena NFC) de stickerul rotund lipit pe spatele brelocului.
5. În mai puțin de o secundă apare bifa verde **„Write complete!”**.
6. Testăm imediat apropiind telefonul în modul normal de citire: mesajul apare instantaneu pe ecran!

---

### Etapa 6: Atelier Practic – Proiectarea Brelocului „Paw Tag” & Testare NFC (Minutele 65 – 100)
- Elevii deschid un proiect nou în **Tinkercad Classroom** denumit: `Nume_PetTag_NFC`.
- Fiecare elev alege pentru cine construiește tag-ul:
  - **Varianta 1 (Pentru animalul de companie)**: Breloc labă cu numele sau inițiala câinelui/pisicii de acasă;
  - **Varianta 2 (Tag Anti-Pierdere pentru un obiect valoros)**: Breloc labă pentru **ghiozdan, chei, trusă de sport sau bicicletă**, cu numele sau inițiala elevului.
- Elevii parcurg pașii de modelare: baza solidă în formă de labă (`~45 x 45 x 3.2 mm`), orificiul de prindere (`4.5 mm`), lăcașul circular de `26 x 26 x 0.7 mm` pe spate pentru stickerul de `25 mm` și textul/inițiala în relief (`+1.5 mm`).
- **Stația Live de Testare NFC la Catedră**:
  - În timp ce clasa modelează, profesorul cheamă pe rând câte 1–2 elevi la catedră ca să își aleagă mesajul pe brelocul demo cu sticker rescriptibil și să îl scrie și scaneze personal cu aplicația **NFC Tools** (folosind un mesaj de test, fără date personale sensibile).

---

### Etapa 7: Joc Kahoot – Animale de Companie, Identificare & Tehnologia NFC (Minutele 100 – 110)
- Elevii intră pe platforma **Kahoot** folosind codul PIN afișat pe proiector.
- Se parcurg cele 10 întrebări teoretice din fișierul `quiz.md`, consolidând istoria domesticirii câinilor și pisicilor, primele nume din Egiptul Antic, rolul zgărzilor, microcipul RFID, pașaportul veterinar și principiile fără baterie ale tehnologiei NFC.

---

### Etapa 8: Colectarea Puzzle-urilor din Lecția 07, Stickerul NFC & Poză de Grup (Minutele 110 – 120)
- Imprimantele **Bambu Lab A1** finalizează **Tablourile Puzzle 3D** modelate în Lecția 07.
- După răcirea plăcilor PEI, elevii își ridică cu entuziasm tablourile, desprind cu grijă cele 16 piese și le reasamblează pentru a testa îmbinările autoblocante!
- Fiecare elev primește câte un **sticker rotund NFC de 25 mm** (pe care îl poate păstra în siguranță până la lecția următoare când își va ridica brelocul lăbuță imprimat 3D, sau îl programează de acasă împreună cu părinții cu numărul real de telefon!).
- Profesorul colectează fișierele noilor brelocuri **Pet Tag NFC** pentru felierea în Bambu Studio și adună grupa la tablă pentru fotografia oficială de final!
