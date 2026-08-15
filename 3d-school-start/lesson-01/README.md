# Lecția 01: Introducere în Lumea Imprimării 3D și Prima Noastră Creație în Tinkercad

---

## 📌 Informații Generale despre Lecție
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore pline de descoperiri)
- **Modulul**: Modulul 1 – *Bazele Modelării 3D și Tehnologiei FDM* (Lecția 1 din 9)
- **Proiect Practic**: Proiectarea unui breloc 3D personalizat cu nume
- **Obiect Fizic**: Breloc imprimat 3D din plastic ecologic PLA (colectat la începutul Lecției 02)

---

## ❓ Întrebări Esențiale (Obiectivele de Învățare)

Această prima lecție este concepută ca o călătorie fascinantă de la idee la obiect real. Pe parcursul celor 120 de minute, vom explora și vom răspunde în detaliu la 5 întrebări fundamentale care definesc întreaga industrie a imprimării 3D:

1. **Când au fost inventate imprimantele 3D și de la ce idee a pornit totul?**
2. **Ce tehnologii și tipuri de imprimante 3D există în lumea modernă?**
3. **Care sunt cele mai reprezentative și celebre modele de imprimante 3D din istorie?**
4. **Cum transformă o imprimantă 3D FDM un desen de pe ecran într-un obiect fizic real?**
5. **Cum alegem materialele potrivite (filamentele) și de ce PLA este alegerea ideală pentru noi?**

---

## 📖 Povestea Tehnologiei 3D: Ghid Elaborat și Detaliat

### 1. Nașterea Imprimării 3D: De la o idee îndrăzneață la o revoluție globală
Până nu demult, pentru a crea un obiect din plastic, fabricile trebuiau să construiască matrițe enorme din oțel, scumpe și greu de modificat. Totul s-a schimbat în anul **1983**, când un inventator american pe nume **Chuck Hull** s-a gândit la o metodă complet nouă. El lucra într-o fabrică unde acoperea mesele cu straturi subțiri de rășină lichidă care se întăreau la lumină ultravioletă (UV).

Chuck s-a întrebat: *„Ce-ar fi dacă am suprapune mii de astfel de straturi microscopice, unul peste altul, ghidate de un calculator?”*. În acea noapte, într-un mic laborator, el a creat prima tehnologie de imprimare 3D din lume, numită **Stereolitografie (SLA)**. Primul obiect imprimat vreodată a fost o mică cupă din plastic transparent folosită în medicină pentru spălarea ochilor. În 1986, el a fondat compania *3D Systems*, punând bazele unei industrii care astăzi creează de la piese de rachete spațiale până la proteze medicale și jucării!

---

### 2. Cum Clasificăm Imprimantele 3D? Cele 3 Tehnologii Principale
Deși există zeci de variante industriale, imprimarea 3D se împarte în trei mari familii tehnologice:

1. **FDM (Fused Deposition Modeling / Depunere de Filament Topit)**:
   - *Cum funcționează?* Este cea mai răspândită tehnologie din școli și case. Imprimanta folosește un fir lung din plastic (numit filament) înfășurat pe o bobină. Acest fir este tras într-un cap de imprimare fierbinte (extrudor), topit la 200°C și împins printr-o duză foarte fină, depunând plasticul strat peste strat pe o placă.
   - *Analogie*: Imaginează-ți un stilou de lipici fierbinte atașat de mâna unui robot ultra-precis care construiește o casă din straturi microscopice de lipici.

2. **SLA (Stereolithography / Imprimarea cu Rășină Lichidă)**:
   - *Cum funcționează?* În loc de filament solid, se folosește o cuvă plină cu rășină lichidă. Un fascicul laser sau un ecran digital trimite lumină UV din subțire în subțire, solidarizând rășina instantaneu.
   - *Rezultat*: Obiecte incredibil de netede și detaliate, folosite intens în stomatologie și la fabricarea miniaturilor pentru jocuri.

3. **SLS (Selective Laser Sintering / Sinterizare cu Laser)**:
   - *Cum funcționează?* Un laser extrem de puternic topește local o pulbere fină de plastic sau metal. Este o tehnologie folosită în aviație și medicină pentru a crea piese extrem de rezistente, fără a avea nevoie de structuri de suport.

---

### 3. Evoluția Imprimantelor 3D: Modelele care au Schimbat Lumea
Pentru a înțelege unde suntem astăzi, este fascinant să privim cum au evoluat aceste mașinării:

* **SLA-1 (1987)**: „Bunicul” imprimantelor 3D. O mașinărie uriașă, de mărimea unui dulap mare, extrem de scumpă, rezervată doar laboratoarelor secrete de cercetare.
* **Proiectul RepRap (2005)**: Creat de profesorul Adrian Bowyer în Anglia, acest proiect open-source a avut o idee genială: *o imprimantă 3D care își poate imprima singură piesele de schimb!* Această mișcare a democratizat imprimarea 3D și a permis oricui să își construiască propria imprimantă acasă.
* **Prusa i3 (2012)**: Proiectată de Josef Prusa, a devenit cel mai copiat și iubit design de imprimantă FDM din lume datorită simplității și fiabilității sale.
* **Ender 3 (2018)**: Imprimanta care a adus modelarea 3D în camerele copiilor și pasionaților din întreaga lume, fiind accesibilă ca preț și ușor de modificat.
* **Bambu Lab (Anii 2020)**: Noua generație de imprimante inteligente, echipate cu camere video, senzori laser și viteze de 5 ori mai mari, capabile să schimbe culorile automat în timpul imprimării.

---

### 4. Anatomia și Mecanica unei Imprimante 3D FDM
Cum reușește o imprimantă să se miște în spațiu cu o precizie de sutimi de milimetru? Răspunsul constă în coordonatele matematice 3D:

* **Axa X (Stânga - Dreapta)**: Capul de imprimare se deplasează orizontal pe șine metalice.
* **Axa Y (Înainte - Înapoi)**: Placa de imprimare (patul cald) se mișcă față-spate.
* **Axa Z (Sus - Jos)**: Tija filetată ridică extrem de puțin capul de imprimare după finalizarea fiecărui strat (de obicei cu doar 0.2 mm).
* **Extrudorul & Hotend-ul**: Extrudorul este „motorul” care prinde firul de plastic și îl împinge cu forță în *Hotend* (zona fierbinte). Duza are un orificiu minuscul (de regulă 0.4 mm) prin care plasticul curge ca un fir de ață topit.

---

### 5. Chimia Materialelor: De ce PLA este Supereroul Nostru?
Când alegem ce plastic să folosim, trebuie să ne gândim la siguranță, mediu și ușurința de imprimare:

* **PLA (Acid Polilactic)**: **Materialul ideal pentru elevi!** Spre deosebire de plasticele obișnuite obținute din petrol, PLA este un bioplastic realizat din amidon de porumb sau trestie de zahăr. Când este topit, miroase plăcut, similar cu napolitanele sau floricelele de porumb. Este non-toxic, biodegradabil în condiții industriale și nu emană gaze nocive.
* **PETG**: Plasticul din care sunt făcute sticlele de apă. Este mai flexibil și rezistent la apă, excelent pentru obiecte folosite afară.
* **TPU**: Un plastic cauciucat și flexibil. Dacă vrei să printezi o husă de telefon sau o roată moale, TPU este alegerea potrivită.
* **ABS**: Plasticul din care sunt făcute piesele LEGO. Este foarte dur, dar necesită temperaturi înalte și o imprimantă complet închisă deoarece emană mirosuri înțepătoare când se topește.

---

## ⏱️ Desfășurarea Lecției Pas cu Pas (Planul de 120 Minute)

| Minut | Etapă | Activitate Detaliată & Ghid pentru Profesor |
| :--- | :--- | :--- |
| **00 - 10 min** | **1. Bun Venit & Introducere** | Primirea elevilor. Profesorul explică comunitatea 3D și faptul că obiectele proiectate la fiecare lecție vor fi colectate proaspăt imprimate la începutul lecției următoare. |
| **10 - 20 min** | **2. Pregătirea Imprimantei Demo** | Profesorul pornește imprimanta 3D FDM din clasă, arată cum se introduce filamentul PLA și cum se încălzește duza la 200°C. Elevii observă îndeaproape extrudarea plasticului. |
| **20 - 45 min** | **3. Prezentare & Discuție Interactivă** | Parcurgerea prezentării vizuale. Se discută despre Chuck Hull, cele 3 tehnologii (FDM, SLA, SLS), axele X, Y, Z și materialul PLA. Elevii adresează întrebări și ating mostre de plastice. |
| **45 - 55 min** | **4. Pauză & Prezență** | Pauză de 10 minute pentru hidratare și relaxare. Verificarea și strigarea prezenței elevilor. |
| **55 - 70 min** | **5. Demonstrația Live în Tinkercad** | Profesorul proiectează ecranul pe videoproiector și construiește pas cu pas brelocul personalizat, explicând fiecare comandă de navigare și modificare. |
| **70 - 100 min** | **6. Lucru Practic Individual** | Elevii intră pe Tinkercad în conturile lor de clasă și își proiectează propriul breloc. Profesorul circulă prin clasă oferind asistență individuală. |
| **100 - 110 min** | **7. Joc Quiz Interactiv** | Joc rapid de verificare a cunoștințelor (întrebări grilă despre 1983, FDM, PLA, axe și comenzi Tinkercad). |
| **110 - 120 min** | **8. Încheiere & Poza de Grup** | Salvarea modelelor în format STL pentru imprimare. Fotografie de grup cu clasa pregătită pentru marele start 3D! |

---

## 💻 Ghid Detaliat pentru Proiectul Practic: Brelocul Personalizat în Tinkercad

### Pasul 1: Autentificarea în Clasa Virtuală
1. Deschideți browser-ul Google Chrome și accesați `www.tinkercad.com`.
2. Apăsați pe butonul verde **Join Class** (Alătură-te clasei).
3. Introduceți codul clasei oferit de profesor pe tablă și nickname-ul vostru individual.

### Pasul 2: Crearea Spațiului de Lucru
1. Din panoul principal, apăsați butonul **Create > 3D Design**.
2. Redenumiți proiectul în colțul din stânga sus: schimbați numele aleatoriu generat de Tinkercad în `Breloc_NumeleTau`.

### Pasul 3: Construirea Bazei Brelocului
1. Din panoul cu forme geometrice din dreapta (*Basic Shapes*), trageți un **Box (Cub roșu)** pe spațiul de lucru (*Workplane*).
2. Dați click pe unul dintre colțurile albe ale bazei și schimbați dimensiunile:
   - **Lungime (X)**: `50 mm`
   - **Lățime (Y)**: `20 mm`
   - **Înălțime (Z)**: `3 mm` (click pe pătratul alb de sus).

### Pasul 4: Crearea Găurii pentru Inelul de Breloc
1. Trageți o formă de tip **Cylinder (Hole)** - cel cilindric transparent cu dungi gri.
2. Modificați dimensiunile cilindrului la `6 mm x 6 mm` înălțime `5 mm`.
3. Plasați cilindrul la capătul din stânga al bazei dreptunghiulare, asigurându-vă că trece complet prin placă.

### Pasul 5: Adăugarea Textului Personalizat
1. Din panoul din dreapta, selectați forma **Text**.
2. În fereastra de opțiuni a textului, scrieți prenumele vostru (ex: `ALEX` sau `MARIA`).
3. Redimensionați textul pentru a se potrivi frumos pe plăcuță și setați înălțimea acestuia pe axa Z la `5 mm` (astfel încât numele să iasă în relief cu 2 mm deasupra bazei).

### Pasul 6: Îmbinarea și Gruparea Finală (`Ctrl + G`)
1. Selectați toate obiectele de pe ecran trăgând un dreptunghi de selecție cu mouse-ul peste ele (sau apăsați `Ctrl + A`).
2. Apăsați butonul **Group** din bara de sus (sau combinația de taste `Ctrl + G`).
3. Obiectul se va unifica! Gaura va perfora placa, iar textul va deveni o singură piesă solidă alături de bază.

---

## 🏆 Rezultatul Final și Pregătirea Imprimării
Fiecare elev va obține un fișier 3D perfect optimizat pentru imprimare. Profesorul va descărca fișierele STL, le va introduce în softul de slicing (cum ar fi PrusaSlicer sau Bambu Studio) și va lansa imprimarea pe parcursul zilei. La **Lecția 02**, prima etapă va fi înmânarea festivă a brelocurilor fizice realizate!
