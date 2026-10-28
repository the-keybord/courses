# Analiză de Risc Didactic & Tehnic (Pre-Mortem): Lecția 09 [RBF1.9]

Acest document reprezintă o analiză preventivă a potențialelor blocaje tehnice, riscuri de dinamică și fricțiuni pedagogice pentru **Lecția 09: Inițierea în CAD Parametric, Asamblarea Digitală a Triciclului RC & Formarea Alianțelor roboRangers** din cursul *Robot Factory: Creation*.

---

## 1. Riscuri Tehnice & de Mediu Digital (Onshape & Hardware)

| Risc Tehnic Identificat | Severitate | Cauză Tehnică | Soluție / Măsură Preventivă pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Elevul uită să ancoreze șasiul principal (`Fix`)** | Ridicată | Când încearcă să adauge prima conexiune Fastened Mate, șasiul zboară în derivă prin spațiul 3D în loc ca piesa mobilă să vină spre el. | **Regula de Banc**: Profesorul scrie pe tablă cu majuscule: *PASUL 1: CLICK DREAPTA PE MAIN_TRIKE_CHASSIS -> FIX*. Forge Ranger-ul din fiecare echipă verifică prezența ancorei pe ecranele colegilor. |
| **Piesa se lipește inversată (orientare greșită pe axa Z)** | Medie | Conectorul Mate Connector a fost selectat pe fața opusă sau orientarea axei principale a inversat piesa în interiorul carcasei. | Se demonstrează la proiector cele două butoane salvatoare din meniul Fastened Mate: **Flip primary axis** (inversare 180°) și **Rotate** (pași de 90°). |
| **Elevul pierde complet mașina de pe ecran (zoom infinit)** | Medie | Scroll accidental într-o zonă vidă a ecranului sau deplasare exagerată cu Pan. | Se învață comanda de salvare instantanee: **tasta F (Fit to Window)**, care recalculează centrul scenei și aduce toate piesele înapoi pe ecran. |
| **Performanță redusă sau lag WebGL pe calculatoare mai vechi** | Scăzută | Browserul are accelerarea hardware dezactivată sau sunt deschise zeci de tab-uri YouTube în fundal. | Profesorul solicită închiderea tuturor tab-urilor inutile din Chrome înainte de începerea orei și verifică setarea de *Hardware Acceleration* din browser. |

---

## 2. Riscuri de Dinamică & Lucru în Alianțe

| Risc de Dinamică | Severitate | Cauză Psihologică / Pedagogică | Soluție Didactică pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Fricțiuni la formarea alianțelor (preferințe nesincronizate)** | Medie | Doi prieteni vor să fie în aceeași echipă, dar au amândoi același profil dominant sau trei elevi vor toți rolul de Forge Ranger. | Profesorul reamintește că rolurile sunt de **consultanță și ghidare**, dar fiecare elev își construiește robotul propriu. Se folosește modelul hibrid (Duo) unde rolurile fuzionează armonios. |
| **Elevul pasiv (free-rider) ascuns în spatele colegului rapid** | Scăzută | Un cursant timid lasă colegul mai priceput să-i asambleze mașina în loc să exerseze singur. | **Regula Sacră**: Nimeni nu atinge mouse-ul colegului! Îndrumarea se face exclusiv verbal și prin arătat cu degetul pe ecran. |
| **Ritm inegal de asamblare între cursanți** | Medie | Elevii pasionați de gaming 3D termină montajul în 25 de minute, în timp ce elevii la primul contact cu spațiul 3D au nevoie de 45 de minute. | Se activează **Provocarea Bonus roboRanger**: elevii rapizi trec la `Edit Appearance` (colorarea șasiului în culorile alianței) și poziționează camera pentru captura oficială `Shift + 7`. |

---

## 3. Checklist Rapid de Verificare pentru Profesor (Quick Triage)

Înainte de acordarea punctajelor și încheierea orei, profesorul verifică pe rând:
1. [ ] **Șasiu Ancorat**: Piesa `Main_Trike_Chassis` are simbolul de ancoră (`Fix`) activat în fiecare proiect.
2. [ ] **Aliniere Fără Suprapuneri**: Servomotorul frontal, mecanismul de virare, motorul N20, roata posterioară mare și placa 2.4 GHz sunt așezate corect în locașuri, fără să penetreze pereții de plastic.
3. [ ] **Alianțe Închegate**: Fiecare elev știe în ce alianță este, ce rol are (Forge, Cyber, Vanguard) și care este numele oficial al echipei.
4. [ ] **Captură Foto Salvată**: Fiecare alianță are cel puțin un screenshot izometric curat (`Shift + 7`, taste conectori ascunși `K`) pregătit pentru portalul web roboRangers.
5. [ ] **Verificare Quiz**: Conceptele teoretice (Digital Twin, Part Studio vs Assembly, Fastened Mates, toleranțe M3) au fost consolidate prin quiz-ul Kahoot.
