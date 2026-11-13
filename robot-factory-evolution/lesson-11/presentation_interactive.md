# Prezentare Interactivă: Lecția 11 [RBF2.11] – Controlul în Buclă Închisă: Senzori Optici IR și Navigația Autonomă

---

## 🤖 Prompt Master pentru Gemini AI Pro (Generare Prezentare)

```text
Creează o prezentare educațională teoretică și interactivă de 5 slide-uri (format 16:9 widescreen) destinată adolescenților de 11–15 ani, pentru Lecția 11 din cursul Robot Factory: Evolution.

DIRECTIVE STRICTE DE STRUCTURĂ ȘI CONȚINUT (ZERO SHORTENING):
1. Nu scurta, nu rezuma și nu omite nicio propoziție din textul furnizat mai jos. Păstrează exact cele 3-4 propoziții numerotate pentru fiecare slide.
2. Fiecare propoziție numerotată reprezintă o replică clară pe care un elev o va citi cu voce tare în clasă direct de pe ecran.
3. Include pentru fiecare slide o casetă dedicată cu "Notă Didactică pentru Profesor" (Teacher Guidance Note) care oferă explicații suplimentare și întrebări de verificare.
4. Fără instrucțiuni practice de cod sau butoane software pe slide-uri; prezentarea se concentrează exclusiv pe teoria controlului în buclă închisă, fizica fototranzistorilor în infraroșu, zgomotul optic ambiental, conversia ADC și dinamica vehiculelor autonome.
5. Stil vizual: Design hi-tech futurist, aerisit, carduri curate, contrast ridicat (antracit închis, accente turcoaz neon și albastru electric), grafice clare, fără elemente copilărești.
```

---

## Slide 1: Bucla Închisă vs Bucla Deschisă: Cum Gândește un Robot Autonom?

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Într-un sistem de control în buclă deschisă (Open-Loop), robotul execută orbește o serie de comenzi pre-programate de timp și viteză, fără să știe dacă roțile au patinat sau dacă mașina a deviat de la traseu.
2. Un sistem de control în buclă închisă (Closed-Loop) utilizează fluxul continuu de date de la senzori pentru a măsura în fiecare milisecundă diferența dintre starea reală și traiectoria dorită.
3. Această diferență matematică este denumită eroare de poziționare, iar microcontrolerul ajustează instantaneu puterea motoarelor pentru a reduce această eroare la zero.
4. Datorită buclei de reacție în timp real, un robot autonom poate compensa denivelările solului, uzura bateriei și virajele bruște fără nicio intervenție umană.

> **Notă Didactică pentru Profesor**:
> Dați exemplul mersului pe jos cu ochii deschiși (buclă închisă) vs mersul legat la ochi (buclă deschisă): chiar dacă știm pașii, fără feedback vizual ne vom lovi de pereți după câțiva metri.

---

## Slide 2: Fizica Senzorilor TCRT5000: Reflexie și Absorbție în Infraroșu

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Senzorul optic TCRT5000 emite continuu radiație electromagnetică în spectrul infraroșu apropiat, la o lungime de undă invizibilă pentru ochiul uman de 940 de nanometri.
2. Când fasciculul de fotoni atinge o suprafață albă deschisă la culoare, aproape toată energia este reflectată înapoi și este captată de baza unui fototranzistor receptor alăturat.
3. Suprafața benzii negre conține pigmenți de carbon care absorb radiația infraroșie aproape în totalitate, împiedicând lumina să se întoarcă la receptor.
4. Fototranzistorul funcționează ca o supapă comandată de lumină: el lasă curentul electric să treacă atunci când primește radiație reflectată și se blochează complet în dreptul culorii negre.

> **Notă Didactică pentru Profesor**:
> Amintiți-le elevilor de ce purtăm haine albe vara (pentru a reflecta radiația solară) și haine negre iarna (pentru a absorbi căldura); senzorul IR exploatează exact același principiu optic la 940 nm.

---

## Slide 3: Zgomotul Ambiental și Calculul Pragului de Decizie (Threshold)

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Convertorul analog-digital (ADC) de pe microcontrolerul ESP32 transformă tensiunea citită de la fototranzistor într-o valoare numerică între 0 și 4095.
2. Corpurile de iluminat din încăpere, lumina soarelui de la ferestre și reflexia podelei creează zgomot optic parazit care variază de la o sală la alta.
3. Din acest motiv, un robot autonom nu poate folosi valori prestabilite din fabrică, ci are nevoie de o procedură de calibrare la pornire pentru a măsura nivelul de alb și nivelul de negru din mediul curent.
4. Pragul critic de decizie (Threshold) se stabilește matematic la jumătatea intervalului dintre cele două valori măsurate, asigurând o comutare sigură între stări.

> **Notă Didactică pentru Profesor**:
> Explicați conceptul de "marjă de zgomot": dacă albul este citit la 800, iar negrul la 3400, un prag de 2100 oferă o toleranță uriașă de peste 1300 de unități împotriva declanșărilor false.

---

## Slide 4: Algoritmica Urmăririi: Bang-Bang vs Control Proporțional

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Algoritmul simplist de tip Bang-Bang aplică doar două stări extreme: oprește complet un motor și accelerează la maximum celălalt motor de fiecare dată când atinge linia.
2. Această reacție bruscă provoacă o serpuire violentă pe traseu, pierderi mari de energie cinetică și riscul de a sări în decor pe virajele line de mare viteză.
3. Controlul proporțional (P-Controller) calculează turația motoarelor printr-o formulă matematică continuă, ajustând semnalele PWM în trepte line în funcție de cât de departe a alunecat linia.
4. Prin control proporțional diferențial, traiectoria robotului devine extrem de fluidă, asigurând viteze medii ridicate și stabilitate optimă pe circuitul orbital.

> **Notă Didactică pentru Profesor**:
> Faceți o paralelă cu condusul unei mașini reale: dacă la fiecare mică abatere ați braca volanul la maximum stânga sau dreapta, mașina ar derapa imediat; un șofer bun face corecții milimetrice fine.

---

## Slide 5: Recuperarea din Pierderea Liniei și Starea de Urgență

### 📖 Text Interactiv pentru Lectură cu Voce Tare la Tablă:
1. Într-o curbă foarte strânsă parcursă la viteză mare, forța centrifugă poate arunca robotul în afara benzii negre înainte ca senzorii să apuce să reacționeze.
2. Când ambii senzori citesc brusc valoarea de fundal alb, un program prost conceput continuă să accelereze drept înainte, pierzând definitiv contactul cu pista.
3. O arhitectură software robustă include o variabilă de memorie care reține direcția ultimei deviații înregistrate (stânga sau dreapta).
4. La intrarea în starea de urgență (Line Lost), robotul frânează și începe o rotație controlată pe loc spre ultima direcție cunoscută a liniei până când senzorul regăsește banda neagră.

> **Notă Didactică pentru Profesor**:
> Discutați conceptul de memorie de stare (State Memory): un sistem inteligent nu reacționează doar la prezentul imediat, ci folosește istoricul recent pentru a rezolva situațiile de criză.
