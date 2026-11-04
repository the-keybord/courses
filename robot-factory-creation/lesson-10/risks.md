# Analiză de Risc Didactic & Tehnic (Pre-Mortem): Lecția 10 [RBF1.10]

Acest document reprezintă o analiză preventivă a potențialelor blocaje tehnice, riscuri de dinamică și fricțiuni pedagogice pentru **Lecția 10: Proiectarea Top-Down în Onshape: Mecanismul de Virare prin Proiecție CAD, Testul Cinematic & Crearea Bumperului Frontal Personalizat** din cursul *Robot Factory: Creation*.

---

## 1. Riscuri Tehnice & de Mediu Digital (Onshape & CAD)

| Risc Tehnic Identificat | Severitate | Cauză Tehnică | Soluție / Măsură Preventivă pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Elevul folosește `Fastened Mate` în loc de `Revolute Mate` pe bielă** | Ridicată | Reflexul din Lecția 9 de a folosi scurtătura `M` peste tot. Biela se blochează rigid, iar mecanismul nu poate vira când elevul trage cu mouse-ul. | **Demonstrație la Proiector**: Profesorul arată vizual contrastul: „Fastened = Sudură / Îmbinare rigidă; Revolute = Balama cu o singură rotație”. Forge Ranger-ul din echipă verifică pictogramele de Mate din lista din stânga a colegilor. |
| **Instrumentul `Use` (`U`) proiectează planul întreg în loc de gaura circulară** | Medie | Click-stânga pe fața plană mare a piesei în loc de marginea circulară a găurii de pivotare. Schița se umple de zeci de linii nedorite. | Se explică regula: cursorul trebuie să lumineze doar cercul găurii înainte de click. Dacă s-au proiectat linii greșite, se apasă `Ctrl + Z` sau se selectează liniile nedorite și se șterg cu `Delete`. |
| **Bumperul frontal blochează cursa roților la viraj maxim** | Ridicată | Elevul desenează o bară prea lată spre interior sau prea aproape de roțile din față, iar când roțile virează, jantele intră în coliziune cu bumperul. | **Regula de Aur a Spațiului Liber (Clearance)**: Înainte de extrudarea finală a bumperului, elevul testează virarea la unghi maxim (45°) și lasă cel puțin 3–5 mm spațiu liber între marginea roții și aripa bumperului. |
| **Eroare la generarea textului 3D (Text Extrude Error)** | Medie | Textul este prea mic, liniile fontului se auto-intersectează sau caseta de text iese parțial în afara suprafeței solide a bumperului. | Profesorul recomandă utilizarea unor fonturi simple și robuste (*Open Sans*, *Roboto*), majuscule (`CAPS`) și poziționarea textului strict în interiorul feței plane a barei. |
| **Elevul desenează biela într-un plan decalat pe înălțime (axa Z)** | Medie | Schița a fost inițiată pe un plan arbitrar, iar biela extrudată plutește deasupra sau trece prin mijlocul șasiului. | Profesorul le arată elevilor cum să selecteze exact fața superioară a brațului de servomotor ca plan de schiță, asigurând alinierea pe înălțime din start. |

---

## 2. Riscuri de Pacing, Dinamică & Frustrare a Elevilor

| Risc Didactic / Emoțional | Severitate | Cauză Psihologică / Pedagogică | Soluție Didactică pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Speed-Run-ul inițial durează prea mult (pierderea timpului)** | Ridicată | Unii elevi redeschid documente vechi corupte sau pierd timp căutând piese șterse, blocând începerea părții noi de proiectare. | Se impune o limită strictă de 20 de minute. Elevii care au documente incomplete primesc direct o copie proaspătă din șablonul Master pentru a începe toți la unison Pasul 2. |
| **Frustrare la decuparea conturului bielei (`Trim` tool)** | Medie | Elevul nu înțelege de ce profilul nu devine gri (nu este o zonă închisă pentru `Extrude`), având goluri microscopice sau linii dublate. | Profesorul intervine demonstrând cum verificăm un profil închis: dacă interiorul devine gri deschis, conturul este etanș și gata de extrudare. |
| **Perfecționism blocant la designul bumperului** | Medie | Un elev vrea să deseneze aripi organice ultra-complexe și nu apucă să extrudeze sau să pună textul cu numele robotului. | Se recomandă începerea cu o formă geometrică simplă (trapez sau arc de cerc curat). Detaliile și decupajele artistice se adaugă doar după ce piesa de bază este funcțională. |
| **Competitivitate negativă între alianțe** | Scăzută | Glume sau tachinări privind numele aleși pentru roboți sau culorile alianțelor rivale. | Profesorul redirecționează energia spre spiritul inginerez: aprecierea soluțiilor tehnice elegante, a simplității robuste și a virajului impecabil la testul de drag. |

---

## 3. Checklist Rapid de Verificare pentru Profesor (Quick Triage)

Înainte de finalizarea sesiunii și evaluarea pe echipe, profesorul verifică rapid pe fiecare ecran:
1. [ ] **Ancorare Șasiu**: Șasiul `Main_Trike_Chassis` este ancorat prin `Fix` (simbol de ancoră vizibil).
2. [ ] **Bielă Funcțională**: Piesa `Steering_Tie_Rod` este extrudată la 3 mm și conectată pe cele 3 noduri de pivotare.
3. [ ] **Test Cinematic Validat**: Trăgând cu mouse-ul de brațul servo sau de una dintre roțile frontale, ambele fuzete virează simultan pe ecran (conexiuni `Revolute Mate` active).
4. [ ] **Spațiu Liber la Viraj**: Bumperul frontal montat lasă libertate de mișcare roților față fără coliziuni la unghi maxim.
5. [ ] **Personalizare Completă**: Bumperul are numele propriului robot gravat/embosat și este vopsit în nuanța oficială `#HEX` a alianței cromatice.
6. [ ] **Quiz Kahoot Parcurs**: Conceptele teoretice (Top-Down, Use/Project, Revolute vs Fastened, Fillet, absorbție de șoc) au fost fixate și explicate la clasă.

