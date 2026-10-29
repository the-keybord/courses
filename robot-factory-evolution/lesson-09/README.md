# Lecția 09 [RBF2.9]: Formarea Alianțelor Cromatice roboRangers, Testarea Izolată a Senzorilor (IR & Ultrasonic) și Pianul Wireless BLE în `RBFesp`

---

## 1. Informații Generale & Întrebări Esențiale

- **Cod Lecție**: RBF2.9
- **Modul**: Alianțe Mecatronice, Integrare Senzorială Pas cu Pas & Control Audio prin Evenimente BLE (`RBFesp`)
- **Vârsta Țintă**: 11 – 15 ani (Nivelul 2 – Evolution)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Lecția începe cu o scurtă recapitulare a arhitecturii de programare modulară **[RBFesp](https://github.com/the-keybord/espwasd/tree/main/RBFesp)** (studiată în lecția anterioară), urmată de completarea sondajului de competențe, formarea alianțelor de 2–3 membri (`Forge Ranger`, `Cyber Ranger`, `Vanguard Ranger`), botezarea fiecărui robot individual și alegerea nuanței oficiale din catalogul celor **30 de Alianțe Cromatice (Hue Alliances + coduri `#HEX`)**. În partea a doua, elevii învață să conecteze fizic și să programeze **pe rând, câte unul singur (fără a le amesteca în același cod)**: **1) Senzorul optic de linie IR**, **2) Senzorul ultrasonic de distanță (`HC-SR04`)** și **3) Modulul Buzzer pasiv**. Lecția culminează cu transformarea telecomenzii Web Bluetooth într-un **Pian Muzical Wireless**, controlat în timp real prin funcția `event.isPressed()`.
- **Proiect Practic**:
  1. Formarea Alianței Cromatice și setarea identității `#define BLUETOOTH_NAME "Culoare_NumeRobot"` în `RBFesp.ino`.
  2. Conectarea și testarea individuală a senzorului IR de linie și a senzorului ultrasonic în `ButtonHandler.h`, cu afișarea valorilor pe consola wireless `monitor.println()`.
  3. Construirea **Pianului Wireless Bluetooth**: conectarea buzzer-ului și programarea tastelor din interfața Web Bluetooth pentru a cânta note muzicale (`DO, RE, MI, FA, SOL, LA, SI, DO`) cât timp tasta este ținută apăsată (`event.isPressed()`) și oprirea sunetului la eliberare (`noTone()`).

### Întrebări Esențiale:
1. De ce, atunci când adăugăm componente hardware noi pe un robot (senzor IR, senzor ultrasonic, buzzer), regula de aur a inginerilor este să le conectăm și să le testăm **câte unul pe rând**, în programe separate, înainte de a le combina?
2. Cum citește microcontrolerul ESP32 starea unui senzor optic infraroșu de linie (`digitalRead`) și cum putem vedea rezultatul direct pe ecranul telefonului/laptopului prin `monitor.println()` fără cablu USB?
3. Cum măsoară senzorul ultrasonic `HC-SR04` distanța în centimetri folosind pinii `TRIG` (declanșare impuls de 10 microsecunde) și `ECHO` (`pulseIn`)?
4. Cum transformă un buzzer pasiv semnalele electrice de diferite frecvențe (măsurate în Hertzi — `Hz`) în note muzicale distincte (`262 Hz` = DO, `440 Hz` = LA)?
5. De ce funcția `event.isPressed()` din `RBFesp` este ideală pentru construirea unui pian real (nota sună cât timp ții degetul apăsat pe tastă și se oprește în clipa în care ridici degetul)?

### 🔗 Resurse & Linkuri Utile
- **Cod Sursă Oficial `RBFesp` (GitHub)**: https://github.com/the-keybord/espwasd/tree/main/RBFesp
- **Arhivă Descărcare Directă `RBFesp.zip`**: https://raw.githubusercontent.com/the-keybord/espwasd/main/RBFesp.zip
- **Interfața Web Bluetooth Controller (`index.html`)**: https://github.com/the-keybord/espwasd
- **Prezentare**: https://canva.com/
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Configurare Digitală
- [ ] Arduino IDE deschis pe stațiile de lucru, cu proiectul **`RBFesp`** pregătit din lecția anterioară (`RBFesp.ino`, `RemoteCore.h`, `ButtonHandler.h`, `p1.h`–`p4.h`).
- [ ] Interfața Web Bluetooth (`index.html` din repository-ul `espwasd`) deschisă în browserul **Google Chrome** sau **Microsoft Edge**.
- [ ] Sondajul de abilități (`materials/skills_survey.md`) pregătit în format tipărit sau în Google Forms.
- [ ] Quiz-ul Kahoot de 10 întrebări teoretice pregătit pentru finalul sesiunii.

### Hardware & Componente pentru Fiecare Elev
- [ ] Robotul individual **RF 2.0** cu placa ESP32 montată pe Expansion Shield.
- [ ] **1 x Modul Senzor Optic IR de Linie** (`TCRT5000` cu 3 pini: `VCC`, `GND`, `OUT`/`DO`) + 3 cabluri DuPont F-F.
- [ ] **1 x Senzor Ultrasonic de Distanță** (`HC-SR04` cu 4 pini: `VCC`, `TRIG`, `ECHO`, `GND`) + 4 cabluri DuPont F-F.
- [ ] **1 x Modul Buzzer Pasiv** (cu 2 sau 3 pini: `GND`/`-`, `VCC`, `I/O` sau `S`) + cabluri DuPont F-F.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:10** | **1. Recapitulare Rapidă `RBFesp`** | Reamintirea rapidă a structurii `RBFesp` din lecția trecută: unde schimbăm numele Bluetooth (`RBFesp.ino`), cum funcționează `userSetup()`, `onButton(KeyEvent event)`, `event.isPressed()` și `monitor.println()` în `ButtonHandler.h`. |
| **00:10 – 00:30** | **2. Sondajul de Abilități, Botezul Roboților & Alianțele Cromatice (`roboRangers`)** | Completarea sondajului (`materials/skills_survey.md`), formarea echipelor de 2–3 membri (`Forge`, `Cyber`, `Vanguard`), alegerea nuanței din cele **30 de Alianțe Cromatice (`#HEX`)**, botezarea fiecărui robot și actualizarea `#define BLUETOOTH_NAME`. |
| **00:30 – 00:50** | **3. Laborator Pasul 1 (Izolat): Conectarea și Programarea Senzorului IR de Linie** | Explicație + cablare pas cu pas a senzorului IR (`VCC`, `GND`, `DO -> GPIO 32`) și scrierea unui program curat în `ButtonHandler.h` care testează exclusiv senzorul IR la apăsarea tastei `Q`. |
| **00:50 – 01:15** | **4. Laborator Pasul 2 (Izolat): Conectarea și Programarea Senzorului Ultrasonic `HC-SR04`** | Explicație + cablare pas cu pas a senzorului ultrasonic (`TRIG -> GPIO 18`, `ECHO -> GPIO 19`) și înlocuirea codului din `ButtonHandler.h` cu un program dedicat exclusiv măsurării distanței în `cm` la apăsarea tastei `E`. |
| **01:15 – 01:45** | **5. Laborator Pasul 3 & Finalul Lecției: Buzzer-ul și Pianul Wireless cu `event.isPressed()`** | Conectarea buzzer-ului (`GPIO 23`), explicarea frecvențelor muzicale (`Hz`) și programarea **Pianului Wireless BLE** în `ButtonHandler.h` folosind `event.isPressed()` pe tastele din browser, urmată de mini-concertul alianțelor. |
| **01:45 – 01:55** | **6. Quiz Kahoot Interactiv** | Verificare rapidă de 10 întrebări despre alianțele cromatice, senzorul IR, senzorul ultrasonic, frecvențele buzzer-ului și logica `event.isPressed()` (conform `quiz.md`). |
| **01:55 – 02:00** | **7. Încheiere & Organizarea Bancului** | Salvarea codului pianului wireless, deconectarea alimentării și ordonarea senzorilor în cutii. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Scurtă Recapitulare a Arhitecturii `RBFesp` (10 min)
Profesorul deschide pe proiector proiectul **[RBFesp](https://github.com/the-keybord/espwasd/tree/main/RBFesp)** lucrat în lecția anterioară și face o verificare rapidă de 5 minute împreună cu clasa:
- **Întrebare rapidă 1**: *„În care dintre cele 7 tab-uri schimbăm numele Bluetooth al robotului nostru?”* -> Răspuns: În **`RBFesp.ino`**, la linia 24 (`#define BLUETOOTH_NAME "..."`).
- **Întrebare rapidă 2**: *„În ce fișier scriem codul care reacționează la tastele apăsate în browser?”* -> Răspuns: În **`ButtonHandler.h`**, în interiorul funcției `void onButton(KeyEvent event)`.
- **Întrebare rapidă 3**: *„Ce funcție ne spune că o tastă este ținută apăsată chiar acum și ce obiect ne trimite mesaje text pe ecranul din browser?”* -> Răspuns: `event.isPressed('W')` verifică apăsarea, iar `monitor.println("...")` trimite textul prin Bluetooth direct pe telefon sau laptop!

Profesorul anunță misiunea zilei:
*"Astăzi ne formăm oficial **Alianțele Cromatice de Competiție**, botezăm fiecare robot, iar apoi îi dăm robotului simțuri și voce! Vom conecta pe rând **senzorul de linie IR**, **senzorul ultrasonic** și **buzzer-ul**. Ca adevărați ingineri, **nu le vom amesteca pe toate deodată**: vom conecta și programa câte o singură componentă pe rând, iar la finalul lecției vom construi un **Pian Wireless prin Bluetooth** folosind buzzer-ul și funcția `event.isPressed()`!"*

---

### Pasul 2: Sondajul de Abilități, Botezarea Roboților & Alianțele Cromatice (Hue Alliances) (20 min)

Elevii completează rapid chestionarul din `materials/skills_survey.md` (pe foaie sau în Google Forms), evaluându-și de la 1 la 5 pasiunea pentru:
- **Secțiunea I**: Mecanică, șasiu, cablaje și montaj senzori (**Forge Ranger**).
- **Secțiunea II**: Programare C++, firmware `RBFesp` și logică de senzori (**Cyber Ranger**).
- **Secțiunile III & IV**: Identitate cromatică `#HEX`, pilotaj în browser și strategie (**Vanguard Ranger**).

#### Formarea Echipelor și Regula Dublă de Identitate:
1. Profesorul formează **Alianțe de 2–3 membri** echilibrate (câte un `Forge Ranger`, un `Cyber Ranger` și un `Vanguard Ranger`).
2. **1 Robot Per Elev**: Fiecare membru al alianței lucrează pe propriul său robot fizic și își alege un **nume individual pentru robot** (ex: *Viper*, *Bolt*, *Nova*, *Shadow*, *Echo*, *Pulse*).
3. **Numele Alianței este STRICT o Culoare / Nuanță Oficială (`Hue Alliance`)**: Fiecare echipă își alege o culoare unică din catalogul celor **30 de Alianțe Cromatice**, împreună cu codul ei **`#HEX`**:

| Nr. | Nume Oficial Alianță (Hue Alliance) | Nuanța în Română | Mostră Culoare | Cod `HEX` | Descriere Vizuală (RGB) |
| :---: | :--- | :--- | :---: | :---: | :--- |
| **01** | **SkyBlue Alliance** | Albastru Senin (Cer de Vară) | <span style="display:inline-block;width:64px;height:20px;background-color:#87CEEB;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#87CEEB](https://placehold.co/18x18/87CEEB/87CEEB.png) | `#87CEEB` | `RGB(135, 206, 235)` — Albastru deschis aerodinamic |
| **02** | **Scarlet Alliance** | Roșu Stacojiu Intens | <span style="display:inline-block;width:64px;height:20px;background-color:#FF2400;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FF2400](https://placehold.co/18x18/FF2400/FF2400.png) | `#FF2400` | `RGB(255, 36, 0)` — Roșu aprins de curse |
| **03** | **Yellow Alliance** | Galben Solar / Auriu | <span style="display:inline-block;width:64px;height:20px;background-color:#FFD700;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FFD700](https://placehold.co/18x18/FFD700/FFD700.png) | `#FFD700` | `RGB(255, 215, 0)` — Galben strălucitor de mare vizibilitate |
| **04** | **Mint Alliance** | Verde Mentă Proaspăt | <span style="display:inline-block;width:64px;height:20px;background-color:#3EB489;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#3EB489](https://placehold.co/18x18/3EB489/3EB489.png) | `#3EB489` | `RGB(62, 180, 137)` — Verde-mentă modern |
| **05** | **Cobalt Alliance** | Albastru Cobalt Regal | <span style="display:inline-block;width:64px;height:20px;background-color:#0047AB;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#0047AB](https://placehold.co/18x18/0047AB/0047AB.png) | `#0047AB` | `RGB(0, 71, 171)` — Albastru tehnic profund |
| **06** | **Crimson Alliance** | Roșu Carmin Profund | <span style="display:inline-block;width:64px;height:20px;background-color:#DC143C;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#DC143C](https://placehold.co/18x18/DC143C/DC143C.png) | `#DC143C` | `RGB(220, 20, 60)` — Roșu rubiniu nobil |
| **07** | **Emerald Alliance** | Verde Smarald | <span style="display:inline-block;width:64px;height:20px;background-color:#50C878;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#50C878](https://placehold.co/18x18/50C878/50C878.png) | `#50C878` | `RGB(80, 200, 120)` — Verde cristalin intens |
| **08** | **Amber Alliance** | Portocaliu Chihlimbar | <span style="display:inline-block;width:64px;height:20px;background-color:#FFBF00;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FFBF00](https://placehold.co/18x18/FFBF00/FFBF00.png) | `#FFBF00` | `RGB(255, 191, 0)` — Galben-portocaliu industrial |
| **09** | **Cyan Alliance** | Cyan Electric | <span style="display:inline-block;width:64px;height:20px;background-color:#00E5FF;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#00E5FF](https://placehold.co/18x18/00E5FF/00E5FF.png) | `#00E5FF` | `RGB(0, 229, 255)` — Albastru-turcoaz laser |
| **10** | **Magenta Alliance** | Magenta Neon | <span style="display:inline-block;width:64px;height:20px;background-color:#FF00FF;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FF00FF](https://placehold.co/18x18/FF00FF/FF00FF.png) | `#FF00FF` | `RGB(255, 0, 255)` — Roz-purpuriu electric |
| **11** | **Violet Alliance** | Violet Electric | <span style="display:inline-block;width:64px;height:20px;background-color:#8F00FF;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#8F00FF](https://placehold.co/18x18/8F00FF/8F00FF.png) | `#8F00FF` | `RGB(143, 0, 255)` — Violet spectral intens |
| **12** | **Coral Alliance** | Portocaliu Coral | <span style="display:inline-block;width:64px;height:20px;background-color:#FF7F50;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FF7F50](https://placehold.co/18x18/FF7F50/FF7F50.png) | `#FF7F50` | `RGB(255, 127, 80)` — Portocaliu-roz cald |
| **13** | **Teal Alliance** | Albastru Petrol (Teal) | <span style="display:inline-block;width:64px;height:20px;background-color:#008080;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#008080](https://placehold.co/18x18/008080/008080.png) | `#008080` | `RGB(0, 128, 128)` — Culoare oceanică profundă |
| **14** | **Indigo Alliance** | Indigo Nocturn | <span style="display:inline-block;width:64px;height:20px;background-color:#4B0082;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#4B0082](https://placehold.co/18x18/4B0082/4B0082.png) | `#4B0082` | `RGB(75, 0, 130)` — Albastru-violet cosmic |
| **15** | **Lime Alliance** | Verde Lime Neon | <span style="display:inline-block;width:64px;height:20px;background-color:#32CD32;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#32CD32](https://placehold.co/18x18/32CD32/32CD32.png) | `#32CD32` | `RGB(50, 205, 50)` — Verde energic fosforescent |
| **16** | **Tangerine Alliance** | Portocaliu Mandarină | <span style="display:inline-block;width:64px;height:20px;background-color:#F28500;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#F28500](https://placehold.co/18x18/F28500/F28500.png) | `#F28500` | `RGB(242, 133, 0)` — Portocaliu dinamic |
| **17** | **Ruby Alliance** | Roșu Rubin | <span style="display:inline-block;width:64px;height:20px;background-color:#E0115F;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#E0115F](https://placehold.co/18x18/E0115F/E0115F.png) | `#E0115F` | `RGB(224, 17, 95)` — Roșu-ciclamen prețios |
| **18** | **Sapphire Alliance** | Albastru Safir | <span style="display:inline-block;width:64px;height:20px;background-color:#0F52BA;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#0F52BA](https://placehold.co/18x18/0F52BA/0F52BA.png) | `#0F52BA` | `RGB(15, 82, 186)` — Albastru metalic intens |
| **19** | **Jade Alliance** | Verde Jad Imperial | <span style="display:inline-block;width:64px;height:20px;background-color:#00A86B;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#00A86B](https://placehold.co/18x18/00A86B/00A86B.png) | `#00A86B` | `RGB(0, 168, 107)` — Verde mineral dens |
| **20** | **Amethyst Alliance** | Mov Ametist | <span style="display:inline-block;width:64px;height:20px;background-color:#9966CC;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#9966CC](https://placehold.co/18x18/9966CC/9966CC.png) | `#9966CC` | `RGB(153, 102, 204)` — Mov-liliachiu satinat |
| **21** | **Turquoise Alliance** | Turcoaz Marin | <span style="display:inline-block;width:64px;height:20px;background-color:#40E0D0;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#40E0D0](https://placehold.co/18x18/40E0D0/40E0D0.png) | `#40E0D0` | `RGB(64, 224, 208)` — Acvamarin luminos |
| **22** | **Chartreuse Alliance** | Verde-Gălbui Volt | <span style="display:inline-block;width:64px;height:20px;background-color:#7FFF00;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#7FFF00](https://placehold.co/18x18/7FFF00/7FFF00.png) | `#7FFF00` | `RGB(127, 255, 0)` — Galben-verde sportiv |
| **23** | **Maroon Alliance** | Vișiniu Bordeaux | <span style="display:inline-block;width:64px;height:20px;background-color:#800000;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#800000](https://placehold.co/18x18/800000/800000.png) | `#800000` | `RGB(128, 0, 0)` — Roșu închis imperial |
| **24** | **Navy Alliance** | Bleumarin Amiral | <span style="display:inline-block;width:64px;height:20px;background-color:#000080;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#000080](https://placehold.co/18x18/000080/000080.png) | `#000080` | `RGB(0, 0, 128)` — Albastru marin clasic |
| **25** | **Olive Alliance** | Verde Măsliniu Tactic | <span style="display:inline-block;width:64px;height:20px;background-color:#808000;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#808000](https://placehold.co/18x18/808000/808000.png) | `#808000` | `RGB(128, 128, 0)` — Verde militar camuflaj |
| **26** | **Peach Alliance** | Piersică Pastel | <span style="display:inline-block;width:64px;height:20px;background-color:#FFCBA4;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#FFCBA4](https://placehold.co/18x18/FFCBA4/FFCBA4.png) | `#FFCBA4` | `RGB(255, 203, 164)` — Portocaliu-crem luminos |
| **27** | **Lavender Alliance** | Mov Lavandă | <span style="display:inline-block;width:64px;height:20px;background-color:#B57EDC;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#B57EDC](https://placehold.co/18x18/B57EDC/B57EDC.png) | `#B57EDC` | `RGB(181, 126, 220)` — Violet deschis pastelat |
| **28** | **Slate Alliance** | Gri-Albăstrui Ardezie | <span style="display:inline-block;width:64px;height:20px;background-color:#708090;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#708090](https://placehold.co/18x18/708090/708090.png) | `#708090` | `RGB(112, 128, 144)` — Gri oțel industrial |
| **29** | **Silver Alliance** | Argintiu Metalizat | <span style="display:inline-block;width:64px;height:20px;background-color:#C0C0C0;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#C0C0C0](https://placehold.co/18x18/C0C0C0/C0C0C0.png) | `#C0C0C0` | `RGB(192, 192, 192)` — Gri titan cromat |
| **30** | **Obsidian Alliance** | Negru Obsidian Mat | <span style="display:inline-block;width:64px;height:20px;background-color:#1B1B1B;border:1px solid #555;border-radius:4px;vertical-align:middle;"></span> ![#1B1B1B](https://placehold.co/18x18/1B1B1B/1B1B1B.png) | `#1B1B1B` | `RGB(27, 27, 27)` — Negru carbon stealth |

4. Imediat după alegerea culorii alianței și a numelui robotului, fiecare elev deschide tab-ul **`RBFesp.ino`** și actualizează linia 24:
   ```cpp
   #define BLUETOOTH_NAME "Scarlet_Viper"
   ```

---

### Pasul 3: Experimentul 1 (Izolat) — Conectarea și Programarea Senzorului Optic de Linie IR (20 min)

> **Regula de Aur a Laboratorului de Azi**: Conectăm și programăm **câte un singur senzor pe rând**! Nu amestecăm toți senzorii în același cod, pentru a înțelege clar cum funcționează fiecare componentă și a depana ușor orice fir.

#### 3.1. Cum Conectăm Fizic Senzorul IR (`TCRT5000`) la Placa ESP32 (Pas cu Pas)
Profesorul arată la cameră/proiector modulul senzorului IR cu 3 pini (sau 4 pini, folosind ieșirea digitală `DO` / `OUT`):
1. **Opriți alimentarea plăcii ESP32** înainte de a conecta firele!
2. Luați 3 cabluri DuPont Mamă-Mamă (`F-F`) și conectați pinii senzorului IR la placa de extensie ESP32 astfel:
   - Pinul **`VCC`** (sau `+`) al senzorului IR -> la un pin **`3.3V`** (sau `5V`) de pe placa de extensie ESP32.
   - Pinul **`GND`** (sau `-`) al senzorului IR -> la un pin **`GND`** (rândul negru) de pe placa de extensie ESP32.
   - Pinul **`DO`** (sau **`OUT`**) al senzorului IR -> la pinul digital **`GPIO 32`** de pe placa de extensie ESP32.
3. Porniți placa: LED-ul de alimentare de pe modulul IR se aprinde, iar când apropiați degetul sau o suprafață albă de vârful senzorului, al doilea LED indicator de pe modul se aprinde/stinge!

#### 3.2. Programarea Izolată a Senzorului IR în `ButtonHandler.h`
Elevii deschid tab-ul **`ButtonHandler.h`** și scriu un program scurt care citește **exclusiv senzorul IR** atunci când apasă tasta **`Q`** în browser:

```cpp
#pragma once
#include "RemoteCore.h"

// Experimentul 1: Doar Senzorul IR de Linie conectat la GPIO 32
const int PIN_IR = 32;

void userSetup() {
  pinMode(PIN_IR, INPUT);
}

void onButton(KeyEvent event) {
  // Cand apasam tasta Q in browser, citim senzorul IR si trimitem starea pe ecran
  if (event.isPressed('Q')) {
    int valoareIR = digitalRead(PIN_IR);

    if (valoareIR == HIGH) {
      monitor.println("Senzor IR: LINIE NEAGRA detectata! (1)");
    } else {
      monitor.println("Senzor IR: Suprafata ALBA reflectiva! (0)");
    }
  }
}
```
- **Testare Practică**: Elevii încarcă programul (`Upload`), se conectează din browser (`index.html`), țin senzorul deasupra mesei albe și apasă tasta **`Q`**, apoi îl pun deasupra unei benzi negre izoler și apasă din nou **`Q`**, urmărind mesajele din consola Bluetooth!

---

### Pasul 4: Experimentul 2 (Izolat) — Conectarea și Programarea Senzorului Ultrasonic `HC-SR04` (25 min)

După ce toată lumea a reușit testul cu senzorul IR, trecem la a doua componentă, tratată tot individual.

#### 4.1. Cum Conectăm Fizic Senzorul Ultrasonic (`HC-SR04`) la Placa ESP32 (Pas cu Pas)
Profesorul prezintă „ochii de liliac” ai robotului — senzorul ultrasonic `HC-SR04` cu cei **4 pini** ai săi:
1. **Opriți alimentarea plăcii ESP32** pe durata cablării.
2. Luați 4 cabluri DuPont Mamă-Mamă (`F-F`) și conectați:
   - Pinul **`VCC`** -> la pinul **`5V`** de pe placa de extensie ESP32 (senzorul `HC-SR04` are nevoie de 5V pentru a emite un impuls acustic puternic).
   - Pinul **`GND`** -> la pinul **`GND`** (masă).
   - Pinul **`TRIG`** (Trigger / Difuzorul care lansează ultrasunetul) -> la pinul **`GPIO 18`**.
   - Pinul **`ECHO`** (Microfonul care ascultă ecoul întors) -> la pinul **`GPIO 19`**.

#### 4.2. Cum Funcționează și Cum Programăm Senzorul Ultrasonic în `ButtonHandler.h`
Profesorul explică pe scurt: *„Dăm un impuls scurt de 10 microsecunde pe `TRIG`, apoi măsurăm cu `pulseIn(PIN_ECHO, HIGH)` câte microsecunde a călătorit sunetul dus-întors. Înmulțim durata cu viteza sunetului (`0.034 cm/microsecundă`) și împărțim la `2` (pentru că sunetul a făcut drumul dus și întors)!”*

Elevii înlocuiesc codul din **`ButtonHandler.h`** cu programul dedicat **exclusiv senzorului ultrasonic**:

```cpp
#pragma once
#include "RemoteCore.h"

// Experimentul 2: Doar Senzorul Ultrasonic HC-SR04
const int PIN_TRIG = 18;
const int PIN_ECHO = 19;

// Functie care masoara si returneaza distanta in centimetri
long citesteDistantaCm() {
  // 1. Asiguram ca TRIG este LOW
  digitalWrite(PIN_TRIG, LOW);
  delayMicroseconds(2);

  // 2. Trimitem un impuls ultrasonic de 10 microsecunde
  digitalWrite(PIN_TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(PIN_TRIG, LOW);

  // 3. Masuram durata ecoului (timeout 30000 us = ~5 metri)
  long durata = pulseIn(PIN_ECHO, HIGH, 30000);

  if (durata == 0) {
    return -1; // Niciun obstacol in raza senzorului
  }

  // 4. Calculam distanta in cm
  long distanta = durata * 0.034 / 2;
  return distanta;
}

void userSetup() {
  pinMode(PIN_TRIG, OUTPUT);
  pinMode(PIN_ECHO, INPUT);
}

void onButton(KeyEvent event) {
  // Cand apasam tasta E in browser, masuram distanta cu senzorul ultrasonic
  if (event.isPressed('E')) {
    long cm = citesteDistantaCm();

    if (cm < 0) {
      monitor.println("Ultrasonic: Drum liber (niciun obstacol)!");
    } else {
      monitor.println("Distanta pana la obstacol (cm): ", cm);
    }
  }
}
```
- **Testare Practică**: Elevii încarcă programul, pun palma sau o carte la `10 cm`, `20 cm` și `50 cm` în fața senzorului și apasă tasta **`E`** în browser, verificând precizia măsurătorii pe ecran!

---

### Pasul 5: Experimentul 3 & Proiectul Final — Buzzer-ul și Pianul Wireless cu `event.isPressed()` (30 min)

Acum trecem la cea mai distractivă parte a lecției: conectăm **modulul Buzzer** și construim un **Pian Muzical Wireless** controlat direct din butoanele browserului!

#### 5.1. Cum Conectăm Fizic Buzzer-ul la Placa ESP32 (Pas cu Pas)
1. **Opriți alimentarea plăcii ESP32** înainte de conectare.
2. Verificați pinii modulului Buzzer:
   - Dacă este un **modul cu 3 pini (`GND` / `-`, `VCC`, `I/O` sau `S`)**:
     - Pinul **`GND`** (sau **`-`**) -> la **`GND`** pe placa ESP32.
     - Pinul **`VCC`** (mijloc) -> la **`3.3V`** pe placa ESP32.
     - Pinul **`I/O`** (sau **`S`** / **`+`**) -> la pinul **`GPIO 23`** pe placa ESP32.
   - Dacă este un **buzzer pasiv cu 2 pini (`-` și `+`)**:
     - Pinul **`-`** (scurt) -> la **`GND`**.
     - Pinul **`+`** (lung) -> la **`GPIO 23`**.

#### 5.2. Cum Cântă un Buzzer Note Muzicale și Rolul `event.isPressed()`
- Un buzzer pasiv primește o frecvență în **Hertzi (`Hz`)** prin funcția `tone(PIN_BUZZER, frecventa)` și își oprește vibrația când apelăm `noTone(PIN_BUZZER)`.
- **Frecvențele celor 8 note din gama DO Major**:
  - **DO (`C4`)** = `262 Hz`
  - **RE (`D4`)** = `294 Hz`
  - **MI (`E4`)** = `330 Hz`
  - **FA (`F4`)** = `349 Hz`
  - **SOL (`G4`)** = `392 Hz`
  - **LA (`A4`)** = `440 Hz`
  - **SI (`B4`)** = `494 Hz`
  - **DO de sus (`C5`)** = `523 Hz`
- **Secretul unui Pian Adevărat cu `event.isPressed()`**:
  - La un pian real, coarda sună **atât timp cât ții clapa apăsată** și tace **în clipa în care ridici degetul**!
  - În `RBFesp`, fiecare tastă din `onButton(KeyEvent event)` ne oferă exact această pereche:
    - În blocul `if (event.isPressed('W'))` -> pornim nota cu `tone(PIN_BUZZER, 262);`
    - În blocul `else` (când tasta este eliberată!) -> oprim sunetul cu `noTone(PIN_BUZZER);`

#### 5.3. Codul Complet pentru Pianul Wireless Bluetooth în `ButtonHandler.h`
Elevii scriu în **`ButtonHandler.h`** programul Pianului Wireless cu 8 clape (folosind tastele `W, A, S, D` pentru primele 4 note și `Q, E, R, F` pentru următoarele 4 note):

```cpp
#pragma once
#include "RemoteCore.h"

// Proiectul Final al Lectiei: Pianul Wireless cu Buzzer pe GPIO 23
const int PIN_BUZZER = 23;

// Frecventele notelor muzicale in Hz (Gama DO Major)
const int NOTA_DO  = 262;
const int NOTA_RE  = 294;
const int NOTA_MI  = 330;
const int NOTA_FA  = 349;
const int NOTA_SOL = 392;
const int NOTA_LA  = 440;
const int NOTA_SI  = 494;
const int NOTA_DO2 = 523;

void userSetup() {
  pinMode(PIN_BUZZER, OUTPUT);
}

void onButton(KeyEvent event) {
  // Clapa 1: Tasta W -> Nota DO (262 Hz)
  if (event.key == 'W') {
    if (event.isPressed('W')) {
      tone(PIN_BUZZER, NOTA_DO);
      monitor.println("♪ Nota: DO (262 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 2: Tasta A -> Nota RE (294 Hz)
  else if (event.key == 'A') {
    if (event.isPressed('A')) {
      tone(PIN_BUZZER, NOTA_RE);
      monitor.println("♪ Nota: RE (294 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 3: Tasta S -> Nota MI (330 Hz)
  else if (event.key == 'S') {
    if (event.isPressed('S')) {
      tone(PIN_BUZZER, NOTA_MI);
      monitor.println("♪ Nota: MI (330 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 4: Tasta D -> Nota FA (349 Hz)
  else if (event.key == 'D') {
    if (event.isPressed('D')) {
      tone(PIN_BUZZER, NOTA_FA);
      monitor.println("♪ Nota: FA (349 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 5: Tasta Q -> Nota SOL (392 Hz)
  else if (event.key == 'Q') {
    if (event.isPressed('Q')) {
      tone(PIN_BUZZER, NOTA_SOL);
      monitor.println("♪ Nota: SOL (392 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 6: Tasta E -> Nota LA (440 Hz)
  else if (event.key == 'E') {
    if (event.isPressed('E')) {
      tone(PIN_BUZZER, NOTA_LA);
      monitor.println("♪ Nota: LA (440 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 7: Tasta R -> Nota SI (494 Hz)
  else if (event.key == 'R') {
    if (event.isPressed('R')) {
      tone(PIN_BUZZER, NOTA_SI);
      monitor.println("♪ Nota: SI (494 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
  // Clapa 8: Tasta F -> Nota DO de sus (523 Hz)
  else if (event.key == 'F') {
    if (event.isPressed('F')) {
      tone(PIN_BUZZER, NOTA_DO2);
      monitor.println("♪ Nota: DO2 (523 Hz)");
    } else {
      noTone(PIN_BUZZER);
    }
  }
}
```

#### 5.4. Provocarea Finală: Concertul Alianțelor Cromatice!
Profesorul afișează pe tablă „partitura” în taste pentru două melodii celebre pe care elevii le pot cânta direct din tastatura laptopului sau de pe ecranul Web Bluetooth:
1. **Melodia 1 — „Frère Jacques” (Muzică ușoară de încălzire)**:
   - `W - A - S - W` (*Do - Re - Mi - Do*)
   - `W - A - S - W` (*Do - Re - Mi - Do*)
   - `S - D - Q` (*Mi - Fa - Sol*)
   - `S - D - Q` (*Mi - Fa - Sol*)
2. **Melodia 2 — „Oda Bucuriei” (Beethoven)**:
   - `S - S - D - Q - Q - D - S - A - W - W - A - S - S - A - A`

Fiecare Alianță Cromatică (ex. *SkyBlue Alliance*, *Scarlet Alliance*, *Mint Alliance*) cântă la unison o scurtă secvență muzicală pe roboții lor pentru a-și inaugura oficial echipa!

---

### Pasul 6: Quiz Kahoot Interactiv (10 min)
Profesorul lansează quiz-ul Kahoot de 10 întrebări (din fișierul `quiz.md`), verificând regulile Alianțelor Cromatice, conectarea senzorului IR și a celui ultrasonic, rolul frecvențelor în `Hz` la buzzer și logica `event.isPressed()` + `noTone()` de la pianul wireless.

---

### Pasul 7: Încheiere & Organizarea Bancului (5 min)
Elevii își salvează codul pianului wireless, opresc alimentarea roboților, pun senzorii în ordine în cutiile alianței și își notează nuanța `#HEX` și numele roboților pentru lecția următoare, în care vom combina senzorii cu mișcarea autonomă pe traseu!
