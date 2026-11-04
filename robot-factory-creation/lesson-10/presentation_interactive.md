# Prezentare Interactivă: Lecția 10 [RBF1.10] – Proiectarea Top-Down, Cinematica Direcției & Ingineria Protecției Frontale

---

### 🎨 Canva AI Master Prompt (Format Lectură Interactivă la Tablă)

```text
Creează o prezentare educațională teoretică și interactivă de 5 slide-uri (format 16:9 widescreen) destinată elevilor de 11–14 ani, pentru Lecția 10 din cursul Robot Factory: Creation.
Scopul prezentării: Elevii citesc pe rând informația teoretică cu voce tare de pe tablă/ecran.
Structură pe slide: Fiecare slide conține exact 4 propoziții fluente, complete gramatical, numerotate și bine spațiate vizual în carduri mari, ușor de citit de la distanță.
Stil vizual: Modern, curat, mature-tech, fundaluri profesionale în tonuri de gri antracit / bleumarin profund (#0f172a), cu text mare, font sans-serif foarte lizibil și contrast ridicat. Accente de cyan electric (#06b6d4), albastru intens (#3b82f6) și portocaliu industrial (#f97316).
Include imagini ilustrative explicative pe fiecare slide [Placeholder Imagine: ...] pentru a susține vizual textul citit.
Prezentarea se concentrează exclusiv pe conceptele teoretice: metodologia Top-Down Design în CAD, proiecția geometrică prin Use/Project, cinematica bielei de direcție, diferența dintre conexiunile rigide și cele rotative cu un grad de libertate (Revolute Mates), concentratorii de tensiune și absorbția șocurilor pe bara de protecție frontală.
```

---

## Structura Slide-urilor (Format pentru Lectură cu Voce Tare la Tablă)

---

### Slide 1: Filosofia Top-Down – Proiectarea Pieselor în Contextul Real
- **Titlu**: Cum Creează Inginerii Piese Noi Fără Măsurători cu Rigla?
- **Subtitlu**: Diferența Fundamentală dintre Proiectarea Izolată și Proiectarea în Context
- **Propoziții de Citit la Tablă**:
  1. În metoda clasică de proiectare, piesele sunt desenate separat în ateliere diferite, riscând să nu se potrivească perfect la asamblarea finală din cauza micilor erori de măsurare.
  2. Metodologia modernă numită **Top-Down Design** (proiectare în context) presupune desenarea noilor componente direct pe geamănul digital al vehiculului deja asamblat.
  3. Prin această tehnică avansată, piesa nouă preia automat pozițiile exacte ale axelor și găurilor din jur, eliminând complet necesitatea utilizării unei rigle manuale.
  4. Dacă dimensiunile șasiului se modifică ulterior, componentele proiectate în context își recalculează automat forma și lungimea pentru a rămâne perfect compatibile.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Randare CAD demonstrativă arătând un șasiu existent pe care se generează o piesă nouă transparentă, aliniindu-se milimetric pe găurile de fixare]
- **Ghid Profesor (Speaker Notes)**:
  *4 elevi citesc pe rând propozițiile. Discutați cu clasa de ce măsurarea cu rigla a două găuri aflate la 42.6 milimetri distanță duce aproape mereu la piese care se blochează la montaj.*

---

### Slide 2: Magia Proiecției Geometrice (Instrumentul Use / Project)
- **Titlu**: Transferul Datelor Spațiale pe Foaia de Desen Digitală
- **Subtitlu**: Cum Transformăm Axele Tridimensionale în Puncte de Schiță 2D
- **Propoziții de Citit la Tablă**:
  1. Când deschidem o schiță plană deasupra unui ansamblu mecanic, nu trebuie să ghicim coordonatele matematice ale elementelor din jurul nostru.
  2. Instrumentul de proiecție **`Use / Project`** acționează ca o rază laser care transferă conturul oricărei găuri sau muchii tridimensionale direct pe planul nostru de lucru.
  3. Centrele găurilor de pe brațul servomotorului și de pe fuzetele roților devin instantaneu puncte de ancorare perfecte pentru noul mecanism.
  4. Această conexiune parametrică garantează că piesele proiectate prin proiecție se vor îmbina în realitate fără niciun fel de joc sau frecare nedorită.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Diagramă vizuală curată arătând o piesă 3D pe fundal și un plan 2D în prim-plan pe care se proiectează cercuri galbene din centrele găurilor cilindrice]
- **Ghid Profesor (Speaker Notes)**:
  *Subliniați că instrumentul Use (tasta U) este cea mai utilizată comandă de către inginerii de caroserii auto din lume pentru a conecta componentele între ele.*

---

### Slide 3: Cinematica Direcției & Biela de Legătură (Tie-Rod)
- **Titlu**: Coordonarea Roților Frontale: De la Roți Libere la Viraj Sincron
- **Subtitlu**: Principiul de Funcționare al Mecanismului de Transmisie a Mișcării
- **Propoziții de Citit la Tablă**:
  1. Fără un element mecanic de legătură, cele două roți directoare din față oscilează independent, făcând controlul traiectoriei mașinii absolut imposibil.
  2. **Biela de direcție** (Steering Tie-Rod) este o tijă rigidă prevăzută cu trei puncte de articulare care unește servomotorul central cu fuzetele ambelor roți.
  3. Când servomotorul execută o rotație unghiulară, brațul său împinge transversal biela rigidă pe direcția stânga sau dreapta.
  4. Această forță liniară forțează ambele roți frontale să pivoteze în același timp și la același unghi, asigurând viraje line și precise pe circuit.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Schemă cinematică a punții față a unui kart sau buggy arătând brațul central de direcție împingând o tijă transversală legată de pivoții ambelor roți]
- **Ghid Profesor (Speaker Notes)**:
  *Întrebați clasa ce s-ar întâmpla dacă biela ar fi din cauciuc elastic în loc de plastic rigid: forța servomotorului ar întinde cauciucul, iar roțile nu ar vira la timp.*

---

### Slide 4: Grade de Libertate – Rigiditate versus Rotație Liberă
- **Titlu**: Constrângeri Mecanice în Spațiu: Fastened Mate vs. Revolute Mate
- **Subtitlu**: Cum Simulăm Corect Mișcarea unei Balamale sau a unui Ax de Rotație
- **Propoziții de Citit la Tablă**:
  1. În spațiul virtual, orice obiect liber are șase grade de libertate posibile, compuse din trei translații liniare și trei mișcări de rotație în jurul axelor.
  2. O constrângere de tip **Fastened Mate** blochează toate cele șase mișcări, sudând cele două componente într-o singură structură perfect nemișcată.
  3. O conexiune de tip **Revolute Mate** blochează toate translațiile, dar lasă complet liberă o singură rotație curată în jurul axei centrale de pivotare.
  4. Pentru ca mecanismul de virare să funcționeze fără să se blocheze, biela de direcție trebuie conectată de pivoți exclusiv prin conexiuni rotative libere.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Ilustrație 3D comparând un bloc de oțel sudat rigid (0 grade de libertate) cu o balama cilindrică de precizie ce permite o singură rotație curată de 360 de grade]
- **Ghid Profesor (Speaker Notes)**:
  *Explicați de ce mașina se blochează digital dacă greșim conexiunea: simulatorul CAD calculează că piesele rigide nu se pot deforma și dă o eroare roșie de suprapunere.*

---

### Slide 5: Rezistența la Impact – Fillet-uri și Bare de Protecție Frontale
- **Titlu**: Protecția Mecanică a Robotului: Eliminarea Punctelor Vulnerabile
- **Subtitlu**: Cum Distribuim Tensiunile și Cum Absorbim Șocurile Coliziunilor Frontale
- **Propoziții de Citit la Tablă**:
  1. Colțurile interioare ascuțite la nouăzeci de grade concentrează forțele mecanice într-un singur punct microscopic, cauzând fisurarea rapidă a pieselor printate 3D.
  2. Prin aplicarea racordărilor curbate de tip **Fillet**, inginerii rotunjesc trecerile dintre suprafețe, distribuind efortul mecanic pe întregul volum al materialului.
  3. Bara de protecție frontală (bumper) are rolul de a prelua primul unda de șoc în caz de coliziune, protejând componentele fragile precum servomotorul și fuzetele.
  4. O geometrie frontală evazată sau arcuită deflectă obstacolele întâlnite în cursă, prevenind blocarea roților directoare și avarierea mecanismului de virare.
- **Elemente Vizuale**:
  - [Placeholder Imagine: Randare 3D a unui bumper frontal sportiv cu margini racordate lin, arătând undele de dispersie a forței de impact pe lungimea șasiului]
- **Ghid Profesor (Speaker Notes)**:
  *Concluzionați că un bun inginer nu proiectează doar mașini rapide, ci mașini capabile să supraviețuiască oricărui impact pe pista de concurs.*

