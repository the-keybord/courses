# Lecția 02: Arta Pixelilor 3D – Imprimarea Multicolor prin Schimbare de Strat (Layer Swap)

---

## 📌 Informații Generale despre Lecție
- **Grupa de Vârstă**: 10 – 12 ani
- **Durată Totală**: 120 minute (2 ore pline de creativitate și inginerie)
- **Modulul**: Modulul 1 – *Bazele Modelării 3D și Tehnologiei FDM* (Lecția 2)
- **Proiect Practic**: Construirea unei palete de blocuri pixel cu înălțimi diferențiate și realizarea unui tablou **Multicolor Pixel Art** personalizat folosind culorile Negru, Roșu și Alb.
- **Flux Imprimare 3D**: 
  1. *Pornire la începutul Lecției 02 (Etapa 2)*: Imprimanta 3D este pregătită și pornită cu fișierele brelocurilor cadou create în Lecția 01. Acestea se imprimă pe parcursul celor 120 de minute.
  2. *Lucru în Lecția 02 (Etapa 6)*: Elevii proiectează tablourile Pixel Art (exportate ca fișiere `.STL` pentru a fi pregătite și imprimate la Lecția 03).
  3. *Colectare la finalul Lecției 02 (Etapa 8)*: Imprimarea brelocurilor cadou din Lecția 01 se încheie, iar elevii își ridică festiv obiectele fizice terminate!

---

## ❓ Întrebări Esențiale (Obiectivele de Învățare)

Această lecție face trecerea de la modele mono-color simple la fascinanta lume a obiectelor 3D formate din mai multe culori. Pe parcursul celor 120 de minute, vom investiga și vom răspunde la 6 întrebări cheie:

1. **Ce se întâmplă dacă schimbi filamentul în mijlocul imprimării 3D?**
2. **Cum poate o imprimantă 3D cu un singur cap să imprime multicolor (tehnica *Layer Swap / Pause at Height*)?**
3. **De ce un obiect complet plat nu poate fi imprimat multicolor prin schimbarea filamentului și de ce avem nevoie de nivele de înălțime diferite?**
4. **Ce sunt pixelii și unde îi găsim în viața de zi cu zi?**
5. **Ce este Pixel Art și cum a evoluat acest stil de la jocurile arcade retro pe 8 biți până la Minecraft?**
6. **Ce alte stiluri artistice similare cu Pixel Art există în istorie și în designul modern?**

---

## 📖 Povestea Tehnologiei și a Pixelilor: Ghid Elaborat și Detaliat

### 1. Ce sunt Pixelii și Unde îi Găsim? De la Ecrane la Imagini Digitale
Când te uiți la ecranul unui telefon mobil, al unei tablete, al unui televizor sau al unui monitor de calculator, vezi imagini fluide, personaje din jocuri și videoclipuri pline de viață. Însă, dacă am lua o lupă extrem de puternică și ne-am uita foarte aproape de ecran, am descoperi un secret uimitor: **întreaga imagine este compusă din milioane de pătrățele minuscule colorate!**

Cuvântul **Pixel** vine din limba engleză, fiind o prescurtare de la *„Picture Element”* (element de imagine). Pixelul este cea mai mică unitate constitutivă a unei imagini digitale. Fiecare pixel poate aprinde o singură culoare la un moment dat. Atunci când mii sau milioane de pixeli sunt așezați unul lângă altul pe o grilă bidimensională, creierul nostru unește toate aceste puncte și percepe o imagine completă (un chip, un peisaj sau un obiect).

---

### 2. Ce este Pixel Art și cum a evoluat acest Stil Retro?
În anii 1970 și 1980, când au apărut primele jocuri video pe procesoare pe 8 biți și 16 biți (precum consolele *Arcade*, *NES*, *Game Boy* sau *Commodore 64*), calculatoarele erau extrem de slabe. Ele nu aveau suficientă memorie pentru a afișa grafică 3D complexă sau imagini de înaltă rezoluție. 

Artiștii din industria jocurilor au fost nevoiți să devină extrem de ingenioși. Ei trebuiau să deseneze caractere memorabile — precum **Super Mario**, **PAC-MAN**, **Space Invaders** sau **Zelda** — folosind doar câteva zeci de pătrățele pe o grilă mică (de exemplu, 8x8 sau 16x16 pixeli). Fiecare pixel trebuia plasat cu o precizie chirurgicală!

Deși astăzi calculatoarele pot reda grafică fotorealistică ultra-complexă, stilul **Pixel Art** nu a dispărut! Din contră, a devenit un stil artistic iubit și venerat la nivel mondial. Jocuri fantastice moderne precum *Minecraft*, *Terraria*, *Stardew Valley* sau *Fez* îmbrățișează estetica pixelată, dovedind că simplitatea și nostalgia au un farmec atemporal.

---

### 3. Stiluri Artistice Înrudite cu Pixel Art
Pixel Art nu a apărut din senin în era digitală! Oamenii au folosit concepte similare de mii de ani:
- **Mozaicul Antic**: În Roma și Grecia Antică, artiștii construiau piese parietale sau pardoseli spectaculoase lipind mii de mici bucățele pătrate de piatră colorată sau sticlă (*tesserae*).
- **Pointilismul**: Un curent pictural din secolul al XIX-lea (reprezentat de pictori precum Georges Seurat), unde tablourile erau realizate exclusiv prin aplicarea de mici puncte separate de vopsea pe pânză.
- **Mărgelele Hama / Perler Beads**: Tubulețe mici din plastic așezate pe plăci cu pini și lipite ulterior cu fierul de călcat, transformând ideile pixelate în obiecte fizice.
- **Cărămizile LEGO**: Proiectele de tip *LEGO Art* unde piese cilindrice de 1x1 sunt aranjate pe plăci pentru a crea portrete pixelate.
- **Arta Voxel (3D Pixel Art)**: Trecerea de la pătratul 2D la cubul 3D. În loc de un pixel plat, folosim un cub numit **Voxel** (*Volume Pixel*), la fel ca în lumea Minecraft!

---

### 4. Magia Imprimării Multicolor: Cum Schimbăm Filament în Mijlocul Imprimării?
Majoritatea imprimantelor 3D FDM din școli au un singur cap de imprimare (o singură duză). La prima vedere, ai putea crede că o astfel de imprimantă poate printa doar obiecte de o singură culoare. Dar ce se întâmplă dacă schimbăm firul de plastic în timp ce imprimanta lucrează?

Tehnica se numește **Layer Color Change** (sau *Pause at Height / M600*):
1. Imprimanta începe să depună strat peste strat folosind primul filament (de exemplu, **Negru**).
2. Când ajunge la o înălțime Z stabilită în softul de Slicing (de exemplu, la z = 2.0 mm), imprimanta oprește automat extrudarea, mută capul de imprimare într-un colț și emite un semnal sonor (*Pauză*).
3. Operatorul scoate filamentul negru, introduce filamentul de a doua culoare (**Roșu**), curăță duza și apasă pe butonul de continuare (*Resume*).
4. Imprimanta continuă să printeze straturile următoare peste cele existente, folosind noua culoare!
5. La o altă înălțime (de exemplu, z = 3.0 mm), procesul se repetă pentru a treia culoare (**Alb**).

---

### 5. De ce un Obiect Complet Plat NU Poate Fi Multicolor prin Schimbare de Strat?
Aceasta este o regulă esențială a ingineriei 3D pe care fiecare elev trebuie să o înțeleagă:

Deoarece imprimanta depune plasticul **strat peste strat pe axa Z (înălțime)**, o schimbare de filament afectează **întregul strat orizontal** depus la acea înălțime!
- Dacă am avea un obiect complet plat (de exemplu, o placă subțire de 2mm înălțime) și am încerca să schimbăm filamentul la jumătate, jumătatea de jos a plăcii va fi neagră, iar jumătatea de sus va fi roșie. **Nu am putea avea zone roșii și zone albe pe aceeași suprafață plată!**
- **Soluția Ingineriască – Treptele de Înălțime (Offset de 1mm)**: Pentru ca anumite elemente ale desenului să apară doar într-o anumită culoare, ele trebuie construite **mai înalte pe axa Z**!
  - **Baza și Conturul (Negru)**: Se opresc la înălțimea de `2.0 mm`.
  - **Elementele Roșii**: Se construiesc până la înălțimea de `3.0 mm` (depășesc baza neagră cu 1mm). Când imprimanta schimbă filamentul la 2.0mm în Roșu, plasticul roșu se va depune **doar în zonele unde obiectul continuă să urce spre 3mm**!
  - **Elementele Albe**: Se construiesc până la înălțimea de `4.0 mm` (depășesc zona roșie cu încă 1mm). Când schimbăm la 3.0mm în Alb, plasticul alb se va depune **exclusiv pe vârfurile albe**!

---

### 6. Regula Paletei Comune de Culori (Negru, Roșu, Alb)
De ce folosim toți exact aceleași culori și aceleași trepte de înălțime?
Dacă fiecare elev ar folosi înălțimi aleatorii și culori diferite, profesorul ar trebui să ruleze 15 șarje separate de imprimare! 

Prin respectarea unei **Palete Comune cu Matematică Identică a Înălțimilor (2mm / 3mm / 4mm)** și a culorilor **Negru, Roșu și Alb**, toate proiectele celor 15 copii pot fi așezate împreună pe placa de imprimare. Imprimanta va executa o singură schimbare la 2.0mm și o singură schimbare la 3.0mm, iar la final toți copiii vor primi tablouri Pixel Art spectaculoase, unice ca design, dar perfect imprimate multicolor!

---

## ⏱️ Desfășurarea Lecției Pas cu Pas (Planul de 120 Minute)

| Minut | Etapă | Activitate Detaliată & Ghid pentru Profesor |
| :--- | :--- | :--- |
| **00 - 10 min** | **1. Bun Venit & Introducere** | Primirea elevilor. Profesorul explică planul lecției (imprimarea brelocurilor cadou din Lecția 01 pe parcursul celor 2 ore și descoperirea tehnicii de imprimare multicolor). |
| **10 - 20 min** | **2. Pregătirea și Pornirea Imprimării 3D (Brelocurile din Lecția 01)** | Profesorul încărcă fișierele `.STL` ale brelocurilor cadou realizate în Lecția 01, pregătește imprimanta 3D FDM și dă start imprimării. Imprimanta va funcționa pe tot parcursul lecției! |
| **20 - 45 min** | **3. Prezentare: Pixeli, Pixel Art & Matematica Înălțimilor** | Parcurgerea prezentării. Se discută despre ecrane, pixeli, istoria jocurilor 8-bit, mozaicuri și de ce avem nevoie de trepte de înălțime de 1mm pentru schimbarea culorilor (Negru, Roșu, Alb). |
| **45 - 55 min** | **4. Pauză & Prezență** | Pauză de 10 minute pentru hidratare și socializare. Verificarea și strigarea prezenței. |
| **55 - 70 min** | **5. Demonstrația Live în Tinkercad: Construirea Paletei** | Profesorul arată cum se creează blocurile pătrate de 5x5mm (sau 10x10mm) și cum se setează înălțimile pe Z (`2mm` pentru Negru, `3mm` pentru Roșu, `4mm` pentru Alb). |
| **70 - 100 min** | **6. Lucru Individual: Tabloul Pixel Art Personalizat** | Elevii își construiesc propria paletă, apoi multiplică blocurile (`Ctrl + D`) pentru a compune un model retro la alegere. Fișierele sunt salvate pentru imprimarea multicolor de la Lecția 03! |
| **100 - 110 min** | **7. Joc Quiz Interactiv** | Joc rapid de întrebări și răspunsuri pentru fixarea cunoștințelor despre pixeli, axa Z, trepte de 1mm și comanda M600 / Layer Swap. |
| **110 - 120 min** | **8. Colectare Brelocuri din Lecția 01 & Poză de Grup** | Imprimanta își încheie treaba cu brelocurile cadou din Lecția 01! Elevii își ridică festiv produsele finite proaspăt imprimate și fac poza de grup! |

---

## 💻 Ghid Detaliat pentru Proiectul Practic: Tabloul Pixel Art în Tinkercad

### Pasul 1: Pregătirea Mediului de Lucru și a Grilei
1. Intrați pe `www.tinkercad.com`, autentificați-vă în Clasa Virtuală și apăsați **Create > 3D Design**.
2. Redenumiți proiectul în colțul din stânga sus: `PixelArt_NumeleTau`.
3. Setați grila de lucru (*Snap Grid*) în colțul din dreapta jos la **1 mm** (pentru ca blocurile să se lipească perfect fără goluri).

---

### Pasul 2: Construirea Paletei Standardizate de Culori (Offset de 1mm)
Înainte de a desena tabloul, construim în colțul spațiului de lucru cele 3 „călimări de vopsea” (blocuri pixel de bază):

1. **Pixelul Negru (Baza / Fundalul)**:
   - Trageți un **Box (Cub)** pe spațiul de lucru.
   - Setați dimensiunile bazei: `X = 5 mm`, `Y = 5 mm` *(sau 10mm x 10mm dacă se dorește un tablou mai mare)*.
   - Setați înălțimea pe axa Z: **`Z = 2 mm`**.
   - Schimbați culoarea blocului în **Negru** din meniul *Solid*.

2. **Pixelul Roșu (Stratul 2)**:
   - Trageți un al doilea cub pe spațiul de lucru.
   - Setați dimensiunile bazei: `X = 5 mm`, `Y = 5 mm`.
   - Setați înălțimea pe axa Z: **`Z = 3 mm`** *(cu 1mm mai înalt decât cel negru!)*.
   - Schimbați culoarea în **Roșu**.

3. **Pixelul Alb (Stratul 3 / Vârfuri)**:
   - Trageți al treilea cub.
   - Setați dimensiunile bazei: `X = 5 mm`, `Y = 5 mm`.
   - Setați înălțimea pe axa Z: **`Z = 4 mm`** *(cu încă 1mm mai înalt decât cel roșu!)*.
   - Schimbați culoarea în **Alb**.

> 💡 **Explicație Tehnică**: Toate blocurile stau pe podea (`Z = 0`), dar au înălțimi diferite (2mm, 3mm, 4mm). Când imprimanta toarnă primul strat de Negru de la 0 la 2mm, va acoperi baze pentru TOATE blocurile. Când schimbăm la Roșu la 2.0mm, doar blocurile de 3mm și 4mm vor primi plastic roșu. Când schimbăm la Alb la 3.0mm, doar blocurile de 4mm vor primi ultimul strat alb!

---

### Pasul 3: Alegerea și Schițarea Ideii (Negru, Roșu, Alb)
Elevii își aleg un subiect potrivit pentru paleta tricoloră. Iată câteva idei populare și inspiraționale din care elevii pot alege:

- **❤️ Inimă Retro 8-Bit (Minecraft / Zelda)**:
  - *Negru (`Z = 2mm`)*: Conturul exterior de pixeli.
  - *Roșu (`Z = 3mm`)*: Umplutura principală a inimii.
  - *Alb (`Z = 4mm`)*: Punctul de strălucire (highlight) din colțul stânga sus.

- **🍄 Ciupercă Super Mario (Power-Up Mushroom)**:
  - *Negru (`Z = 2mm`)*: Contur pălărie, ochi și bază.
  - *Roșu (`Z = 3mm`)*: Pălăria ciupercii.
  - *Alb (`Z = 4mm`)*: Bulinele albe de pe pălărie și fețița ciupercii.

- **⚾ Pokéball Classic (Pokémon)**:
  - *Negru (`Z = 2mm`)*: Conturul circular exterior, banda centrală și inelul butonului.
  - *Roșu (`Z = 3mm`)*: Semisfera superioară.
  - *Alb (`Z = 4mm`)*: Semisfera inferioară și centrul butonului.

- **🕷️ Mască Spider-Man / Pixel Shield**:
  - *Negru (`Z = 2mm`)*: Conturul măștii și liniile de pânză.
  - *Roșu (`Z = 3mm`)*: Masca principală.
  - *Alb (`Z = 4mm`)*: Ochii mari retro.

- **🧪 Pțiune Magică Retro**:
  - *Negru (`Z = 2mm`)*: Conturul sticlei alchimice.
  - *Roșu (`Z = 3mm`)*: Lichidul magic din interior.
  - *Alb (`Z = 4mm`)*: Dopul de plută și bula de strălucire.

- **👾 Space Invader / Retro Arcade Alien**:
  - *Negru (`Z = 2mm`)*: Baza/fundalul protector.
  - *Roșu (`Z = 3mm`)*: Corpul extraterestrului.
  - *Alb (`Z = 4mm`)*: Ochii pixelati.

---

### Pasul 4: Asamblarea Tabloului prin Duplicare (`Ctrl + D`)
1. Selectați blocul pixel de culoarea dorită din paletă.
2. Apăsați comanda **Duplicate (`Ctrl + D`)** și mutați noul bloc cu săgețile de pe tastatură direct lângă primul bloc.
3. Continuați să lipiți pixeli unul lângă altul pe grilă, rând cu rând, construind imaginea dorită.
4. Asigurați-vă că nu lăsați spații libere între pixeli (blocurile trebuie să se atingă perfect pe laturi).

---

### Pasul 5: Adăugarea unei Baze Subțiri de Susținere (Opțional)
Pentru a vă asigura că toți pixelii rămân lipiți impecabil într-un singur tablou solid:
1. Adăugați o placă mare neagră sub întregul desen (sau creați un contur negru exterior care unește toți pixelii).
2. Verificați ca baza neagră să aibă o înălțime de `2 mm`.

---

### Pasul 6: Verificarea Finală și Exportul STL
1. Rotiți camera în Tinkercad și priviți tabloul din profil (dintr-o parte).
2. Verificați dacă se observă clar cele **3 trepte de înălțime**:
   - Nivelul cel mai jos: Negru (2 mm)
   - Nivelul mijlociu: Roșu (3 mm)
   - Nivelul cel mai înalt: Alb (4 mm)
3. Selectați toate piesele (`Ctrl + A`) și apăsați **Group (`Ctrl + G`)**.
4. Apăsați pe butonul **Export** și descărcați fișierul **.STL**.

---

## 🖨️ Ghidul Profesorului pentru Slicing (Configurarea Layer Swap)

În softul de Slicing (PrusaSlicer, Bambu Studio sau Cura), configurarea imprimării multicolor pentru întreaga clasă se face foarte simplu:

1. Importați pe placa virtuală toate fișierele `.STL` generate de elevi.
2. Setați **Layer Height = 0.2 mm**.
3. Glisați bara verticală de simulare a straturilor (*Layer Slider*):
   - La **Înălțimea Z = 2.2 mm** (stratul de după 2.0mm), adăugați prima schimbare de culoare (**Color Change / M600**) și selectați filamentul **Roșu**.
   - La **Înălțimea Z = 3.2 mm** (stratul de după 3.0mm), adăugați a doua schimbare de culoare și selectați filamentul **Alb**.
4. Dați **Slice** și trimiteți fișierul G-code la imprimantă. Imprimanta va funcționa autonom, oprirea făcându-se automat doar la cele două pauze programate!

---

## 🧠 Joc Quiz Interactiv (Fixarea Cunoștințelor)

1. **Ce înseamnă cuvântul „Pixel”?**
   - *Răspuns*: Picture Element (element de imagine) – cea mai mică unitate a unei imagini digitale.
2. **De ce aveau jocurile vechi pe 8 biți grafică din pixeli mari?**
   - *Răspuns*: Deoarece calculatoarele de atunci aveau memorie foarte mică și nu puteau afișa imagini complexe.
3. **Ce este tehnica Layer Swap la o imprimantă 3D FDM?**
   - *Răspuns*: Oprirea imprimării la o anumită înălțime Z pentru a schimba firul de filament cu o altă culoare.
4. **De ce trebuie ca elementele roșii să fie mai înalte cu 1mm decât cele negre?**
   - *Răspuns*: Deoarece schimbarea de culoare se face pe tot stratul orizontal. Pentru ca roșul să se depună doar în anumite locuri, acele locuri trebuiau să fie singurele care continuau să fie imprimate peste înălțimea de 2mm.
5. **Cum se numește echivalentul 3D al unui pixel?**
   - *Răspuns*: Voxel (Volume Pixel).

---

## 🏆 Rezultatul Final și Încheierea Lecției
- **Proiect Ridicat la Finalul Lecției 02**: Elevii ridică festiv cel de-al doilea breloc personalizat (modelul cadou creat la Lecția 01), proaspăt imprimat pe parcursul celor 120 de minute!
- **Proiect Proiectat în Lecția 02**: Fiecare elev a creat propriul tablou Pixel Art 3D folosind paleta standardizată Negru-Roșu-Alb.
- **Competențe Dobândite**: Înțelegerea pixelilor, istoria graficii 8-bit, proiectarea 3D cu nivele de înălțime diferențiate pe axa Z și logica imprimării multicolor prin schimbare de strat.
- **Pregătire Lecția 03**: Fișierele Pixel Art sunt exportate ca `.STL` și pregătite pe slicer. La începutul Lecției 03, imprimanta va fi pornită cu aceste fișiere Pixel Art, iar copiii își vor ridica tablourile multicolore la finalul Lecției 03!
