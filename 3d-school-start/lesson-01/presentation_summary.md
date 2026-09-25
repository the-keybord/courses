# Prezentare Continuă: Lecția 01 [3DS2.1] – Anatomia Imprimantei 3D

## DIRECTIVE IMPORTANTE PENTRU MOTORUL DE GENERARE VIZUALĂ (AI ENGINE)

- **Public Țintă & Ton**: Elevi cu vârste între 10 și 12 ani (3D School Start). Tonul este clar, instructiv, tehnic și accesibil.
- **Directivă de Conținut Strict (Zero Halucinații)**: Folosiți EXCLUSIV informațiile, denumirile, termenii tehnici și conceptele prezentate mai jos. Nu adăugați pași sau date istorice paralele.
- **Structură Secvențială**: Respectați ordinea cronologică exactă a ideilor din textul de mai jos.
- **Focalizare Exclusiv Teoretică**: Prezentarea tratează strict conceptele teoretice, istorice și mecanice (fără slide-uri de proiect practic sau tutoriale CAD).
- **Cerințe Vizuale & Ilustrații**:
  - Fiecare concept teoretic important trebuie însoțit de o ilustrație vizuală explicativă.
  - **Stilul Ilustrațiilor**: Exclusiv stil abstract curat (vector 2D plat, grafică tehnică minimalistă). Fără randări 3D generice sau colaje foto artificiale.
  - **Paletă de Culori**: Fundaluri în nuanțe de ardezie închisă (slate), albastru marin (navy) și accente contrastante de galben și portocaliu.

---

## Anatomia Imprimantei 3D: Cum Funcționează Tehnologia FDM

Fabricarea aditivă prin tehnologia FDM (Fused Deposition Modeling) construiește obiecte tridimensionale adăugând material strat cu strat, pornind de la un model digital conceput pe calculator. O imprimantă 3D modernă este un echipament mecatronic precis, coordonat de o placă de control, senzori electronici și motoare pas-cu-pas.

Pentru a ajunge la echipamentele rapide și ușor de utilizat de astăzi, tehnologia a evoluat prin patru etape principale. Prima etapă a fost Proiectul RepRap (2005–2011), inițiat de profesorul Adrian Bowyer. Scopul său a fost crearea unei imprimante 3D accesibile, capabile să își imprime singură piesele din plastic pentru a construi o altă mașină. Deși experimentale și dificil de calibrat, imprimantele RepRap au deschis drumul spre comunitățile open-source de creatori.

A doua etapă importantă a fost Era Prusa (2012–2018), dezvoltată de Josef Prusa. Modelul Prusa i3 a stabilit un standard de fiabilitate mondial prin cadrul său rigid, piesele optimizate și dezvoltarea software-ului de feliere PrusaSlicer.

A treia etapă a fost Era Ender 3 (2018–2022), lansată de compania Creality. Prin utilizarea profilelor simple de aluminiu și un cost redus, Ender 3 a făcut imprimarea 3D accesibilă în școli și locuințe, oferind utilizatorilor posibilitatea de a învăța asamblarea, depanarea și îmbunătățirea mecanică a unei mașini.

În prezent, ne aflăm în Era Bambu Lab (2022 – Prezent). Această generație aduce viteze de lucru de până la cinci ori mai mari, structuri cinematice CoreXY, calibrare automată a vibrațiilor și a nivelului patului, precum și sisteme automate de gestionare a filamentelor multicolore (AMS), făcând utilizarea unei imprimante 3D simplă și eficientă.

Mișcarea unei imprimante 3D se realizează pe patru axe motorizate. Axa X deplasează capul de printare la stânga și la dreapta de-a lungul ghidajului orizontal. Axa Y deplasează patul de printare înainte și înapoi sub capul de lucru. Axa Z ridică brațul pe verticală la fiecare strat nou de material, de regulă cu o fracțiune de 0.2 milimetri. Axa E reprezintă motorul extruderului, care preia filamentul de plastic de pe rolă și îl împinge controlat către zona de încălzire.

Sistemul termic al imprimantei controlează procesul de topire și depunere a plasticului. În capul de printare (Hotend), un cartuș de încălzire ridică temperatura blocului metalic la 210–220 grade Celsius. Plasticul topit este presat printr-o duză îngustă de 0.4 milimetri. În același timp, radiatorul și gâtul termic (heatbreak) mențin partea superioară rece, împiedicând blocarea filamentului.

La baza imprimantei, patul încălzit (heatbed) menține o temperatură constantă de 50–65 grade Celsius pentru filamentul PLA. Această căldură asigură aderența piesei și previne dezlipirea sau deformarea colțurilor (warping). Temperatura este monitorizată permanent de senzori termistori, care transmit date în timp real către placa de bază.
