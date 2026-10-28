# Ghid de Laborator Onshape: Asamblarea Digitală a Triciclului RC [RBF1]

Acest ghid este manualul practic pas-cu-pas pentru prima sesiune de CAD în **Onshape** din cursul **Robot Factory: Creation**. Exercițiul este conceput special pentru cursanți de **11–14 ani** fără experiență anterioară în modelare 3D.

---

## 🎯 Obiectivul Pedagogic al Exercițiului
În loc să înceapă cu schițe 2D abstracte și constrângeri geometrice rigide, elevii explorează direct un **mediu de asamblare 3D (Assembly)**. Ei primesc un set complet de piese digitale ale **Triciclului RC printat 3D** și le asamblează pe un șasiu central, învățând navigarea spațială, cinematică unui vehicul cu 3 roți și conexiunile mecanice inteligente (**Fastened Mates**).

---

---

## 🚀 Pasul 0: Cum Duplici Documentul Șablon („Make a copy to edit”)

Înainte de a atinge orice piesă, fiecare elev trebuie să își creeze propriul document de lucru independent:
1. **Deschide link-ul primit de la profesor** în browserul Google Chrome (asigură-te că ești logat în contul tău Onshape).
2. Pe ecran va apărea o bară albastră cu mențiunea *„View only”*. Nu te speria, este normal!
3. Dă click pe butonul albastru **`Make a copy to edit`** din colțul stânga-sus (sau mergi la meniul Document -> *Copy workspace*).
4. Redenumește documentul tău astfel:  
   `NumeAlianță_PrenumeleTău_RC_Trike_V1` (de exemplu: `TitanDynamics_Alex_RC_Trike_V1`).
5. Apasă **OK**. Acum ai propria ta copie salvată în cloud!
6. **Verifică Tab-ul Activ (`Assembly 1`)**:
   - Privește bara inferioară a ecranului: asigură-te că ești pe tab-ul **`Assembly 1`** (nu în `Part Studio 1`, unde se află doar geometriile sursă ale pieselor).
   - În `Assembly 1`, toate componentele triciclului sunt deja așezate pe masa de lucru virtuală, gata de asamblat.
   - 💡 *Sfat rapid*: Dacă din greșeală ștergi o piesă de pe ecran, apasă butonul **`Insert`** (`Alt + I`) din stânga-sus a barei de unelte, dă click pe piesa respectivă din `Part Studio 1`, plaseaz-o înapoi pe scenă și apasă bifa verde (`✔`).

---

## 📦 Lista Pieselor Digitale din Proiectul Onshape (BOM - Bill of Materials)

Toate componentele se regăsesc deja modelate și pregătite în documentul-șablon Onshape pus la dispoziție de profesor:

1. **Șasiu Principal Triciclu (`Main_Trike_Chassis`)**: Placă structurală monobloc printată 3D din PLA, cu suport frontal pentru servomotorul de direcție, găuri pentru mecanismul de viraj, locaș central coborât pentru baterie și clemă posterioară pentru motorul N20.
2. **Servomotor Frontal de Direcție (Micro Servo 9g)**: Servomotor compact pentru orientarea unghiulară a direcției față.
3. **Șuruburi Mici de Fixare Servomotor (`Servo_Mounting_Bolts` - 2 bucăți)**: Șuruburi mici filetate pentru prinderea flanșelor laterale ale servomotorului în șasiul printat 3D.
4. **Șurubel Central de Servo Horn (`Servo_Horn_Screw` - 1 bucată)**: Șurubel mic destinat blocării brațului de virare pe axul canelat al servomotorului.
5. **Mecanism de Virare Frontal (Steering Linkage & Uprights)**: Tije și fuzete printate 3D ce preiau mișcarea servomotorului și virează cele două roți din față.
6. **Roți Frontale Directoare (2 bucăți)**: Jante printate 3D prevăzute cu canal perimetric pentru elastice de cauciuc.
7. **Elastice de Cauciuc Frontale (Front Rubber Bands)**: Inele elastice de cauciuc montate pe roțile față pentru aderență laterală și prevenirea derapajului în viraje.
8. **Motor DC N20 cu Reductor Metalic (Micro Metal Gearmotor)**: Motor compact cu reductor cu pinioane metalice, cuplu ridicat și ax profilat tip D-shaft.
9. **Roată Posterioară Mare de Propulsie (Rear Big Traction Wheel)**: Roată printată 3D de diametru mare, cu alezaj D-shaft și canal lat exterior.
10. **Bandă de Cauciuc Posterioară (Rear Rubber Band)**: Bandă elastică lată de cauciuc montată pe roata mare spate pentru tracțiune maximă și eliminarea patinării pe parchet sau suprafețe lucioase.
11. **Placă Electronică Dedicată 2.4 GHz**: Receptor radio compact 2.4 GHz cu conexiune directă pentru servomotor și motorul N20, deja împerecheată din fabrică cu o telecomandă radio dedicată (**paired remote**).
12. **Suport Acumulator / Baterie**: Modul de alimentare montat central și coborât pentru stabilitate giroscopică pe 3 roți.
13. **Set Șuruburi Metrice (M3 / M2)**: Șuruburi cilindrice pentru prinderea rigidă a plăcii electronice și a carcasei bateriei.

> 💡 **Știai că? (Secretul Inginerilor – GrabCAD.com)**: Piesele standard cumpărate din comerț (motorul N20, servomotorul de direcție, șuruburile) nu sunt desenate de la zero de fiecare dată. Inginerii le descarcă gratuit sub formă de modele 3D exacte (`.STEP`) de pe platforma **GrabCAD.com**, concentrându-și timpul pe modelarea pieselor unice care fac robotul original!

---

## 🧭 Panoul de Control Onshape: Navigarea în Spațiul 3D

Înainte de a muta orice piesă, fiecare elev trebuie să stăpânească cele 4 comenzi de bază ale mouse-ului:

| Acțiune | Comandă Mouse / Tastatură | Ce face pe ecran |
| :--- | :--- | :--- |
| **Orbit (Rotire 3D)** | **Ține apăsat Click Dreapta** și mișcă mouse-ul | Rotește întreaga scenă 3D pentru a vedea mașina din orice unghi. |
| **Pan (Translație / Glisare)** | **Ține apăsat Click Rotiță (Scroll Wheel)** sau **Ctrl + Click Dreapta** | Deplasează camera stânga-dreapta-sus-jos fără să rotească unghiul. |
| **Zoom (Apropiere / Depărtare)** | **Rotește rotița mouse-ului (Scroll)** | Mărește sau micșorează zona indicată de cursorul mouse-ului. |
| **Vedere Izometrică Rapidă** | Apasă tasta **Shift + 7** | Resetează camera instantaneu într-o perspectivă optimă 3D de 45°. |
| **Cubul de Navigare (View Cube)** | Click pe fețele **Top**, **Front**, **Right** din colțul dreapta-sus | Aliniază ecranul perfect perpendicular pe acea față. |

---

## 🧲 Secretul Onshape: Instrumentul „Fastened Mate” (Magnetul Mecanic)

În Onshape, nu tragem piesele la ochi cu unelte imprecise de translație. Folosim **Fastened Mate** (tasta rapidă **`M`** sau pictograma cu două cuburi prinse).

### Cum funcționează un Fastened Mate:
1. Selectezi **Fastened Mate** din bara de unelte superioară.
2. Duci cursorul pe piesa mobilă (de exemplu, marginea circulară a unei găuri de șurub sau flanșa unui motor). Apare un disc colorat numit **Mate Connector** (cu axe albastru/verde/roșu). Faci **Click Stânga** când cercul este pe centru.
3. Duci cursorul pe piesa pe care vrei să o montezi (gaura corespondentă de pe șasiu) și faci **Click Stânga** pe centrul acelei găuri.
4. Piesa zboară automat și se lipește magnetic în poziția exactă!
5. **Dacă piesa e orientată pe dos**:
   - Apasă butonul **Flip primary axis** (săgeata dublă cu axa Z) pentru a întoarce piesa cu 180°.
   - Apasă butonul **Rotate** (săgeata curbată cu axa Q) pentru a o roti în pași de 90° până se aliniază perfect.
6. Faci click pe bifa verde (**✔**) pentru a confirma conexiunea.

---

## 🛠️ Etapele Asamblării Triciclului RC Pas-cu-Pas

### Pasul 1: Blocarea Șasiului (Fix Chassis)
- În lista de componente din stânga ecranului (Instances List), caută piesa **`Main_Trike_Chassis`**.
- Dă **Click Dreapta** pe `Main_Trike_Chassis` și alege opțiunea **`Fix`**.
- *De ce facem asta?* O ancoră solidă împiedică șasiul să se miște în spațiu când tragem sau lipim alte piese de el. Apare un simbol mic de ancoră lângă numele piesei.

### Pasul 2: Montarea Servomotorului Frontal & a Șuruburilor de Flanșă
- Localizează servomotorul compact de direcție.
- Activează **Fastened Mate** (`M`).
- Selectează centrul găurii de prindere de pe flanșa servomotorului.
- Selectează stâlpul corespondent din locașul frontal al șasiului destinat sistemului de direcție.
- Asigură-te că axul dințat al servomotorului este orientat în sus; dacă e necesar, apasă **Flip** (`Z`). Confirmă cu bifa verde.
- **Montarea celor 2 șuruburi mici de servomotor (`Servo_Mounting_Bolts`)**: Folosește Fastened Mate (`M`) pentru a așeza fiecare șurub mic în alezajele flanșelor servomotorului, unind fața inferioară a capului de șurub cu fața superioară a flanșei.

### Pasul 3: Montarea Mecanismului de Virare, a Șurubelului de Horn & a Roților Frontale
- Cuplează brațul de virare (servo horn) pe axul canelat al servomotorului.
- **Blocarea cu șurubelul central (`Servo_Horn_Screw`)**: Aplică Fastened Mate (`M`) pe șurubelul mic de servo horn și fixează-l în centrul axului canelat. Acest șurubel asigură transmiterea cuplului către direcție fără patinare.
- Conectează tija de direcție și cele două fuzete viratoare pe punctele de articulare frontale ale șasiului.
- Montează cele două roți frontale directoare pe fusurile fuzetelor folosind **Fastened Mate** (`M`).
- Cuplează inelele elastice de cauciuc (**Rubber Bands**) în canelurile exterioare ale jantelor printate 3D pentru a conferi aderență laterală la viraje strânse.

### Pasul 4: Instalarea Motorului DC N20 cu Reductor Metalic
- Localizează motorul N20 cu reductor metalic.
- Activează **Fastened Mate** (`M`).
- Fă click pe centrul feței frontale a carcasei reductorului metalic.
- Fă click pe fața interioară a clemei posterioare de montaj de pe șasiu.
- Orientează axul aplatizat D-shaft spre exteriorul vehiculului și confirmă conexiunea.

### Pasul 5: Montarea Roții Posterioare Mari de Propulsie & Cauciucului
- Localizează roata mare posterioară printată 3D.
- Activează **Fastened Mate** (`M`), selectează centrul alezajului interior cu profil D și unește-l cu axul motorului N20.
- Montează banda lată de cauciuc (**Rear Rubber Band**) pe canalul exterior al roții mari. Această bandă garantează tracțiune optimă fără patinare la porniri rapide.

### Pasul 6: Montarea Plăcii Electronice Dedicate 2.4 GHz
- Placa electronică receptor 2.4 GHz se montează pe distanțierii centrali superiori ai șasiului.
- Activează **Fastened Mate** (`M`) pe una dintre găurile de fixare ale plăcii și stâlpul corespunzător de pe șasiu.
- Orientează placa astfel încât antena să rămână degajată, iar conectorii pentru servomotor și motor N20 să fie orientați către punțile corespunzătoare.

### Pasul 7: Fixarea Suportului de Baterie
- Suportul de baterie se așază în locașul central coborât al șasiului (pentru a menține centrul de greutate jos și a preveni răsturnarea laterală a triciclului la viraje de mare viteză).
- Activează **Fastened Mate** (`M`) și leagă gaura centrală a suportului de gaura de pe șasiu.

### Pasul 8: Înșurubarea Șuruburilor Metrice (M3 / M2)
- Pentru a finaliza asamblarea inginerească, plasează șuruburile metrice cilindrice în găurile de fixare ale plăcii electronice și ale suportului de baterie.
- Activează **Fastened Mate** (`M`), dă click pe fața plană inferioară a capului de șurub și apoi pe marginea superioară a găurii corespunzătoare.

---

## 🚨 Ghid Rapid de Depanare (Troubleshooting pentru Elevi)

1. **„Am greșit piesa sau am pus-o strâmb!”**  
   - Nu te panica! Apasă tasta **Ctrl + Z** pentru a anula ultima acțiune.
   - Alternativ, caută conexiunea în lista din stânga sub secțiunea **`Mate Features`**, dă dublu-click pe ea și modifică orientarea sau șterge-o cu tasta **Delete**.

2. **„Piesa s-a lipit în interiorul alteia!”**  
   - Deschide fereastra Fastened Mate și apasă pe butonul **Flip primary axis** (pictograma cu săgeți opuse Z). Piesa va sări pe fața exterioară corectă.

3. **„Piesa se învârte cu 90 de grade greșit!”**  
   - Apasă pe butonul rotund de **Rotate** din fereastra mate-ului până când ajunge la unghiul dorit.

4. **„Am pierdut mașina de pe ecran / ecranul e complet gol!”**  
   - Apasă tasta **`F`** (Fit to Window). Onshape va recalcula scena și va aduce instantaneu întregul robot în centrul ecranului.

---

## 🏆 Provocare Suplimentară pentru Echipele Rapide (Bonus roboRanger)

Echipele care termină asamblarea de bază înainte de expirarea timpului pot trece la personalizarea vehiculului:
1. **Color Coding (Personalizarea Cromatică)**: Dă click-dreapta pe piese în lista din stânga, alege **`Edit Appearance`** și colorează șasiul sau jantele în culorile oficiale alese de alianța ta.
2. **Foto Oficială de Prezentare**: Folosește tasta **Shift + 7** pentru vederea izometrică, ascunde conectorii apăsând tasta **`K`** (Hide mate connectors) și fă o captură de ecran curată (screenshot) pentru profilul alianței pe platforma web roboRangers!
