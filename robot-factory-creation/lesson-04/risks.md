# Analiză de Riscuri & Pre-Mortem: Lecția 04 – Rețele Senzoriale & Afișaj Inteligent

Acest document reprezintă analiza de riscuri pedagogice și tehnice (conform **Regulii 14** din `AGENTS.md`), identificând potențialele blocaje, erori de cablare pe breadboard sau confuzii logice în livrarea reală la clasă a Lecției 04, alături de soluțiile preventive recomandate profesorului.

---

## 1. Puncte Critice & Riscuri de Fricțiune în Sală

### ⚠️ Risc 1: Conectarea Gresită a Senzorului Ultrasonic (Inversare Echo / Trig)
- **Ce poate eșua**: Elevii inversează pinul $Echo$ cu $Trig$ pe shield sau folosesc un pin digital care nu este configurat în codul MakeCode. Rezultatul: senzorul va citi permanent distanța `0 cm` sau `255 cm`, iar robotul nu va reacționa la obstacole.
- **Soluție / Safeguard**:
  - Profesorul explică diferența funcțională: $Trig$ = difuzor (emite sunetul), $Echo$ = microfon (recepționează ecoul).
  - Verificare vizuală pe culori: $VCC$ (roșu, 5V), $GND$ (negru), $Trig$ (galben pe pinul P1), $Echo$ (verde pe pinul P2).

---

### ⚠️ Risc 2: Blocajul în Bucle Infinit fără Pauze (Missing Delays in MakeCode)
- **Ce poate eșua**: În bucla principală `forever`, elevii citesc senzorul ultrasonic și actualizează ecranul LED la fiecare milisecundă fără o scurtă pauză (`pause 50 ms`). Microcontrolerul se blochează din cauza fluxului prea rapid de cereri de ecou ultrasonic.
- **Soluție / Safeguard**:
  - Regula standard: în orice buclă de citire a senzorilor se adaugă un bloc `pause 50–100 ms` pentru a permite undei sonore să călătorească și să se disipeze.

---

### ⚠️ Risc 3: Contacte Imperfecte pe Breadboard sau Conectori Slăbiți
- **Ce poate eșua**: Firele jumper wires sunt introduse în coloane adiacente greșite pe breadboard (diferență de 1 pas de pitch / 2.54 mm) sau nu fac contact ferm în pini.
- **Soluție / Safeguard**:
  - Profesorul demonstrează structura internă a liniilor de cupru din breadboard (conectate pe verticală în coloane de câte 5 pini).
  - Elevii testează continuitatea apăsând ferm pe jumper wires dacă valorile afișate pe matrice fluctuează la atingere.

---

### ⚠️ Risc 4: Supraîncărcarea Matricei LED cu Text Derulant Prea Lung
- **Ce poate eșua**: Elevii pun blocul `show string "Obstacol detectat!"` în interiorul buclei `forever`. Derularea textului durează 5 secunde, timp în care microcontrolerul nu mai citește senzorul, iar robotul se lovește de perete.
- **Soluție / Safeguard**:
  - În buclele de reacție rapidă se folosesc **icoane statice** (`show icon`) sau **numere scurte** (`show number`), iar textele derulante se evită în timpul mișcării autonome.

---

## 2. Tabel Rapid de Verificare pentru Profesor (Quick Checklist)

| Etapă | Ce verifici la fiecare elev? | Indicator de Succes |
| :--- | :--- | :--- |
| **Cablare Ultrasonic** | $VCC$ este la 5V, $GND$ la masă, $Trig$ și $Echo$ pe pini separați? | LED-ul de alimentare de pe senzor este aprins și nu se încălzește. |
| **Bloc MakeCode** | Extensia corectă pentru sonar este adăugată în proiect? | Blocul `ping trig P1 echo P2 in cm` returnează distanța reală. |
| **Pauză în Buclă** | Există un bloc `pause (50) ms` în interiorul buclei `forever`? | Afișajul nu pâlpâie haotic, iar citirile sunt stabile. |
| **Afișaj Grafic** | Matricea LED afișează o pictogramă clară la distanță sub 15 cm? | Reacția vizuală se produce instantaneu când apropiem mâna de senzor. |
