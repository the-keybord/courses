# Lecția 07 [DB1.7]: Securitatea Bazelor de Date, Strategii de Backup, Gestionarea Accesului (DCL) și Protecția Datelor în T-SQL

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.7
- **Modul**: Securitatea Datelor, Administrarea Accesului (DCL) & Continuitatea Sistemelor în T-SQL
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, combinând analiza arhitecturală a securității cu exerciții practice sincron în OneCompiler. Lecția este structurată pe trei piloni majori: (1) Amenințările asupra datelor (furtul vs dispariția datelor) și strategiile de salvare și recuperare (`Full Backup`, `Differential Backup`, `Transaction Log / Incremental Backup`); (2) Gestionarea accesului la nivel de server și bază de date (`LOGIN`, `USER`, `ROLE`) și controlul permisiunilor prin sublimbajul DCL (`GRANT`, `REVOKE`, `DENY`); (3) Măsurile tehnice de protecție a datelor sensibile (`Dynamic Data Masking`, `Encryption` și `Hashing`), urmate de mini-quizul oficial de verificare Certiport ITS.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 5.1: Înțelegerea și implementarea securității bazei de date (diferența dintre autentificare prin `LOGIN` și autorizare prin `USER`, principiul privilegiului minim, roluri fixe de bază de date `db_datareader`, `db_datawriter`, `db_owner`, și roluri personalizate `CREATE ROLE`).
  - Obiectiv 5.2: Gestionarea permisiunilor asupra obiectelor folosind instrucțiunile DCL (`GRANT`, `REVOKE`, `DENY`) și înțelegerea ierarhiei de precedență (`DENY` suprascrie orice `GRANT`).
  - Obiectiv 5.3: Înțelegerea metodelor de protecție a datelor (`Data Masking`, `Encryption` vs `Hashing`) și a strategiilor de copiere de rezervă și restaurare (`Full Backup`, `Differential Backup`, `Transaction Log Backup`, `RESTORE` cu `NORECOVERY` și `RECOVERY`).

### Întrebări Esențiale:
1. Care sunt cele două pericole majore care amenință orice bază de date din lumea reală și ce consecințe produc acestea?
2. Care sunt diferențele de viteză, spațiu ocupat și complexitate la restaurare dintre `Full Backup`, `Differential Backup` și `Transaction Log (Incremental) Backup`?
3. De ce în SQL Server accesul este împărțit pe două niveluri distincte (`LOGIN` la nivel de server vs `USER` la nivel de bază de date) și cum simplifică un `ROLE` administrarea permisiunilor?
4. Care este diferența exactă de comportament dintre `REVOKE` și `DENY` atunci când un utilizator face parte dintr-un grup care are acces `GRANT` la un tabel?
5. Când trebuie să folosim `Dynamic Data Masking`, când folosim `Encryption` (proces reversibil) și de ce parolele se protejează exclusiv prin `Hashing` (proces ireversibil)?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație T-SQL BACKUP**: https://learn.microsoft.com/en-us/sql/t-sql/statements/backup-transact-sql
- **Documentație T-SQL Permissions (GRANT, DENY, REVOKE)**: https://learn.microsoft.com/en-us/sql/t-sql/statements/grant-transact-sql
- **Documentație Dynamic Data Masking**: https://learn.microsoft.com/en-us/sql/relational-databases/security/dynamic-data-masking

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate stațiile de lucru.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pentru rularea scripturilor DCL, Data Masking, Encryption și Hashing.
- [ ] Proiectorul / ecranul partajat configurat pentru prezentarea schemelor de timp ale backup-urilor și a tiparelor sintactice T-SQL.

### Materiale Didactice & Exemple Pregătite
- [ ] Tabelul comparativ pentru simularea unei săptămâni de backup (Duminică – Miercuri) pentru cele 3 strategii (`Full`, `Differential`, `Transaction Log`).
- [ ] Șabloanele sintactice T-SQL pentru `BACKUP DATABASE`, `BACKUP DATABASE ... WITH DIFFERENTIAL` și `BACKUP LOG`.
- [ ] Scriptul demonstrativ DCL în OneCompiler (`CREATE USER ... WITHOUT LOGIN`, `CREATE ROLE`, `ALTER ROLE`, `GRANT`, `DENY`, `REVOKE`, testarea cu `EXECUTE AS USER`).
- [ ] Scriptul practic pentru Tema 3 în OneCompiler: tabelul `Patients` / `UsersAccounts` cu `MASKED WITH`, `ENCRYPTBYPASSPHRASE`, `DECRYPTBYPASSPHRASE` și `HASHBYTES('SHA2_256', ...)`.
- [ ] Setul de 10 întrebări grilă tip Certiport ITS pregătit pentru evaluarea finală.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Riscurile asupra Datelor: Furtul vs Dispariția Datelor** | Analiza celor 2 amenințări fundamentale: furtul datelor (`Data Theft / Breach`) și pierderea datelor (`Data Loss`). Exemple reale din sistemul bancar, medical și e-commerce. Conceptul de `Backup` prin analogia cu iCloud și Google Photos. |
| **00:15 – 00:45** | **2. Tema 1: Cele 3 Tipuri de Backup & Sintaxa T-SQL** | Analiza detaliată a `Full Backup`, `Differential Backup` și `Transaction Log (Incremental) Backup`. Avantaje, dezavantaje și simulare practică pe zile (Duminică–Miercuri). Tiparele de cod T-SQL pentru `BACKUP` și `RESTORE` (`WITH NORECOVERY` vs `WITH RECOVERY`). Importanța critică pentru examenul Certiport. |
| **00:45 – 01:05** | **3. Tema 2 (Partea I): Gestionarea Accesului (`LOGIN`, `USER`, `ROLE`)** | De ce gestionăm accesul (`Principle of Least Privilege`) și de ce în OneCompiler nu există restricții implicite. Diferența `LOGIN` (Server) vs `USER` (Database). Conceptul de `ROLE`, crearea rolurilor și rolurile fixe predefinite (`db_owner`, `db_datareader`, `db_datawriter`, `db_ddladmin`). |
| **01:05 – 01:25** | **4. Tema 2 (Partea II): Sublimbajul DCL (`GRANT`, `REVOKE`, `DENY`)** | Tiparele sintactice pentru `GRANT ... TO`, `REVOKE ... FROM` și `DENY ... TO`. Diferența critică dintre `REVOKE` și `DENY` (prioritatea absolută a lui `DENY`). Practică live în OneCompiler cu simularea accesului utilizatorilor. |
| **01:25 – 01:50** | **5. Tema 3: Protecția Datelor (`Masking`, `Encryption`, `Hashing`)** | Explicarea și compararea celor 3 mecanisme: `Dynamic Data Masking` (ascundere la afișare), `Encryption` (codificare reversibilă cu cheie) și `Hashing` (amprentă ireversibilă pentru parole). Practică live în OneCompiler și concluzia arhitecturală. |
| **01:50 – 02:00** | **6. Mini-Quiz Certiport ITS & Recapitulare Finală** | Rezolvarea și discutarea celor 10 întrebări de certificare axate pe tipurile de backup, DCL (`GRANT`/`REVOKE`/`DENY`), roluri și diferența dintre `Masking`, `Encryption` și `Hashing`. |

---

## 4. Ghid Didactic Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Ce se poate întâmpla cu datele noastre? Cele 2 Mari Riscuri (00:00 – 00:15)

Profesorul deschide lecția cu o întrebare directă adresată întregii clase:
*"Am învățat cum să proiectăm tabele, să impunem constrângeri, să scriem interogări analitice și să construim vederi și proceduri stocate. Dar gândiți-vă la o bancă, la un spital sau la un magazin online mare. Care sunt cele mai grave două lucruri care se pot întâmpla cu datele stocate într-o bază de date?"*

Profesorul structurează răspunsurile pe tablă în **cele două categorii fundamentale de risc**:

#### 1. Datele pot fi furate (`Data Theft` / `Data Breach` / Acces Neautorizat)
Datele rămân pe server, însă persoane neautorizate (hackeri, concurenți sau chiar angajați rău-intenționați din interiorul companiei) reușesc să le citească sau să le copieze.
- **De ce este extrem de periculos? Exemple concrete**:
  1. **Sistemul Bancar și E-Commerce**: Dacă sunt furate numerele cardurilor bancare, datele de expirare și codurile CVV ale clienților, atacatorii pot goli conturile bancare în câteva minute prin tranzacții frauduloase.
  2. **Sistemul Medical**: Dacă baza de date a unei clinici este compromisă, diagnosticele confidențiale ale pacienților ajung publice sau sunt folosite pentru șantaj (`Extortion`), iar clinica riscă amenzi de milioane de euro conform legislației de protecție a datelor (GDPR).
  3. **Furtul de Identitate (`Identity Theft`)**: Dacă sunt furate codurile numerice personale (`IDNP`), seriile de buletin, adresele și parolele utilizatorilor, infractorii pot contracta credite false în numele victimelor sau pot prelua controlul asupra altor conturi personale (deoarece mulți utilizatori refolosesc aceeași parolă pe mai multe site-uri).
  4. **Spionajul Industrial**: Dacă lista completă de clienți, prețurile de achiziție de la furnizori și contractele unei companii sunt copiate de un angajat și vândute concurenței, compania poate da faliment.

#### 2. Datele pot să dispară (`Data Loss` / Pierderea Datelor)
Datele sunt șterse, suprascrise greșit sau distruse fizic și nu mai pot fi accesate de nimeni.
- **De ce este extrem de periculos? Exemple concrete**:
  1. **Eroarea Umană (`Human Error`)**: Un programator obosit vrea să șteargă un singur client de test, dar execută din greșeală `DELETE FROM Customers;` uitând să scrie clauza `WHERE customer_id = 999`. În mai puțin de o secundă, toate cele 500.000 de conturi de clienți dispar.
  2. **Defecțiuni Hardware și Dezastre Fizice (`Hardware Failure`)**: Hard disk-ul sau SSD-ul serverului se arde, are loc o pană majoră de curent, un incendiu sau o inundație în camera serverelor.
  3. **Atacuri de tip `Ransomware` sau Sabotaj**: Un virus blochează sau șterge fișierele bazei de date. Imaginați-vă că baza de date a unui spital dispare complet luni dimineața: medicii nu mai știu ce alergii severe au pacienții internați, ce grupe sanguine au sau ce doze de medicamente li s-au administrat. Într-o bancă, dispariția bazei de date ar însemna că nimeni nu mai poate dovedi câți bani avea în cont sau ce credite a achitat deja.

#### 3. Cum ne apărăm împotriva pierderii datelor? Conceptul de `Backup`
Profesorul întreabă clasa:
*"Ce faceți voi pe telefonul personal pentru a vă asigura că, dacă astăzi vă pierdeți telefonul sau îl scăpați în apă, nu vă pierdeți toate fotografiile din ultimii 3 ani?"*

- **Răspunsul**: Păstrăm o copie a datelor în altă parte — folosind **iCloud** (pe iPhone) sau **Google Photos / Google Drive** (pe Android).
- Exact pe același principiu funcționează un **`Backup` (Copie de Rezervă)** în SQL Server:
  - Un **Backup** este o copie a bazei de date salvată într-o locație externă sigură (pe un alt server dedicat de stocare sau în Cloud).
  - Procesul invers, prin care luăm copia de rezervă și reconstruim baza de date după un dezastru, se numește **`Restore` (Restaurare)**.
  - **Regula de Aur în Inginerie**: Nu păstrăm niciodată fișierul de backup exclusiv pe același hard disk pe care se află baza de date activă! Dacă acel hard disk se arde, pierdem simultan atât baza de date originală, cât și copia de rezervă.

---

### Etapa 2: Tema 1 — Cele 3 Tipuri de Backup & Sintaxa T-SQL (00:15 – 00:45)

> **Atenționare Critică pentru Examenul Certiport ITS**:
> La examenul internațional Certiport ITS Databases, cunoașterea celor **3 tipuri principale de backup** (`FULL`, `DIFFERENTIAL` și `TRANSACTION LOG` / `INCREMENTAL`) este obligatorie! Veți întâlni garantat întrebări care vă cer să alegeți tipul corect de backup în funcție de scenariu sau să identificați ordinea corectă de restaurare (`Restore`).

Profesorul prezintă pe rând cele 3 tipuri de backup, explicând ce problemă rezolvă fiecare și ce limitări are.

#### 1. `Full Backup` (Backup Complet)
- **Cum funcționează**: Copiază **integral** întreaga bază de date într-un singur fișier (`.bak`): toate tabelele, toate rândurile, vederile, procedurile stocate și structura completă din acel moment. Reprezintă fundamentul (`Baseline`) pentru orice strategie de protecție.
- **Avantajul major**: **Este cel mai simplu și mai rapid de restabilit (`Restore`)!** Dacă serverul cade, ai nevoie de un singur fișier (`Full Backup`) pentru a readuce baza de date la viață.
- **Dezavantajul major**: **Durează foarte mult timp la creare și ocupă extrem de mult spațiu pe disc.**
  - *Exemplu*: Dacă baza de date a unei bănci are `1 TB` (1000 GB) și am face câte un `Full Backup` la fiecare oră, într-o singură zi am consuma `24 TB` de stocare, iar serverul ar fi suprasolicitat continuu copiind aceleași date vechi iar și iar.

#### 2. `Differential Backup` (Backup Diferențial)
- **Cum funcționează**: Nu mai copiază toată baza de date, ci copiază **doar datele care s-au modificat de la ULTIMUL `Full Backup`**.
- **Ce probleme rezolvă**:
  - Se creează mult mai rapid decât un `Full Backup` și ocupă mult mai puțin spațiu.
  - La restaurare (`Restore`), procesul rămâne foarte simplu: avem nevoie de **exact 2 fișiere** — ultimul `Full Backup` + **doar ultimul** `Differential Backup` (deoarece ultimul Differential conține cumulativ toate modificările făcute de la ultimul Full!).
- **Ce probleme mai există**:
  - Deoarece copiază tot ce s-a schimbat de la ultimul `Full Backup`, fișierul diferențial **crește de la o zi la alta** (cel de Marți include și modificările de Luni; cel de Miercuri include Luni + Marți + Miercuri). Până Sâmbătă, un `Differential Backup` poate ajunge aproape la fel de mare ca un `Full Backup`.
  - În plus, nu este practic să îl rulăm la fiecare 5 minute, deci tot am putea pierde datele dintre două backup-uri diferențiale.

#### 3. `Transaction Log Backup` / `Incremental Backup` (Backup Incremental / al Jurnalului de Tranzacții)
- **Cum funcționează**: Copiază **exclusiv instrucțiunile și modificările din jurnalul de tranzacții (`Transaction Log`) care au avut loc de la ULTIMUL backup de orice tip** (nu repetă modificările copiate deja în backup-ul anterior!).
- **Ce probleme rezolvă**:
  - Fișierele sunt extrem de mici și se creează aproape instantaneu (se pot rula din 10 în 10 minute fără a afecta viteza serverului).
  - Permite **Point-in-Time Recovery** (recuperarea la o secundă exactă în timp, de exemplu la ora `14:29:59`, exact cu o secundă înainte ca un angajat să fi rulat din greșeală `DELETE FROM Orders` la ora `14:30:00`).
- **Dezavantajul major (De ce este mult mai greu de restabilit)**:
  - **Restaurarea (`Restore`) este complexă și fragilă**: Pentru a reconstrui baza de date, administratorul trebuie să restaureze ultimul `Full Backup`, apoi ultimul `Differential Backup`, și apoi **TOATE fișierele `Transaction Log` în ordine strict cronologică** (`Log 1` -> `Log 2` -> `Log 3` -> `Log 4`).
  - Dacă un singur fișier de log din mijlocul lanțului lipsește sau este corupt (de exemplu `Log 2` este stricat), nu se mai pot restaura nici `Log 3`, nici `Log 4` (`Broken Log Chain`)!

---

#### 4. Exemplu Practic Comparativ: Diferențele dintre cele 3 Tipuri de Backup pe Parcursul Săptămânii

Profesorul desenează pe tablă scenariul unei baze de date care Duminică seara are **100 GB**. În fiecare zi lucrătoare (Luni, Marți, Miercuri) clienții adaugă câte **10 GB** de date noi pe zi:
- **Duminică (22:00)**: Baza are `100 GB`. Se face un **`Full Backup`** inițial (`Full_Duminica.bak` = **100 GB**).
- **Luni (22:00)**: S-au adăugat `+10 GB` (total bază: 110 GB).
- **Marți (22:00)**: S-au mai adăugat `+10 GB` (total bază: 120 GB).
- **Miercuri (22:00)**: S-au mai adăugat `+10 GB` (total bază: 130 GB).

Să vedem exact ce se salvează pe disc și cum se face restaurarea dacă serverul explodează **Miercuri la ora 23:00**, în funcție de tipul de backup folosit în zilele de Luni, Marți și Miercuri:

| Ziua | Varianta A: Doar `Full Backup` zilnic | Varianta B: `Differential Backup` zilnic | Varianta C: `Transaction Log (Incremental)` zilnic |
| :--- | :--- | :--- | :--- |
| **Duminică** (Bază: 100 GB) | `Full_Dum.bak` (**100 GB**) | `Full_Dum.bak` (**100 GB**) | `Full_Dum.bak` (**100 GB**) |
| **Luni** (+10 GB noi) | `Full_Luni.bak` (**110 GB**) — copiază tot! | `Diff_Luni.bak` (**10 GB**) — doar Luni | `Log_Luni.trn` (**10 GB**) — doar Luni |
| **Marți** (+10 GB noi) | `Full_Marti.bak` (**120 GB**) — copiază tot! | `Diff_Marti.bak` (**20 GB**) — Luni + Marți! | `Log_Marti.trn` (**10 GB**) — doar Marți! |
| **Miercuri** (+10 GB noi) | `Full_Miercuri.bak` (**130 GB**) — copiază tot! | `Diff_Miercuri.bak` (**30 GB**) — Luni + Marți + Miercuri! | `Log_Miercuri.trn` (**10 GB**) — doar Miercuri! |
| **Spațiu Total Consumat** | `100 + 110 + 120 + 130` = **460 GB** | `100 + 10 + 20 + 30` = **160 GB** | `100 + 10 + 10 + 10` = **130 GB** |
| **Ce fișiere restaurăm Miercuri la 23:00?** | **1 singur fișier**:<br>1. `Full_Miercuri.bak` | **2 fișiere**:<br>1. `Full_Dum.bak`<br>2. `Diff_Miercuri.bak` *(ignorăm Luni și Marți!)* | **Toate cele 4 fișiere în ordine**:<br>1. `Full_Dum.bak`<br>2. `Log_Luni.trn`<br>3. `Log_Marti.trn`<br>4. `Log_Miercuri.trn` |

> **Observație Pedagogică Cheie**:
> Priviți diferența dintre Varianta B (`Differential`) și Varianta C (`Transaction Log / Incremental`) în cazul unei pene de server Miercuri noaptea:
> - Cu **Differential**, după ce puneți `Full_Dum.bak`, puneți **direct `Diff_Miercuri.bak`** (nu vă atingeți de `Diff_Luni` sau `Diff_Marti`, deoarece `Diff_Miercuri` conține deja toate modificările de Duminică până Miercuri!).
> - Cu **Transaction Log (Incremental)**, fiecare fișier conține doar bucățica din ziua respectivă. Sunteți obligați să puneți `Full_Dum.bak`, apoi `Log_Luni.trn`, apoi `Log_Marti.trn`, apoi `Log_Miercuri.trn` fără să săriți niciun pas!

---

#### 5. Tipare de Scriere (Syntax Patterns) în T-SQL pentru `BACKUP` și `RESTORE`

Profesorul scrie pe tablă cele 3 comenzi standard T-SQL pe care elevii trebuie să le recunoască instantaneu la examenul Certiport:

##### Tiparul 1: Crearea unui `Full Backup`
Cuvintele cheie care apar întotdeauna împreună sunt **`BACKUP DATABASE ... TO DISK = '...'`**:
```sql
-- 1. FULL BACKUP (Copiaza toata baza de date)
BACKUP DATABASE ECommerceDB
TO DISK = 'C:\Backups\ECommerceDB_Full.bak';
```

##### Tiparul 2: Crearea unui `Differential Backup`
Se folosește aceeași comandă `BACKUP DATABASE ... TO DISK`, la care se adaugă obligatoriu clauza **`WITH DIFFERENTIAL`**:
```sql
-- 2. DIFFERENTIAL BACKUP (Copiaza doar ce s-a schimbat de la ultimul FULL)
BACKUP DATABASE ECommerceDB
TO DISK = 'C:\Backups\ECommerceDB_Diff.bak'
WITH DIFFERENTIAL;
```

##### Tiparul 3: Crearea unui `Transaction Log Backup`
Cuvântul `DATABASE` este înlocuit cu **`LOG`** (`BACKUP LOG ... TO DISK = '...'`), iar extensia convențională a fișierului este `.trn`:
```sql
-- 3. TRANSACTION LOG BACKUP (Copiaza doar jurnalul de tranzactii)
BACKUP LOG ECommerceDB
TO DISK = 'C:\Backups\ECommerceDB_Log1.trn';
```

##### Tiparul 4: Restaurarea unui Lanț de Backup-uri (`RESTORE` cu `NORECOVERY` și `RECOVERY`)
Când restaurăm mai multe fișiere consecutiv (ex: `Full` + `Differential` + `Log`), toate fișierele intermediare trebuie restaurate cu opțiunea **`WITH NORECOVERY`** (care îi spune serverului: *"Nu deschide încă baza de date pentru utilizatori, deoarece mai urmează să aplic și alte fișiere de backup peste ea!"*). Doar **ultimul** fișier din secvență se restaurează cu **`WITH RECOVERY`**:

```sql
-- Pasul 1: Restauram Full Backup-ul (baza ramane in asteptare cu NORECOVERY)
RESTORE DATABASE ECommerceDB
FROM DISK = 'C:\Backups\ECommerceDB_Full.bak'
WITH NORECOVERY;

-- Pasul 2: Aplicam ultimul Differential Backup (tot cu NORECOVERY daca mai avem loguri)
RESTORE DATABASE ECommerceDB
FROM DISK = 'C:\Backups\ECommerceDB_Diff.bak'
WITH NORECOVERY;

-- Pasul 3: Aplicam ultimul Transaction Log si aducem baza online cu RECOVERY
RESTORE LOG ECommerceDB
FROM DISK = 'C:\Backups\ECommerceDB_Log1.trn'
WITH RECOVERY;
```

*(Notă tehnică pentru elevi: Comenzile `BACKUP DATABASE` și `RESTORE DATABASE` lucrează direct cu hard disk-ul fizic al serverului `C:\Backups\...`. În compilatorul online OneCompiler nu avem acces la discul fizic `C:\` al serverului Microsoft, motiv pentru care aceste comenzi sunt evaluate teoretic și sintactic la examenul Certiport).*

---

### Etapa 3: Tema 2 (Partea I) — Gestionarea Accesului: `LOGIN`, `USER` și `ROLE` (00:45 – 01:05)

Profesorul trece la a doua mare temă a lecției: **Gestionarea Accesului (`Access Control`)**.

#### 1. De ce este nevoie de Gestionarea Accesului și de ce în OneCompiler nu există nicio limită?
Profesorul întreabă elevii:
*"Când lucrați în OneCompiler, ați observat că puteți crea orice tabel, puteți șterge orice rând cu `DELETE`, puteți distruge tabele cu `TRUNCATE` și puteți citi orice parolă din tabelul `Staff`. De ce în OneCompiler nu vă oprește nimeni, dar într-o companie reală acest lucru ar fi interzis?"*

- **Explicația tehnică**:
  1. **În OneCompiler**: De fiecare dată când apăsați butonul **Run**, platforma creează o bază de date temporară, izolată în memorie (`Sandbox`), care vă aparține doar vouă pentru câteva secunde. În acel container, voi sunteți conectați automat cu rolul suprem de **`sysadmin` / `db_owner`** (proprietarul absolut al serverului). Nu există alți utilizatori și nu există date reale ale unei companii.
  2. **În lumea reală (Production Server)**: La același server SQL Server se conectează simultan 500 de angajați: casieri, contabili, medici, manageri, curieri și aplicații web. Dacă toți ar avea drepturi nelimitate ca în OneCompiler, orice casier ar putea rula `UPDATE Staff SET salary = 999999` sau ar putea șterge din greșeală toate comenzile companiei.
  3. **Principiul Privilegiului Minim (`Principle of Least Privilege`)**: Este regula fundamentală de securitate cerută la Certiport — fiecare utilizator trebuie să primească **strict permisiunile minime necesare** pentru a-și îndeplini atribuțiile de serviciu, și nimic mai mult!

---

#### 2. Cum funcționează accesul în SQL Server? Diferența dintre `LOGIN` și `USER`

În Microsoft SQL Server, accesul este împărțit pe **două niveluri de securitate** distincte. Profesorul folosește analogia unei **clădiri de birouri cu mai multe departamente**:

| Concept | Nivel de Acțiune | Scop Tehnic | Analogie Practică |
| :--- | :--- | :--- | :--- |
| **`LOGIN`** | **Nivel de Server** (`Server Instance Level`) | **Autentificare (`Authentication`)**: Verifică cine ești (nume și parolă) pentru a-ți permite conectarea la serverul SQL Server. | **Cartela de la ușa principală a clădirii**: Îți permite să intri în holul clădirii, dar nu îți deschide automat ușile birourilor de la etaje. |
| **`USER`** | **Nivel de Bază de Date** (`Database Level`) | **Autorizare (`Authorization`)**: Contul creat în interiorul unei baze de date specifice (ex: `BankDB`), legat de un `LOGIN`, căruia i se dau permisiuni pe tabele. | **Permisul nominal pentru un departament**: Îți permite să intri și să lucrezi în departamentul Contabilitate (`BankDB`), dar nu și în departamentul HR (`HrDB`). |

##### Tiparul Sintactic T-SQL pentru `CREATE LOGIN` și `CREATE USER`:
Observați perechile de cuvinte cheie:
- La `LOGIN` folosim **`WITH PASSWORD = '...'`**;
- La `USER` folosim **`FOR LOGIN ...`** pentru a lega utilizatorul bazei de date de contul de pe server:

```sql
-- Pasul 1 (Nivel de Server): Cream un LOGIN cu parola
CREATE LOGIN andrei_login 
WITH PASSWORD = 'SecurePassword2026!';

-- Pasul 2 (Nivel de Baza de Date): Intram in baza de date si cream un USER legat de acel LOGIN
USE CompanyDB;
CREATE USER andrei_user 
FOR LOGIN andrei_login;
```

---

#### 3. Ce este un `ROLE` (Rol) și Ce Roluri Există în SQL Server?

Profesorul pune o problemă practică de administrare:
*"Imaginați-vă că lucrați la o bancă ce are **150 de casieri** și **40 de tabele**. Dacă fiecare casier are nevoie de drept de citire (`SELECT`) și inserare (`INSERT`) pe cele 40 de tabele, ar trebui să scriem manual `150 x 40 = 6.000` de comenzi! Iar când se angajează casierul nr. 151, trebuie să rulăm încă 40 de comenzi pentru el. Cum rezolvăm această problemă?"*

Soluția este un **`ROLE` (Rol de Bază de Date)**:
- Un **Role** este un **grup de securitate** (o funcție / pălărie organizațională) căruia îi acordăm un set de permisiuni o singură dată, iar apoi adăugăm utilizatorii ca membri în acel rol.
- Orice utilizator adăugat într-un `Role` **moștenește instantaneu toate permisiunile** acelui rol.

##### A. Roluri Predefinite de Bază de Date (`Fixed Database Roles` — Esențiale pentru Certiport!)
SQL Server vine cu 9 roluri predefinite gata construite în fiecare bază de date. La examenul Certiport trebuie să recunoașteți imediat următoarele roluri:

| Rol Predefinit (`Fixed Role`) | Ce Drepturi Oferă în Baza de Date |
| :--- | :--- |
| **`db_owner`** | **Control total** asupra bazei de date (configurare, ștergere, DDL, DML, DCL, Backup). |
| **`db_datareader`** | Poate citi datele (**`SELECT`**) din **toate** tabelele și vederile utilizatorilor din baza de date. |
| **`db_datawriter`** | Poate modifica datele (**`INSERT`, `UPDATE`, `DELETE`**) în **toate** tabelele din baza de date *(atenție la capcana de examen: `db_datawriter` NU include dreptul de `SELECT`!)*. |
| **`db_ddladmin`** | Poate executa orice comandă **DDL** (`CREATE`, `ALTER`, `DROP` pentru tabele, vederi, proceduri). |
| **`db_securityadmin`** | Poate administra rolurile și permisiunile (`GRANT`, `REVOKE`, `DENY`) pentru alți utilizatori. |
| **`db_backupoperator`** | Are dreptul de a executa comenzi de **`BACKUP`** pentru baza de date. |
| **`db_denydatareader`** | **Interzice complet** citirea (`SELECT`) din orice tabel al bazei de date. |
| **`db_denydatawriter`** | **Interzice complet** modificarea (`INSERT`, `UPDATE`, `DELETE`) în orice tabel al bazei de date. |

##### B. Roluri Personalizate (`User-Defined Database Roles`) — Sintaxa T-SQL
Când rolurile globale (precum `db_datareader` care dă acces la *toate* tabelele) sunt prea permisive, ne creăm propriul rol personalizat cu **`CREATE ROLE`** și adăugăm utilizatori în el cu **`ALTER ROLE ... ADD MEMBER ...`**:

```sql
-- 1. Crearea unui rol personalizat pentru casieri
CREATE ROLE CashiersRole;

-- 2. Adaugarea unui utilizator in acest rol
ALTER ROLE CashiersRole ADD MEMBER andrei_user;

-- (Sau adaugarea unui utilizator intr-un rol predefinit SQL Server)
ALTER ROLE db_datareader ADD MEMBER andrei_user;
```

---

### Etapa 4: Tema 2 (Partea II) — Clauzele DCL: `GRANT`, `REVOKE`, `DENY` cu Exemple Practice (01:05 – 01:25)

Profesorul amintește din Lecția 02 că sublimbajul responsabil pentru securitate și permisiuni se numește **DCL (`Data Control Language`)** și conține exact 3 comenzi: **`GRANT`**, **`REVOKE`** și **`DENY`**.

#### 1. Explicarea Clară a celor 3 Instrucțiuni DCL și a Tiparelor Sintactice

| Comandă DCL | Semnificație | Tipar Sintactic Obligatoriu | Comportament Tehnic |
| :--- | :--- | :--- | :--- |
| **`GRANT`** | **Acordă** o permisiune | `GRANT <permisiune> ON <obiect> TO <user/role>;` | Oferă explicit dreptul de a executa acțiunea specificată (`SELECT`, `INSERT`, `UPDATE`, `DELETE`, `EXECUTE`). |
| **`REVOKE`** | **Retrage / Șterge** o regulă anterioară | `REVOKE <permisiune> ON <obiect> FROM <user/role>;` | Anulează un `GRANT` sau un `DENY` acordat anterior. Readuce utilizatorul la starea neutră (dacă are dreptul dintr-un alt grup/rol, își păstrează acel drept!). |
| **`DENY`** | **Interzice explicit** o permisiune | `DENY <permisiune> ON <obiect> TO <user/role>;` | Blochează categoric acțiunea. **Suprascrie și bate orice `GRANT`**, inclusiv permisiunile moștenite din roluri! |

#### 2. Capcana Clasică de Examen Certiport: Diferența dintre `REVOKE` și `DENY`!
Profesorul subliniază acest scenariu critic pe tablă:
- Să presupunem că utilizatorul `ion_user` este membru în rolul `SalesRole`.
- Rolul `SalesRole` primește acces de citire pe tabelul `Orders`:
  `GRANT SELECT ON Orders TO SalesRole;`
- **Cazul 1 (`REVOKE`)**: Dacă executăm `REVOKE SELECT ON Orders FROM ion_user;`, mai poate Ion să citească tabelul `Orders`?
  - **DA!** Deoarece `REVOKE` doar șterge o permisiune individuală directă, dar nu blochează dreptul pe care Ion îl moștenește în continuare ca membru al grupului `SalesRole`.
- **Cazul 2 (`DENY`)**: Dacă executăm `DENY SELECT ON Orders TO ion_user;`, mai poate Ion să citească tabelul `Orders`?
  - **NU!** În SQL Server, **`DENY` are prioritate absolută (`DENY` overrides `GRANT`)**. Chiar dacă tot grupul `SalesRole` are voie să citească tabelul, interdicția explicită `DENY` pusă pe `ion_user` îi blochează garantat accesul.

#### 3. Opțiunea `WITH GRANT OPTION`
Dacă acordăm o permisiune însoțită de clauza `WITH GRANT OPTION`, utilizatorul care primește permisiunea capătă și dreptul de a o oferi mai departe colegilor săi:
```sql
GRANT SELECT ON Products TO manager_user WITH GRANT OPTION;
```

#### 4. Practică Live în OneCompiler: Simularea Completă `USER`, `ROLE`, `GRANT`, `DENY`, `REVOKE`

În OneCompiler putem crea utilizatori locali de bază de date folosind clauza `WITHOUT LOGIN` și putem testa permisiunile lor reale în timp real! Elevii scriu și execută următorul script în OneCompiler:

```sql
-- 1. Cream un tabel de salarii si produse
CREATE TABLE CompanySalaries (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO CompanySalaries VALUES
    (1, 'Alexandru Marin', 'IT', 25000.00),
    (2, 'Elena Rusu', 'Finante', 22000.00),
    (3, 'Victor Lungu', 'Vanzari', 18000.00);

-- 2. Cream un Rol (grup) si un Utilizator in baza de date
CREATE ROLE HR_Staff;
CREATE USER maria_hr WITHOUT LOGIN;

-- Adaugam utilizatorul maria_hr in rolul HR_Staff
ALTER ROLE HR_Staff ADD MEMBER maria_hr;

-- 3. Acordam (GRANT) rolului HR_Staff dreptul de SELECT, dar NU si de DELETE sau UPDATE
GRANT SELECT ON CompanySalaries TO HR_Staff;

-- 4. Acordam individual Mariei dreptul de UPDATE doar pe coloana salary
GRANT UPDATE (salary) ON CompanySalaries TO maria_hr;

-- Testam ce vede si ce poate face Maria (comutam contextul pe maria_hr)
EXECUTE AS USER = 'maria_hr';

-- Maria poate citi tabelul (drept mostenit din rolul HR_Staff)
SELECT * FROM CompanySalaries;

-- Maria poate actualiza un salariu (drept primit prin GRANT UPDATE)
UPDATE CompanySalaries SET salary = 19500.00 WHERE emp_id = 3;
SELECT * FROM CompanySalaries WHERE emp_id = 3;

-- Revenim la contul de Administrator (dbo)
REVERT;

-- 5. Demonstram puterea lui DENY:
-- Desi Maria este in rolul HR_Staff (care are GRANT SELECT), ii interzicem explicit accesul cu DENY!
DENY SELECT ON CompanySalaries TO maria_hr;

--6. Ulterior, daca dorim sa ridicam interdictia DENY, folosim REVOKE:
REVOKE SELECT ON CompanySalaries FROM maria_hr;

-- Verificam ca Maria poate citi din nou tabelul prin rolul HR_Staff:
EXECUTE AS USER = 'maria_hr';
SELECT emp_id, emp_name, salary FROM CompanySalaries;
REVERT;
```

> **Observație la rulare în OneCompiler**: Dacă elevii încearcă să execute `DELETE FROM CompanySalaries WHERE emp_id = 1;` între `EXECUTE AS USER = 'maria_hr'` și `REVERT`, motorul SQL Server va opri execuția cu eroarea autentică de securitate:
> `The DELETE permission was denied on the object 'CompanySalaries'`!

---

### Etapa 5: Tema 3 — Măsuri de Protecție a Datelor: `Masking`, `Encryption` și `Hashing` (01:25 – 01:50)

Profesorul introduce ultima temă a lecției:
*"Chiar și atunci când gestionăm accesul cu `GRANT` și `DENY`, există situații în care un angajat (cum ar fi un operator din Call Center) are nevoie de acces `SELECT` la tabelul cu clienți pentru a le vedea numele și starea comenzii, dar nu ar trebui să le vadă numărul complet al cardului bancar. Sau, și mai grav: ce se întâmplă dacă un hacker fură direct fișierul bazei de date de pe disc? Pentru a proteja datele în sine, folosim trei tehnici fundamentale: **Masking**, **Encryption** și **Hashing**."*

Profesorul explică pe rând fiecare termen, unde se utilizează și cum se scrie în T-SQL.

---

#### 1. `Data Masking` (`Dynamic Data Masking` — Mascarea Dinamică a Datelor)

- **Ce este**: O tehnică prin care datele rămân stocate **în clar (nemodificate) în tabelul fizic pe disc**, însă atunci când un utilizator obișnuit execută `SELECT`, SQL Server **ascunde (maschează) parțial sau total caracterele pe ecran** (de exemplu, înlocuindu-le cu `'XXXX'`).
- **Unde se utilizează**:
  - În aplicațiile de **Call Center / Relații cu Clienții**: Operatorul vede doar ultimele 4 cifre ale cardului (`XXXX-XXXX-XXXX-5821`) sau un email mascat (`aXXX@XXXX.com`) pentru a confirma identitatea apelantului, fără a putea fura datele cardului.
  - În ecranele spitalelor sau recepțiilor publice.
- **Important de reținut**: `Data Masking` **NU este criptare**! Datele pe hard disk sunt în continuare în format normal (`Plaintext`); mascarea se aplică doar la afișarea rezultatului unui `SELECT`.
- **Cele 4 Funcții de Mascare în T-SQL (`MASKED WITH (FUNCTION = '...')`)**:
  1. `default()` — ascunde complet valoarea (afișează `'xxxx'` pentru text sau `0` pentru numere).
  2. `email()` — afișează doar prima literă a emailului și extensia finală: `iXXX@XXXX.com`.
  3. `partial(prefix, "padding", suffix)` — păstrează primele `prefix` caractere și ultimele `suffix` caractere, punând la mijloc textul `"padding"`. Exemplu: `partial(0, "XXXX-XXXX-XXXX-", 4)` afișează doar ultimele 4 cifre ale cardului.
  4. `random(min, max)` — înlocuiește un număr real (ex: salariul sau vârsta) cu un număr aleatoriu între `min` și `max`.

---

#### 2. `Encryption` (Criptarea Datelor — Proces Bidirecțional / Reversibil)

- **Ce este**: Procesul matematic de transformare a datelor originale lizibile (**`Plaintext`**) într-un șir de octeți indescifrabil (**`Ciphertext`**) folosind un algoritm și o **cheie secretă (`Key` / `Passphrase`)**.
- **Caracteristica Definitorie — Este REVERSIBILĂ (`Two-Way`)**:
  - Criptarea are întotdeauna perechea sa inversă: **Decriptarea (`Decryption`)**.
  - Orice aplicație sau utilizator care cunoaște cheia secretă poate apela funcția de decriptare pentru a obține înapoi valoarea exactă originală!
  - Dacă un hacker fură baza de date de pe disc, dar nu are cheia de criptare, el vede doar secvențe binare fără sens (`0x020000008A9F...`).
- **Unde se utilizează**:
  - Pentru date confidențiale pe care sistemul **trebuie să le poată recupera și citi în forma lor originală** mai târziu: numere de card bancar salvate pentru plăți recurente, coduri `IDNP`, dosare medicale, contracte secrete sau mesaje private.
- **Funcții T-SQL în SQL Server**:
  - Criptare: `ENCRYPTBYPASSPHRASE('CheieSecreta', valoare_text)` (returnează tipul binar `VARBINARY`).
  - Decriptare: `CONVERT(VARCHAR(100), DECRYPTBYPASSPHRASE('CheieSecreta', coloana_criptata))` (dacă cineva introduce o cheie greșită, funcția returnează `NULL`!).

---

#### 3. `Hashing` (Dispersia Criptografică — Proces Unidirecțional / Ireversibil)

- **Ce este**: O funcție matematică **strict unidirecțională (`One-Way`)** care transformă orice text de intrare într-o amprentă digitală unică, de lungime fixă (**`Hash Value`**), folosind un algoritm standard (precum `SHA2_256` sau `SHA2_512`).
- **Caracteristica Definitorie — Este IREVERSIBILĂ (`One-Way`)**:
  - **Nu există „de-hashing”!** Nu există nicio cheie și nicio funcție inversă care să transforme un hash înapoi în textul original.
  - Este un proces **determinist**: același cuvânt (`'Parola123'`) va genera întotdeauna exact același hash, dar modificarea unei singure litere (`'parola123'`) va genera un hash radical diferit.
- **Unde se utilizează**:
  - **Exclusiv pentru stocarea parolelor (`Passwords`)** și verificarea integrității fișierelor!
- **Întrebarea logică a elevilor**: *"Dacă Hashing-ul este ireversibil și nici măcar baza de date nu știe care era parola originală, cum verifică site-ul dacă am introdus parola corectă la Login?"*
  - **Explicația mecanismului de Login**:
    1. **La Înregistrare (`Sign Up`)**: Utilizatorul scrie parola `' Iepuras2026'`. Serverul calculează `HASHBYTES('SHA2_256', 'Iepuras2026')` -> obține amprenta `0x9A4F...` și salvează în tabel **doar amprenta `0x9A4F...`** (parola în clar este distrusă imediat din memorie).
    2. **La Autentificare (`Login`)**: Utilizatorul tastează o parolă. Serverul aplică aceeași funcție `HASHBYTES('SHA2_256', parola_tastata)` și **compară noul hash cu hash-ul din tabel**. Dacă cele două amprente sunt identice, înseamnă că utilizatorul a introdus exact aceeași parolă!
    3. Chiar dacă hackerii fură tot tabelul `Users`, ei nu găsesc nicio parolă, ci doar amprente ireversibile!

---

#### 4. Tabel Comparativ Sintetic (`Masking` vs `Encryption` vs `Hashing`)

| Criteriu | `Data Masking` (Mascare) | `Encryption` (Criptare) | `Hashing` (Dispersie) |
| :--- | :--- | :--- | :--- |
| **Ce modifică?** | Doar **afișarea pe ecran** la `SELECT` (datele pe disc rămân în clar!). | **Datele stocate pe disc** (transformate în `Ciphertext`). | **Datele stocate pe disc** (transformate într-o amprentă de lungime fixă). |
| **Este reversibil?** | Da (administratorul vede datele reale oricând). | **DA (`Two-Way` / Bidirecțional)** — se decriptează cu cheia secretă. | **NU (`One-Way` / Ireversibil)** — nu poate fi inversat niciodată! |
| **Folosește o cheie?** | Nu (folosește reguli de afișare `MASKED WITH`). | **Da** (necesită `Key` / `Passphrase` pentru criptare și decriptare). | **Nu** (folosește un algoritm matematic precum `SHA2_256`). |
| **Unde se utilizează?** | Ecrane de Call Center, afișare parțială telefon/email/card (`XXXX-1234`). | Date confidențiale ce trebuie recuperate ulterior (CNP/IDNP, carduri, date medicale). | **Stocarea parolelor (`Passwords`)** și verificarea integrității. |

---

#### 5. Practică Live în OneCompiler: Demonstrarea `Masking`, `Encryption` și `Hashing` în T-SQL

Elevii scriu și execută următorul script complet în OneCompiler pentru a vedea în acțiune toate cele trei metode de protecție a datelor:

```sql
-- =========================================================================
-- DEMONSTRATIE PRACTICA TEMA 3: MASKING, ENCRYPTION SI HASHING IN T-SQL
-- =========================================================================

-- 1. Crearea tabelului ClientSecurity cu toate cele 3 masuri de protectie:
--    - email si card_preview folosesc DYNAMIC DATA MASKING
--    - secret_iban este stocat CRIPTAT (VARBINARY)
--    - password_hash stocheaza doar AMPrenta HASH (VARBINARY)
CREATE TABLE ClientSecurity (
    client_id INT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) MASKED WITH (FUNCTION = 'email()') NOT NULL,
    card_number VARCHAR(20) MASKED WITH (FUNCTION = 'partial(0, "XXXX-XXXX-XXXX-", 4)') NOT NULL,
    encrypted_medical_note VARBINARY(256) NOT NULL,
    password_hash VARBINARY(64) NOT NULL
);

-- 2. Inserarea datelor:
--    - Folosim ENCRYPTBYPASSPHRASE pentru nota medicala (cu cheia 'SpitalCheie2026')
--    - Folosim HASHBYTES('SHA2_256', ...) pentru parola utilizatorului
INSERT INTO ClientSecurity (
    client_id, 
    full_name, 
    email, 
    card_number, 
    encrypted_medical_note, 
    password_hash
)
VALUES (
    1,
    'Andrei Ciobanu',
    'andrei.ciobanu@gmail.com',
    '4532-1122-3344-9876',
    ENCRYPTBYPASSPHRASE('SpitalCheie2026', 'Diagnostic: Alergie severa la penicilina'),
    HASHBYTES('SHA2_256', 'ParolaSuperSecreta99')
);

-- 3. TESTUL 1: Cum vede datele un operator de Call Center (DATA MASKING)
CREATE USER call_center_agent WITHOUT LOGIN;
GRANT SELECT ON ClientSecurity TO call_center_agent;

EXECUTE AS USER = 'call_center_agent';
-- Operatorul vede emailul si cardul MASCATE, iar campurile binare sunt ilizibile!
SELECT client_id, full_name, email, card_number 
FROM ClientSecurity;
REVERT;

-- 4. TESTUL 2: Cum decripteaza medicul nota medicala (ENCRYPTION / DECRYPTION)
-- Incercare cu o cheie GRESITA (returneaza NULL!):
SELECT 
    full_name,
    CONVERT(VARCHAR(100), DECRYPTBYPASSPHRASE('CheieGresita000', encrypted_medical_note)) AS DecryptedWithWrongKey
FROM ClientSecurity;

-- Decriptare cu cheia CORECTA ('SpitalCheie2026'):
SELECT 
    full_name,
    CONVERT(VARCHAR(100), DECRYPTBYPASSPHRASE('SpitalCheie2026', encrypted_medical_note)) AS DecryptedMedicalNote
FROM ClientSecurity;

-- 5. TESTUL 3: Cum verificam parola la Login fara sa o decriptam (HASHING)
-- Simulam un utilizator care introduce parola corecta 'ParolaSuperSecreta99':
SELECT 
    client_id,
    full_name,
    'Autentificare Reusita (Hash-urile coincid!)' AS LoginStatus
FROM ClientSecurity
WHERE client_id = 1 
  AND password_hash = HASHBYTES('SHA2_256', 'ParolaSuperSecreta99');
```

---

#### 6. Concluzia Generală a Lecției: Strategia „Defense in Depth” (Securitatea în Profunzime)

Profesorul încheie partea teoretică și practică printr-o concluzie integratoare:
- O bază de date profesională nu se bazează niciodată pe o singură măsură de protecție, ci aplică **trei straturi complementare de apărare**:
  1. **Stratul 1 — Controlul Accesului (`Access Control` & `DCL`)**: Ne asigurăm că doar persoanele autentificate (`LOGIN`) și autorizate (`USER` / `ROLE`) pot interacționa cu tabelele, acordând strict permisiunile necesare prin `GRANT`, anulându-le cu `REVOKE` și blocând excepțiile cu `DENY`.
  2. **Stratul 2 — Protecția Datelor Sensibile (`Masking`, `Encryption`, `Hashing`)**: Protejăm confidențialitatea informațiilor chiar și în fața utilizatorilor interni sau în cazul furtului fizic al fișierelor: mascăm datele pe ecranele operatorilor (`Masking`), criptăm datele confidențiale ce trebuie recuperate ulterior (`Encryption`) și transformăm parolele în amprente ireversibile (`Hashing`).
  3. **Stratul 3 — Continuitatea și Supraviețuirea Datelor (`Backup & Restore`)**: Ne asigurăm că, indiferent de erori umane, defecțiuni hardware sau atacuri cibernetice, putem reconstrui baza de date rapid și complet combinând `Full Backup`, `Differential Backup` și `Transaction Log Backup`.

---

### Etapa 6: Mini-Quiz Certiport ITS & Recapitulare Finală (01:50 – 02:00)

Profesorul lansează sesiunea de verificare (sau jocul Kahoot generat din `quiz.xlsx`) pentru a fixa tiparele sintactice și conceptele de examen.

---

## 5. Mini-Quiz Certiport ITS (10 Întrebări de Certificare)

#### Întrebarea 1:
Care tip de backup copiază doar modificările efectuate în baza de date de la ultimul `Full Backup`?
- [ ] A) Full Backup
- [x] B) Differential Backup
- [ ] C) Transaction Log
- [ ] D) Snapshot View
> **Explicație**: Un `Differential Backup` salvează cumulativ toate modificările survenite de la cel mai recent `Full Backup`. La restaurare, sunt necesare doar două fișiere: ultimul `Full Backup` și ultimul `Differential Backup`.

---

#### Întrebarea 2:
Care comandă T-SQL creează o copie de rezervă a jurnalului de tranzacții (Incremental)?
- [ ] A) BACKUP DATABASE
- [x] B) BACKUP LOG
- [ ] C) SAVE TRANSACTION
- [ ] D) COPY LOGFILE
> **Explicație**: În T-SQL, backup-ul jurnalului de tranzacții se realizează prin instrucțiunea `BACKUP LOG nume_baza TO DISK = '...'`.

---

#### Întrebarea 3:
Ce opțiune T-SQL se folosește la `RESTORE` pentru fișierele intermediare dintr-un lanț de backup-uri?
- [ ] A) WITH STOP
- [ ] B) WITH RESTART
- [x] C) WITH NORECOVERY
- [ ] D) WITH DIFFERENTIAL
> **Explicație**: Opțiunea `WITH NORECOVERY` menține baza de date în starea de restaurare pentru a permite aplicarea următoarelor backup-uri (`Differential` sau `Log`). Doar ultimul backup din secvență folosește `WITH RECOVERY`.

---

#### Întrebarea 4:
Care obiect de securitate din SQL Server este folosit pentru autentificarea la nivel de server?
- [x] A) LOGIN
- [ ] B) USER
- [ ] C) VIEW
- [ ] D) SCHEMA
> **Explicație**: `LOGIN` operează la nivel de instanță de server (`Server Level`) pentru autentificare, în timp ce `USER` operează la nivel de bază de date (`Database Level`) pentru autorizare.

---

#### Întrebarea 5:
Care rol predefinit permite citirea (`SELECT`) tuturor tabelelor dintr-o bază de date?
- [ ] A) db_datawriter
- [ ] B) db_ddladmin
- [x] C) db_datareader
- [ ] D) db_securityadmin
> **Explicație**: Rolul fix `db_datareader` acordă automat permisiunea `SELECT` pe toate tabelele și vederile utilizatorilor din baza de date.

---

#### Întrebarea 6:
Utilizatorul Ion este în rolul `Sales` (care are `GRANT SELECT` pe `Orders`), dar primește `DENY SELECT` pe `Orders`. Ce se întâmplă?
- [ ] A) Poate citi tabelul
- [x] B) Accesul este blocat
- [ ] C) Tabelul este șters
- [ ] D) Rolul este șters
> **Explicație**: În SQL Server, `DENY` are prioritate absolută față de orice `GRANT`. Chiar dacă utilizatorul face parte dintr-un rol care permite accesul, `DENY` blochează explicit acțiunea.

---

#### Întrebarea 7:
Care instrucțiune DCL anulează o permisiune acordată anterior fără a impune o interdicție explicită?
- [ ] A) GRANT
- [ ] B) DENY
- [x] C) REVOKE
- [ ] D) REMOVE
> **Explicație**: Instrucțiunea `REVOKE` elimină o regulă `GRANT` sau `DENY` acordată anterior, readucând utilizatorul la starea neutră.

---

#### Întrebarea 8:
Care tehnică ascunde parțial datele la afișarea cu `SELECT` (ex: `XXXX-1234`), fără a le modifica pe disc?
- [ ] A) Hashing
- [ ] B) Encryption
- [x] C) Data Masking
- [ ] D) Compression
> **Explicație**: `Dynamic Data Masking` (`MASKED WITH`) ofuschează datele doar în rezultatul interogării pentru utilizatorii neprivilegiați, lăsând datele fizice de pe disc neschimbate.

---

#### Întrebarea 9:
Care metodă de protecție este strict unidirecțională (ireversibilă) și se folosește pentru stocarea parolelor?
- [ ] A) Encryption
- [x] B) Hashing
- [ ] C) Data Masking
- [ ] D) Backup
> **Explicație**: `Hashing` (`HASHBYTES`) generează o amprentă digitală de lungime fixă care nu poate fi decriptată sau inversată niciodată, fiind standardul obligatoriu pentru stocarea parolelor.

---

#### Întrebarea 10:
Care metodă transformă datele în `Ciphertext` folosind o cheie și permite recuperarea valorii originale prin decriptare?
- [ ] A) Hashing
- [x] B) Encryption
- [ ] C) Data Masking
- [ ] D) Truncation
> **Explicație**: `Encryption` (criptarea) este un proces bidirecțional (`Two-Way`) care codifică datele cu ajutorul unei chei și permite revenirea la textul original (`Plaintext`) prin decriptare (`Decryption`).

