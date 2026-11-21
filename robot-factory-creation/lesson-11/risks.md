# Analiza Pre-Mortem a Riscurilor Pedagogice & Tehnice: Lecția 11 [RBF1.11]

Acest document reprezintă instrumentul de analiză preventivă a riscurilor pentru instructorul cursului **Robot Factory: Creation**, identificând potențialele blocaje mecanice, erori de montaj al elementelor de fixare și dinamica de clasă pentru elevii de 11–14 ani în cadrul Lecției 11.

---

## 1. Riscuri Tehnice & Puncte Critice Mecanice

### Risc 1: Forțarea Excesivă a Șuruburilor în Găurile de Plastic („Stripped Thread”)
- **Descriere**: La înșurubarea directă a șuruburilor metrice M3 în găurile de 2.8 mm, elevii au tendința de a strânge cu toată forța șurubelnița. Plasticul PLA se forfecează instantaneu, iar șurubul începe să se rotească în gol, distrugând filetul.
- **Soluție / Safeguard Pedagogic**:
  - Mentorul demonstrează regula celor „Două Degete”: șurubelnița se rotește ținând doar degetul mare și arătătorul pe mâner; în momentul în care capul șurubului a atins suprafața piesei și se simte o opoziție fermă, strângerea se oprește imediat.
  - În caz de forfecare accidentală, mentorul are la îndemână câteva șuruburi cu pas mai mare sau o picătură de adeziv cianoacrilat pentru remediere rapidă pe banc.

### Risc 2: Alunecarea și Căderea Piuliței Pătrate din Fanta Șasiului
- **Descriere**: Fanta șasiului permite glisarea laterală a piuliței DIN 562 M3. Dacă elevul înclină mașina înainte de a introduce șurubul prin gaura de ghidaj, piulița alunecă afară pe masă sau pe podea.
- **Soluție / Safeguard Pedagogic**:
  - Profesorul instruiește elevii să țină degetul pe fanta laterală sau să folosească o mică bucățică de bandă adezivă de mascare peste fantă pentru a ține piulița captivă până când șurubul a prins primele 2 spire de filet.

### Risc 3: Montarea Brațului Servomotorului Fără Centrare Electrică la 90°
- **Descriere**: Dacă brațul oscilant de plastic (*servo horn*) este fixat pe axul zimțat înainte ca servomotorul să fie pornit și adus în poziția neutră de 90°, unghiul de viraj al triciclului va fi asimetric: mașina va vira puternic spre stânga și aproape deloc spre dreapta.
- **Soluție / Safeguard Pedagogic**:
  - Pasul de centrare electrică este obligatoriu și se execută la comun, sub comanda directă a profesorului, înainte de a atinge vreo șurubelniță pentru direcție.

### Risc 4: Frecare Mecanică Excesivă pe Biela de Virare (Blocarea Servomotorului)
- **Descriere**: Dacă șuruburile care fixează biela de virare pe fuzete sunt strânse până la refuz, plasticul se blochează rigid, servomotorul nu mai are forța să miște mecanismul, intră în suprasarcină (*stall*) și consumă rapid bateria.
- **Soluție / Safeguard Pedagogic**:
  - Șuruburile de pivotare ale bielei se strâng până la capăt, apoi se desfac cu un sfert de tură (90° în sens invers) pentru a lăsa o mică libertate de rotație lină.
  - Testul cu degetul: fuzetele trebuie să poată fi mișcate stânga-dreapta ușor, fără nicio rezistență sesizabilă.

---

## 2. Riscuri Pedagogice & Dinamica Clasei

### Risc 5: Pierderea Șuruburilor Mici M2 și a Piulițelor Pătrate pe Podea
- **Descriere**: Șuruburile M2 x 8 mm și piulițele pătrate sunt foarte mici. Dacă se rostogolesc de pe masă, elevii își pierd timpul căutându-le pe jos în loc să asambleze.
- **Soluție / Safeguard Pedagogic**:
  - Fiecare banc este dotat obligatoriu cu o tavă magnetică sau un capac de cutie compartimentat în care se țin exclusiv piesele mici de feronerie.
  - Regula de lucru: nicio piesă metalică nu se așază direct pe blatul liber al mesei.

### Risc 6: Frustrarea la Cursele de Slalom din Agility Cup
- **Descriere**: Dacă o mașină iese de pe traseu din cauza vitezei sau a unui reflex întârziat pe telecomandă, pilotul poate deveni frustrat.
- **Soluție / Safeguard Pedagogic**:
  - Competiția include 1 tur de antrenament gratuit pentru fiecare cursant înainte de manșele oficiale cronometrate.
  - Se acordă premii și aprecieri nu doar pentru cel mai rapid timp, ci și pentru „Cel mai curat viraj fără atingere de jalon” și „Cea mai bună manevră de redresare”.

---

## 3. Lista Rapidă de Verificare pentru Profesor (Quick Verification Checklist)

- [ ] Toate componentele printate 3D ale triciclului sunt sortate pe cutii de echipă.
- [ ] Piulițele pătrate DIN 562 M3 sunt verificate fizic pentru a intra lejer în fantele șasiului fără a fi forțate cu ciocanul.
- [ ] Bateriile 1S Li-Ion sunt încărcate complet (peste 4.0V).
- [ ] Telecomenzile radio 2.4 GHz sunt împerecheate și etichetate cu numele fiecărui elev.
- [ ] Mostrele tactile pentru cele 4 metode de fixare (fasteners) sunt aranjate pe catedră alături de o lupă.
- [ ] Jaloanele de cauciuc pentru traseul Agility Cup sunt pregătite pe podeaua sălii.
