# Analiză de Riscuri & Pre-Mortem: Lecția 00 [3DS2.0] – Atelier Deschis: Magia Imprimării 3D

Acest document reprezintă analiza de riscuri pedagogice și tehnice (conform **Regulii 14** din `AGENTS.md`), identificând potențialele blocaje, riscuri de copleșire tehnică sau întârzieri operaționale în livrarea primului atelier deschis de introducere (Open Workshop), alături de soluțiile preventive recomandate profesorului.

---

## 1. Puncte Critice & Riscuri de Fricțiune în Sală

### ⚠️ Risc 1: Blocaje de Conectare în Tinkercad la Prima Ședință
- **Ce poate eșua**: Părinții sau elevii noi încearcă să-și creeze conturi personale cu email, uită parolele sau intră pe linkuri greșite, pierzând primele 20 de minute din eveniment.
- **Soluție / Safeguard**:
  - Profesorul folosește exclusiv **Tinkercad Classroom** cu nickname-uri prestabilite generate din timp (`student1`, `student2`...) sau conturi de echipă (`echipa1`, `echipa2`...).
  - Nickname-ul și codul clasei sunt lipite pe monitoare sau scrise mare pe tablă pentru acces într-un singur clic.

---

### ⚠️ Risc 2: Întârzieri la Lansarea Primului Print pe Bambu Lab A1
- **Ce poate eșua**: Dacă profesorul așteaptă până la finalul celor 120 de minute pentru a aduna modelele și a porni imprimanta, printul nu se va termina în timpul evenimentului, iar copiii vor pleca fără să vadă magia piesei fizice ieșind de pe pat.
- **Soluție / Safeguard**:
  - Trecerea rapidă la modelarea primului breloc simplu în primele 20–30 de minute.
  - Profesorul preia rapid primele 4–6 brelocuri finalizate și lansează primul pat de printare devreme pe Bambu Lab A1, astfel încât mașina să lucreze în timp ce se prezintă teoria și modulele cursului.

---

### ⚠️ Risc 3: Copleșirea cu Prea Multe Unelte CAD dintr-o Dată
- **Ce poate eșua**: Explicarea tuturor uneltelor complexe (align, workplane, sim lab, shapes) la prima lecție poate speria copiii fără experiență digitală.
- **Soluție / Safeguard**:
  - Limitarea strictă la operațiile de bază: adăugare cub, adăugare cilindru orificiu (*Hole*), adăugare text și butonul **Group** (`Ctrl + G`).

---

### ⚠️ Risc 4: Supraaglomerarea la Imprimante și Probleme de Siguranță Termică
- **Ce poate eșua**: Copiii entuziasmați se îmbulzesc în jurul imprimantei Bambu Lab A1 în mișcare și ating duza încinsă la 210°C sau patul cald.
- **Soluție / Safeguard**:
  - Stabilirea clară a „Liniei de Siguranță a Laboratorului” la 1 metru distanță de imprimante.
  - Profesorul cheamă elevii în grupuri mici de câte 2–3 pentru a observa mișcarea capului de printare.

---

## 2. Tabel Rapid de Verificare pentru Profesor (Quick Checklist)

| Etapă | Ce verifici la fiecare echipă? | Indicator de Succes |
| :--- | :--- | :--- |
| **Logare Clasă** | Fiecare elev este logat în Tinkercad Classroom? | Proiectul este vizibil pe panoul profesorului în timp real. |
| **Breloc 3D** | Numele este lipit pe bază și orificiul pentru inel este decupat? | Piesa devine o singură culoare solidă după comanda `Group`. |
| **Lansare Print** | Primul lot de modele a fost trimis către Bambu Lab A1? | Imprimanta a început depunerea primului strat (first layer). |
| **Atmosferă & Quiz** | Toți copiii participă cu entuziasm la Kahoot? | Competiție prietenoasă și recapitulare a celor 4 module. |
