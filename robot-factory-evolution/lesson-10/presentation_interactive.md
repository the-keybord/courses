# Prezentare Interactivă (Lectură la Tablă): Lecția 10 [RBF2.10] – Tranziția la Cloud CAD: Înrolarea în Onshape, Arhitectura Documentelor & Marea Asamblare a Geamănului Digital RF 2.0

---

## 🎨 Canva AI Master Prompt (Copy-Paste Ready)

> **Prompt pentru generare automată în Canva AI / Gamma:**
> Creează o prezentare didactică interactivă de lectură cu voce tare (format 16:9) pentru adolescenți de 11–15 ani la cursul avansat de robotică **Robot Factory: Evolution — Lecția 10 [RBF2.10]**.
> - **Stil vizual**: High-tech ingineresc, fundal dark slate (`#0F172A`), carduri lizibile cu contrast ridicat, accente de cyan electric (`#00E5FF`) și albastru cobalt (`#0047AB`).
> - **Format Conținut**: Fiecare slide conține exact 3 sau 4 propoziții numerotate clar (`1.`, `2.`, `3.`, `4.`), redactate cu text mare și aerisit, calibrate special pentru ca elevii din clasă să citească pe rând, cu voce tare, de la proiector.
> - Include secțiunea „Ghidul Profesorului (Discuție Interactivă)” sub fiecare slide pentru a stimula dialogul tehnic.

---

## Slide 1: Tranziția la Cloud CAD și Geamănul Digital RF 2.0

1. În acest nou sezon de robotică avansată, lăsăm în urmă programele CAD instalate pe hard disk și facem saltul către Onshape, o platformă profesională de proiectare 3D care rulează în totalitate în cloud.
2. Înainte de a tăia, găuri sau printa fizic componentele unui robot de competiție, inginerii moderni construiesc un geamăn digital complet pentru a verifica îmbinările și toleranțele mecanice.
3. Astăzi vom învăța cum se organizează un proiect în cloud, cum funcționează magneții mecanici inteligenți și cum integrăm șuruburi metrice standardizate direct în ansamblul nostru.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Întrebați clasa: *„Ce credeți că înseamnă termenul de Geamăn Digital (Digital Twin) și de ce agențiile spațiale precum NASA nu construiesc niciodată o sondă fizică înainte de a avea modelul 3D complet pe calculator?”*

---

## Slide 2: Identitatea Alianțelor Cromatice și Verificarea Temei

1. Fiecare alianță din divizia roboRangers are o identitate vizuală proprie, definită de o nuanță oficială unică și de un cod de culoare dedicat.
2. Numele fiecărui robot este configurat în codul Bluetooth sub formatul oficial compus din culoarea alianței și numele individual ales de proprietar.
3. Sigla de echipă desenată pentru acasă reprezintă simbolul mecatronic al alianței și va fi integrată ulterior chiar pe armura printată 3D a mașinii noastre.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Invitați reprezentantul Vanguard Ranger al primei alianțe să prezinte logo-ul desenat și să explice simbolurile tehnice alese de echipă.

---

## Slide 3: Revoluția Cloud CAD — De Ce Renunțăm la Programele Instalate?

1. Programele CAD tradiționale instalate pe calculator ocupă mulți gigaocteți, solicită puternic placa video și blochează activitatea prin actualizări neașteptate.
2. Platforma Onshape rulează direct în browserul web prin tehnologia WebGL, mutând calculele matematice grele pe centre mari de date din cloud.
3. Acest sistem ne permite să deschidem proiectul de pe orice computer, laptop sau tabletă fără a fi nevoie să instalăm vreun fișier local.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Cereți elevilor să își amintească situații în care un program instalat pe calculator s-a blocat din cauza plăcii video sau a solicitat actualizări lungi exact când aveau nevoie de el.

---

## Slide 4: Onshape versus Autodesk Fusion 360

1. În Fusion 360 suntem nevoiți să salvăm manual fișierele periodic, existând riscul de a pierde modificările dacă laptopul se închide neașteptat.
2. Onshape salvează automat fiecare acțiune la nivel de milisecundă, astfel încât butonul tradițional de salvare nici măcar nu există în interfață.
3. În plus, mai mulți membri ai aceleiași echipe pot lucra simultan în același ansamblu 3D în timp real, la fel cum colaborăm într-un document comun Google Docs.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Întrebați clasa: *„Cum ne ajută la orele de robotică faptul că putem lucra doi sau trei colegi în același spațiu 3D fără să ne blocăm fișierele unii altora?”*

---

## Slide 5: Structura unui Document — Part Studio versus Assembly

1. Un document Onshape funcționează ca un dosar inteligent care conține mai multe spații de lucru organizate în tab-uri pe bara de jos.
2. Tab-ul Part Studio este atelierul de desenare geometrică, unde generăm piese solide din schițe bidimensionale folosind comenzi precum extrudarea sau rotirea.
3. Tab-ul Assembly este linia mecanică de montaj, unde nu desenăm geometrii noi, ci unim piesele existente folosind conexiuni și grade de libertate.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Clarificați diferența: *„Dacă vrem să desenăm o flanșă nouă de plastic, în ce tab intrăm? Dar dacă vrem să punem șuruburile și roțile pe șasiu?”*

---

## Slide 6: Fizica Asamblărilor — Cele 6 Grade de Libertate și Comanda Fix

1. În spațiul tridimensional, orice piesă liberă dispune de șase grade de libertate: trei mișcări de translație pe axele principale și trei mișcări de rotație în jurul lor.
2. Pentru a construi un ansamblu mecanic stabil, prima piesă adusă în scenă trebuie imobilizată complet prin aplicarea comenzii Fix.
3. Șasiul principal devine astfel baza rigidă de referință a robotului, împiedicând întregul model să plutească haotic atunci când atașăm componente noi.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Arătați cu mâna cele 3 axe de mișcare (înainte-înapoi, stânga-dreapta, sus-jos) și cele 3 rotații aferente pentru a fixa vizual conceptul celor 6 grade de libertate.

---

## Slide 7: Magneții Inteligenți Fastened Mate și Mate Connectors

1. Spre deosebire de uneltele vechi care necesitau trei constrângeri separate, comanda Fastened Mate blochează toate cele șase grade de libertate printr-o singură acțiune.
2. Conexiunea se realizează prin puncte magnetice speciale numite Mate Connectors, plasate automat în centrele găurilor și fețelor circulare.
3. Dacă o piesă se poziționează invers sau răsucită, butoanele de inversare a axei primare și de rotire a axei secundare permit alinierea ei perfectă la nouăzeci de grade.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Demonstrați la proiector cum tasta Shift ajută la fixarea planului de lucru pentru a prinde exact centrul găurii de montaj.

---

## Slide 8: Feronerie Standardizată — Biblioteca Standard Content

1. În ingineria profesională nu desenăm manual șuruburile și piulițele, ci le inserăm direct dintr-o bibliotecă de componente standardizate internațional.
2. Notarea metrică M3 desemnează un șurub industrial cu profil metric și cu diametrul exterior al tijei filetate de exact trei milimetri.
3. Pentru motoarele robotului folosim șuruburi lungi de treizeci de milimetri asigurate cu piulițe, iar pentru plăcile electronice și suporturi folosim șuruburi scurte de opt sau zece milimetri.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Arătați șuruburile fizice reale din tavă: *„De ce credeți că este periculos să punem un șurub de 30 mm la placa electronică în loc de cel de 8 mm?”*

---

## Slide 9: Mașina Timpului în Inginerie — Controlul de Versiune

1. Onshape monitorizează permanent fiecare operațiune mecanică realizată, păstrând o evidență clară a tuturor modificărilor într-un arbore de istoric.
2. Atunci când finalizăm o etapă importantă de construcție, înghețăm starea proiectului prin crearea unei versiuni oficiale de reper.
3. O versiune marcată oficial rămâne protejată permanent împotriva ștergerilor accidentale, oferind siguranța că ne putem întoarce oricând la ea cu un singur click.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Discutați despre importanța salvării unor versiuni clare (`V1.0`, `V2.0`) atunci când lucrăm la proiecte inginerești complexe de lungă durată.

---

## Slide 10: Misiunea Practică — Marea Asamblare a Robotului RF 2.0

1. Fiecare cursant își va deschide propriul spațiu de lucru în Onshape și va începe prin ancorarea fermă a șasiului principal prin comanda Fix.
2. Vom căuta manual în biblioteca de componente standard șuruburile metrice M3 potrivite și piulițele hexagonale pentru fiecare element structural.
3. Vom îmbina motoarele, roțile, placa electronică și suporturile de senzori, asigurându-ne la final că nicio piesă nu poate fi deplasată liber cu mouse-ul.

> **Ghidul Profesorului (Discuție Interactivă)**:
> - Dați startul atelierului practic individual, reamintind că membrii alianței se pot consulta reciproc pentru identificarea șuruburilor corecte.

