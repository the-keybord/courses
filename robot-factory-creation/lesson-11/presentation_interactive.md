# Prezentare Interactivă: Lecția 11 [RBF1.11] – De la Pixel la Plastic: Felierea în Bambu Studio, Printarea 3D și Mecanica Direcției

---

## 🤖 Prompt Master pentru Gemini AI Pro (Generare Prezentare)

```text
Creează o prezentare educațională teoretică și interactivă de 5 slide-uri (format 16:9 widescreen) destinată elevilor de 11–14 ani, pentru Lecția 11 din cursul Robot Factory: Creation.

DIRECTIVE STRICTE DE STRUCTURĂ ȘI CONȚINUT (ZERO SHORTENING):
1. Nu scurta, nu rezuma și nu omite nicio propoziție din textul furnizat mai jos. Păstrează exact cele 3-4 propoziții numerotate pentru fiecare slide.
2. Fiecare propoziție numerotată reprezintă o replică clară pe care un elev o va citi cu voce tare în clasă direct de pe ecran.
3. Include pentru fiecare slide o casetă dedicată cu "Notă Didactică pentru Profesor" (Teacher Guidance Note) care oferă explicații suplimentare și întrebări de verificare.
4. Fără instrucțiuni practice de butoane CAD sau pași de asamblare pe slide-uri; prezentarea se concentrează exclusiv pe știința fabricației aditive, rezistența materialelor, anizotropie, geometrie de umplere și cinematică mecanică.
5. Stil vizual: Design modern, matur, aerisit, carduri curate, contrast ridicat (albastru tehnic, antracit, accente portocalii industriale), grafice clare, fără elemente copilărești.
```

---

## Slide 1: De la Geometrie la Mișcare: Ce face un Slicer?

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. O imprimantă 3D nu poate citi direct formele geometrice tridimensionale desenate în Onshape, ci are nevoie de un set precis de coordonate spațiale.
2. Software-ul de feliere (slicer) precum Bambu Studio acționează ca un translator între modelul digital și motoarele imprimantei, tăind piesa într-o succesiune de straturi orizontale microscopice.
3. Pentru fiecare strat, slicerul calculează traiectoria exactă a capului de imprimare, viteza de deplasare și cantitatea de plastic topit împinsă prin duză (nozzle).
4. Fișierul final generat conține mii de linii de cod de mișcare (instrucțiuni G-code) care ghidează imprimanta punct cu punct pentru a construi piesa reală.

> **Notă Didactică pentru Profesor**:
> Întrebați elevii: *"Dacă duza are un diametru standard de 0.4 mm, cum credeți că poate construi o piesă cu pereți de 1.2 mm grosime?"* Explicați că imprimanta trasează 3 contururi paralele (wall loops) pentru a atinge cota dorită.

---

## Slide 2: Rezistența Pieselor: Anizotropia și Orientarea Straturilor

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Spre deosebire de o piesă turnată dintr-o singură bucată de metal sau plastic, un obiect printat 3D este format prin suprapunerea unor filamente succesive de material topit.
2. Din acest motiv, piesele printate prezintă proprietatea de anizotropie, adică au o rezistență mecanică diferită în funcție de direcția din care acționează forțele.
3. Straturile aderă foarte puternic pe orizontală de-a lungul aceluiași fir de plastic, dar sunt mult mai vulnerabile la forfecare și dezlipire (delaminare) pe verticală.
4. Pentru ca o bielă de direcție să reziste la forțele constante de împingere și tragere ale servomotorului, ea trebuie imprimată culcată plat pe patul de lucru, astfel încât firele să fie paralele cu efortul mecanic.

> **Notă Didactică pentru Profesor**:
> Arătați clasei o bucățică de lemn sau un biscuit stratificat: explicați cum fibrele paralele rezistă la întindere, în timp ce aplicarea forței de-a curmezișul straturilor duce la rupere instantanee.

---

## Slide 3: Structura Interioară: De ce folosim Infill Gyroid?

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. În ingineria modernă, piesele rareori se fabrică 100% pline de plastic, deoarece ar fi excesiv de grele, ar consuma mult material și s-ar răci inegal, deformându-se pe pat.
2. Spațiul interior al unei piese printate 3D este umplut cu o structură geometrică numită infill, a cărei densitate tipică variază între 15% și 25%.
3. Modelul de infill Grid este format din linii drepte care se intersectează, oferind o rigiditate excelentă pe o singură direcție, dar devenind casant la impacturile oblice.
4. Modelul de infill Gyroid utilizează o formă de valuri tridimensionale fără colțuri ascuțite, oferind o absorbție uniformă a șocurilor mecanice în toate direcțiile, ideală pentru barele de protecție (bumpere).

> **Notă Didactică pentru Profesor**:
> Amintiți-le elevilor de zonele controlate de deformare (crumple zones) ale automobilelor moderne: o bară de protecție nu trebuie să fie un bloc indestructibil de piatră, ci trebuie să se deformeze elastic pentru a disipa energia coliziunii fără a rupe șasiul.

---

## Slide 4: Frecarea și Controlul: De la Roata Netedă la Pneul de Cauciuc

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Puterea unui motor de tracțiune nu valorează nimic dacă roțile patinează în gol pe parchetul sau gresia sălii de laborator.
2. Roțile fabricate din plastic rigid au un coeficient de frecare foarte mic, ceea ce face ca vehiculul să derapeze la viraje și să piardă aderența la accelerare.
3. Prin aplicarea unor benzi de cauciuc (rubber bands) pe circumferința jantelor, mărim considerabil forța de frecare statică dintre roată și sol.
4. O aderență optimă pe roțile din față permite fuzetelor să schimbe direcția vehiculului instantaneu, în timp ce roata mare din spate transmite integral cuplul motorului N20 pentru propulsie.

> **Notă Didactică pentru Profesor**:
> Întrebați clasa: *"De ce mașinile de curse de Formula 1 au pneuri moi din cauciuc sintetic în loc de roți din metal sau plastic dur?"* Discutați relația dintre forța normală de apăsare, suprafața de contact și limita de aderență înainte de derapaj.

---

## Slide 5: Centrarea Servomotoarelor și Geometria Virajului

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Un servomotor funcționează prin poziționare unghiulară absolută, având o cursă standard de la 0 grade la 180 de grade.
2. Înainte de a monta biela mecanică, servomotorul trebuie alimentat pentru a-și găsi poziția neutră electrică, corespunzătoare unghiului median de exact 90 de grade.
3. Dacă montăm brațul de plastic (servo horn) când motorul este rotit la un unghi extrem, vehiculul va putea vira doar spre o singură parte, forțând angrenajele interne până la blocare.
4. O timonerie de direcție perfect centrată garantează curse simetrice stânga-dreapta, oferind mașinii o rază identică de virare în ambele sensuri de mers.

> **Notă Didactică pentru Profesor**:
> Explicați conceptul de "Servo Trim" (compensare din telecomandă) și arătați de ce ajustarea mecanică brută direct pe caneluri este mult mai eficientă decât forțarea electronică dintr-un potentiometru de trim.
