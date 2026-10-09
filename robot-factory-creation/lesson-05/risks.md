# Analiză de Risc Didactic & Tehnic (Pre-Mortem): Lecția 05 [RBF1.5]

Acest document reprezintă o analiză critică preventivă a potențialelor blocaje de înțelegere, capcane conceptuale și riscuri pedagogice pentru **Lecția 05: Metode de Măsurare a Distanței & Percepția Spațială în Robotică** din cursul *Robot Factory: Creation*.

---

## 1. Riscuri Conceptuale & de Înțelegere

| Risc Didactic Identificat | Severitate | Cauză Pedagogică | Soluție / Măsură Preventivă pentru Profesor |
| :--- | :---: | :--- | :--- |
| **Confuzia între undele luminoase (IR) și undele sonore (Ultrasunete)** | Medie | Elevii pot crede că ambele funcționează la fel, ignorând diferența uriașă de viteză ($300.000\text{ km/s}$ vs $343\text{ m/s}$). | Profesorul folosește analogia fulgerului și tunetului: vedem lumina instantaneu, dar sunetul călătorește mai încet prin aer. |
| **Neînțelegerea împărțirii la 2 în formula Time of Flight** | Medie | Elevii uită că unda sonoră parcurge drumul dus-întors și calculează o distanță dublă. | Demonstrație vizuală la tablă cu o minge aruncată într-un perete și prinsă înapoi: distanța este doar până la perete. |
| **Presupunerea că senzorul ultrasonic "vede" totul** | Medie | Elevii nu anticipează ricoșeul pe suprafețe înclinate la 45° sau absorbția pe burete. | Demonstrația fizică la catedră cu cele 3 eșantioane (suprafață dură, unghi ascuțit, burete poros). |

---

## 2. Riscuri de Gestionare a Clasei & Dinamică

| Risc de Dinamică | Impact | De Ce Apare? | Strategie de Salvare / Dinamică de Lucru |
| :--- | :---: | :--- | :--- |
| **Monotonia unei prezentări exclusiv teoretice** | Medie | Lipsa unei părți de asamblare practică poate duce la scăderea atenției dacă profesorul face un monolog lung. | Se folosesc experimentele demonstrative interactive la catedră și lectura cu voce tare din `presentation_interactive.md`. |
| **Discuții prelungite pe tema mașinilor autonome (LiDAR)** | Scăzută | Elevii sunt pasionați de mașini Tesla/Waymo și pot devia de la obiectivele lecției. | Profesorul canalizează entuziasmul către quiz-ul Kahoot de final ca provocare competitivă între echipe. |

---

## 3. Checklist Rapid de Verificare pentru Profesor (Quick Triage)

Înainte de încheierea orei, profesorul verifică înțelegerea elevilor:
1. [ ] **Diferențiere Clară**: Elevii pot numi diferența esențială dintre un bumper (contact fizic) și un sonar (fără contact).
2. [ ] **Limitarea IR**: Elevii știu de ce o suprafață neagră mată pune probleme senzorilor optici.
3. [ ] **Conceptul ToF**: Elevii pot explica ce înseamnă Time of Flight și de ce împărțim timpul la 2.
4. [ ] **Rezultate Quiz**: Peste 80% din răspunsurile la mini-quiz-ul Kahoot sunt corecte.
