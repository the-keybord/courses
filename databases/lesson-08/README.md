# Lecția 08 [DB1.8]: Recapitulare Generală a Tiparelor de Sintaxă T-SQL (DML, DDL, DQL, Agregare, DCL) & Strategia Examenului Certiport ITS

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.8
- **Modul**: Sinteză Sintactică T-SQL, Antrenament de Recunoaștere a Tiparelor & Pregătire Examen Certiport ITS
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune intensivă de consolidare bazată pe metoda celor **două runde Kahoot (Before & After)**:
  1. **Runda 1 Kahoot (Diagnostic Blitz — Fără Oprire)**: Parcurgerea rapidă a testului Kahoot de sintaxă SQL fără explicații intermediare pentru testarea reflexelor inițiale.
  2. **Analiza Regulilor de Bază (Fișa Oficială de Recapitulare PDF)**: Deconstrucția completă a tiparelor de scriere pentru **DML** (cele 3 forme de `INSERT`, `UPDATE`, `DELETE`), **DDL** (formula în 3 pași: Verb -> Tip Obiect -> Denumire), **DQL** (ordinea strictă 1–5 a clauzelor în `SELECT`), **Funcțiile de Agregare** (regula coloanelor agregate vs neagregate în `GROUP BY`), **DCL** (`GRANT ... ON ... TO`, `REVOKE ... ON ... FROM`, `DENY ... ON ... TO`) și **structura procentuală a examenului Certiport ITS**.
  3. **Runda 2 Kahoot (Analiză Pas cu Pas — Oprire la Fiecare Întrebare)**: Reluarea aceluiași Kahoot cu oprire după fiecare întrebare, identificarea regulii din fișa PDF care dictează răspunsul corect și eliminarea distractoarelor.
  4. **Validare Practică în OneCompiler & Mini-Quiz Certiport**.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Sinteza completă a celor 5 domenii oficiale de examen:
    1. **Database Design (Teorie)** — 25%
    2. **Database Object Management (DDL & DCL)** — 25%
    3. **Data Retrieval (DQL / `SELECT`)** — 25%
    4. **Data Manipulation (DML)** — 12%
    5. **Troubleshooting (Depanarea Erorilor)** — 13%

### Întrebări Esențiale:
1. Care sunt exact cele 3 tipare valide pentru inserarea datelor în T-SQL și cum diferă `INSERT INTO ... SELECT` față de `SELECT ... INTO`?
2. Care este formula structurală în 3 pași (`1 -> 2 -> 3`) pe care o respectă orice comandă DDL (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`)?
3. Care este ordinea obligatorie a celor 5 blocuri majore într-o interogare `SELECT` completă și unde se plasează `TOP`/`DISTINCT`, `ON`, `HAVING` și `ASC`/`DESC`?
4. Cum aplicăm mecanic regula coloanelor agregate vs neagregate (`SELECT c1, F(c2), F(c3), c4 ... GROUP BY c1, c4`) pentru a depista instantaneu o interogare invalidă?
5. Cum deosebim prepozițiile obligatorii din comenzile DCL (`GRANT ... TO`, `DENY ... TO` vs `REVOKE ... FROM`)?

### 🔗 Resurse & Linkuri Utile
- **Kahoot Oficial al Lecției (SQL DML & SELECT Syntax)**: https://create.kahoot.it/share/sql-dml-select-syntax/1309a209-9878-4da9-a53f-6c6a1451305f
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație Oficială T-SQL Queries**: https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate computerele elevilor și pe telefoanele/tab-urile pentru Kahoot.
- [ ] Jocul Kahoot deschis și pregătit pentru lansare: [SQL DML & SELECT Syntax Kahoot](https://create.kahoot.it/share/sql-dml-select-syntax/1309a209-9878-4da9-a53f-6c6a1451305f).
- [ ] Fișa PDF *„Recapitulare — Reguli de bază pentru temele studiate”* proiectată pe ecranul principal / distribuită elevilor.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pentru exercițiile de verificare a sintaxei.

### Materiale Didactice & Exemple Pregătite
- [ ] Tabel pe tablă pentru notarea scorului mediu al clasei în **Runda 1 Kahoot (Fără Reguli)** vs **Runda 2 Kahoot (După Reguli)**.
- [ ] Cele 6 secțiuni din fișa de recapitulare pregătite pentru explicație la tablă (DML, DDL 1-2-3, DQL 1-5, Agregare `c1, c4`, DCL `GRANT/REVOKE/DENY`, Ponderile Certiport).
- [ ] Scriptul recapitulativ OneCompiler pentru demonstrarea practică a tuturor șabloanelor din PDF.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Runda 1 Kahoot „La Rece” (Fără Oprire la Întrebări)** | Lansarea jocului [Kahoot SQL DML & SELECT Syntax](https://create.kahoot.it/share/sql-dml-select-syntax/1309a209-9878-4da9-a53f-6c6a1451305f). Parcurgerea rapidă a tuturor întrebărilor, **fără nicio oprire și fără explicații**. Înregistrarea procentajului inițial al clasei. |
| **00:15 – 00:50** | **2. Prezentarea Regulilor din Fișa de Recapitulare (PDF)** | Predarea sistematică a tiparelor din fișa PDF: (1) DML (`INSERT` 3 metode, `UPDATE`, `DELETE`); (2) DDL (schema 1–2–3); (3) DQL (`SELECT` și ordinea 1–5); (4) Funcțiile de agregare și regula `GROUP BY c1, c4`; (5) DCL (`GRANT`, `REVOKE`, `DENY`); (6) Structura examenului Certiport (25% / 25% / 25% / 12% / 13%). |
| **00:50 – 01:25** | **3. Runda 2 Kahoot „Cu Analiză Pas cu Pas” (Oprire la Fiecare Întrebare)** | Reluarea aceluiași Kahoot. Profesorul **oprește jocul după fiecare întrebare**, identifică împreună cu elevii regula exactă din fișa PDF care rezolvă întrebarea și explică de ce variantele greșite încalcă șablonul sintactic. |
| **01:25 – 01:50** | **4. Antrenament Practic în OneCompiler pe Șabloanele din PDF** | Execuție sincronă în OneCompiler: testarea celor 3 forme de `INSERT`, a formulei DDL 1-2-3, a interogării `SELECT` cu toate cele 5 clauze și a regulii `GROUP BY c1, c4`. |
| **01:50 – 02:00** | **5. Mini-Quiz Certiport ITS & Concluzii** | Verificare finală de 10 întrebări axate pe recunoașterea tiparelor sintactice și încadrarea pe domeniile Certiport. |

---

## 4. Ghid Didactic Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Runda 1 Kahoot „La Rece” — Diagnostic Blitz Fără Oprire (00:00 – 00:15)

Profesorul deschide lecția fără nicio recapitulare prealabilă și afișează pe proiector codul PIN pentru Kahoot-ul oficial al sesiunii:
- **Link Kahoot**: https://create.kahoot.it/share/sql-dml-select-syntax/1309a209-9878-4da9-a53f-6c6a1451305f

#### Instrucțiuni Metodologice pentru Profesor în Runda 1:
1. **Rulare Continuă (Fără Oprire)**:
   - Profesorul anunță clasa: *"Vom începe lecția direct cu un test de viteză pe Kahoot. În această primă rundă **NU ne vom opri la nicio întrebare** și nu vom comenta răspunsurile. Vreau să văd cum funcționează intuiția voastră la prima vedere!"*
   - Imediat ce timpul unei întrebări expiră, profesorul apasă **Next** fără a explica de ce o variantă a fost corectă sau greșită.
2. **Scopul Pedagogic**:
   - Întrebările din acest Kahoot testează exact detaliile fine de sintaxă T-SQL (ordinea cuvintelor cheie, prepozițiile obligatorii, poziția lui `TOP` și `DISTINCT`, ordinea `WHERE` vs `GROUP BY` vs `HAVING` vs `ORDER BY`, coloanele din `GROUP BY`).
   - În Runda 1, elevii își dau seama că, deși știu teoria în mare, se încurcă la detalii de poziționare a clauzelor.
3. **Notarea Scorului Inițial (`Baseline`)**:
   - La finalul Rundei 1, profesorul notează într-un colț al tablei acuratețea generală a clasei (de exemplu: `Runda 1: 54% răspunsuri corecte`) și anunță: *"Acum vă voi arăta o singură pagină cu reguli vizuale care rezolvă 100% dintre aceste întrebări în mai puțin de 5 secunde fiecare. După ce le analizăm, vom rula exact același Kahoot a doua oară și vom opri la fiecare întrebare!"*

---

### Etapa 2: Prezentarea Regulilor de Bază din Fișa de Recapitulare (PDF) (00:15 – 00:50)

Profesorul deschide pe ecran fișa **„Recapitulare — Reguli de bază pentru temele studiate”** și explică pe rând fiecare dintre cele 6 secțiuni, arătând elevilor cum să citească tiparele vizuale (**Syntax Writing Patterns**).

---

#### Secțiunea 1 din PDF: `DML - INSERT, UPDATE, DELETE` (Data Manipulation Language)

Profesorul explică faptul că în DML (modificarea datelor din interiorul unui tabel) există doar 3 operațiuni: inserare (`INSERT`), modificare (`UPDATE`) și ștergere (`DELETE`), fiecare având un șablon fix de cuvinte cheie care nu se schimbă niciodată:

##### A. Cele 3 Tipare Oficiale pentru `INSERT`:
1. **Tiparul 1 — Inserarea de valori manuale (`INSERT INTO ... VALUES ...`)**:
   ```sql
   INSERT INTO TableName (col1, col2) VALUES (val1, val2);
   ```
   - *Regulă de recunoaștere*: Cuvintele cheie obligatorii sunt **`INSERT INTO`** urmate de **`VALUES`**.
2. **Tiparul 2 — Copierea rândurilor într-un tabel care EXISTĂ deja (`INSERT INTO ... SELECT ... FROM ...`)**:
   ```sql
   INSERT INTO ExistingTable (col1, col2)
   SELECT col1, col2 FROM SourceTable;
   ```
   - *Regulă de recunoaștere*: Începe tot cu **`INSERT INTO`**, dar în loc de `VALUES` este urmat direct de **`SELECT ... FROM ...`**.
3. **Tiparul 3 — Crearea unui tabel NOU și copierea datelor în el (`SELECT ... INTO ... FROM ...`)**:
   ```sql
   SELECT col1, col2
   INTO NewTable
   FROM SourceTable;
   ```
   - *Regulă de recunoaștere*: Începe cu **`SELECT`**, are **`INTO`** la mijloc (înainte de `FROM`) și creează automat tabelul `NewTable`!
   - *Capcană clasică în Kahoot & Certiport*: Nu confundați ordinea! Este fie `INSERT INTO ... SELECT ... FROM ...`, fie `SELECT ... INTO ... FROM ...`. Niciodată `SELECT FROM ... INTO` sau `INSERT SELECT ... INTO`!

##### B. Tiparul Obligatoriu pentru `UPDATE`:
```sql
UPDATE ...
SET ...
WHERE ...
```
- *Regulă de recunoaștere*: Cele 3 cuvinte cheie apar **întotdeauna** în ordinea **`UPDATE`** (numele tabelului) -> **`SET`** (`coloana = valoare`) -> **`WHERE`** (condiția de filtrare).
- *Capcană în Kahoot*: În SQL **NU există** `UPDATE FROM tabel` și nici `UPDATE tabel WHERE ... SET ...`! `SET` stă obligatoriu înainte de `WHERE`.

##### C. Tiparul Obligatoriu pentru `DELETE`:
```sql
DELETE FROM ...
WHERE ...
```
- *Regulă de recunoaștere*: Începe cu **`DELETE FROM`** (numele tabelului), urmat de **`WHERE`** (condiția).
- *Capcană în Kahoot*: `DELETE` șterge rânduri întregi, nu coloane! De aceea **nu scriem niciodată nume de coloane sau `*` între `DELETE` și `FROM`** (variante precum `DELETE * FROM` sau `DELETE col1 FROM` sunt erori de sintaxă în T-SQL).

---

#### Secțiunea 2 din PDF: `DDL - CREATE, ALTER, DROP` (Data Definition Language — Regula `1 -> 2 -> 3`)

Profesorul arată diagrama cu cele 3 coloane unite prin săgeți verzi din fișa PDF. Orice comandă DDL care lucrează cu obiectele bazei de date se construiește mecanic lipind câte un element din fiecare dintre cele **3 coloane, în ordinea 1 -> 2 -> 3**:

| Poziția 1: Acțiunea (Verbul DDL) | → | Poziția 2: Tipul Obiectului (`Object Type`) | → | Poziția 3: Denumirea (`Object Name`) |
| :--- | :---: | :--- | :---: | :--- |
| **`CREATE`**<br>**`ALTER`**<br>**`DROP`**<br>**`TRUNCATE`** | **→** | **`DATABASE`**<br>**`TABLE`**<br>**`PROCEDURE`**<br>**`VIEW`**<br>**`FUNCTION`**<br>**`LOGIN`**<br>**`USER`**<br>**`INDEX`**<br>**`COLUMN`** | **→** | **`Student`**<br>**`Customer`**<br>**`School`**<br>**`Employee`**<br>*etc.* |

##### Cum ne ajută Regula `1 -> 2 -> 3` la Kahoot și la Certiport?
- În SQL Server, **nu ai voie să sari peste Poziția 2 (Tipul Obiectului)!**
  - **Greșit**: `CREATE Student`, `ALTER Customer`, `DROP School`, `TRUNCATE Employee` (lipsește Poziția 2!).
  - **Corect (`1 + 2 + 3`)**:
    - `CREATE TABLE Student ...`
    - `ALTER VIEW Customer ...`
    - `DROP DATABASE School;`
    - `TRUNCATE TABLE Employee;`
    - `CREATE LOGIN user_login ...`
- *Observație pentru `ALTER TABLE`*: Când modificăm o coloană dintr-un tabel, aplicăm regula de două ori în lanț: `ALTER TABLE Student` (`1 + 2 + 3`) urmat de `ALTER COLUMN age INT` / `DROP COLUMN age` (`1 + 2 + 3`)!

---

#### Secțiunea 3 din PDF: `DQL - SELECT` (Ordinea Strictă a Celor 5 Clauze și Cuvintele Asociate)

Profesorul atrage atenția asupra codului de culori din PDF pentru instrucțiunea `SELECT`. Aceasta este cea mai testată structură din întregul examen Certiport (reprezintă singură **25% din nota finală**!):

##### A. Harta Completă a Cuvintelor care Apar Împreună în `SELECT`:
```sql
SELECT TOP/DISTINCT ... FROM ...
JOIN ... ON ... JOIN ... ON ...
WHERE ... AND ... OR ...
GROUP BY ... HAVING ... AND ... OR ...
ORDER BY ... ASC/DESC
```

##### B. Ordinea Strictă `1 -> 2 -> 3 -> 4 -> 5` (Nu se poate schimba niciodată!):

| Pas | Clauza Principală | Ce Elemente Apar Exclusiv în Interiorul Ei | Reguli Critice de Poziționare |
| :---: | :--- | :--- | :--- |
| **1)** | **`SELECT ... FROM`** | `TOP`, `DISTINCT` | `TOP` și `DISTINCT` stau **imediat după cuvântul `SELECT`**, înainte de lista de coloane! `FROM` specifică tabelul principal. |
| **2)** | **`JOIN ... ON ...`** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `ON` | Orice `JOIN` este urmat obligatoriu de cuvântul **`ON`** (condiția de legătură între chei) și stă **imediat după `FROM`**, înainte de `WHERE`! |
| **3)** | **`WHERE ...`** | `AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `LIKE`, `IS NULL` | Filtrează rândurile individuale **înainte** de grupare. Nu poate conține funcții de agregare (`SUM`, `COUNT`)! |
| **4)** | **`GROUP BY ...`** | **`HAVING ...`** (cu `AND` / `OR`) | Grupează datele. Clauza `HAVING` este „filtrul grupurilor” și stă **alipită de `GROUP BY`** (după `WHERE`, dar înainte de `ORDER BY`). |
| **5)** | **`ORDER BY ...`** | `ASC`, `DESC` | Sortează rezultatul final. Este **întotdeauna ULTIMA clauză** din toată interogarea! |

> **Sfat pentru Kahoot**: Când vedeți o întrebare cu 4 variante de `SELECT`, verificați mai întâi ordinea numerelor **1 -> 2 -> 3 -> 4 -> 5** (`SELECT FROM` -> `JOIN ON` -> `WHERE` -> `GROUP BY HAVING` -> `ORDER BY`). Orice variantă care pune `WHERE` după `GROUP BY`, sau `ORDER BY` înainte de `WHERE`, sau `HAVING` fără `GROUP BY` se elimină într-o secundă!

---

#### Secțiunea 4 din PDF: `Funcțiile de Agregare` & Regula de Aur `GROUP BY`

Profesorul proiectează schema colorată din PDF (roz pentru coloanele agregate, verde pentru coloanele neagregate):

- **Cele 5 Funcții de Agregare**: **`COUNT`**, **`SUM`**, **`AVG`**, **`MIN`**, **`MAX`**.
- **Analiza Șablonului din PDF**:
  ```sql
  SELECT c1, F(c2), F(c3), c4
  FROM table
  GROUP BY c1, c4
  ```
  Unde:
  - **`F(c2)` și `F(c3)`** (marcate cu **roz** în PDF) sunt **coloane agregate (`aggregated columns`)** — adică se află în paranteza unei funcții precum `SUM(c2)`, `COUNT(c3)`, `AVG(c2)`, `MIN(c3)` sau `MAX(c2)`.
  - **`c1` și `c4`** (marcate cu **verde** în PDF) sunt **coloane neagregate (`non-aggregated columns`)** — adică sunt scrise direct în `SELECT`, fără nicio funcție de agregare în jurul lor.

- **Regula de Aur din PDF (de memorat cuvânt cu cuvânt pentru Certiport!)**:
  > **"All and only non-aggregated columns must be in the GROUP BY"**
  > *(Toate și numai coloanele neagregate din `SELECT` trebuie să se regăsească în clauza `GROUP BY`!)*

  - **Ce înseamnă „ALL” (Toate)?**: Dacă în `SELECT` ai două coloane verzi neagregate (`c1` și `c4`), în `GROUP BY` trebuie să apară **amândouă** (`GROUP BY c1, c4`). Dacă scrii doar `GROUP BY c1`, interogarea dă eroare!
  - **Ce înseamnă „AND ONLY” (Și numai)?**: Coloanele roz agregate (`F(c2)`, `F(c3)`) **NU** au ce căuta în `GROUP BY`! Nu scriem niciodată `GROUP BY c1, SUM(c2), c4`.

---

#### Secțiunea 5 din PDF: `DCL - GRANT, REVOKE, DENY` (Data Control Language)

Profesorul arată cele 3 coloane paralele pentru controlul accesului și permisiunilor din fișa PDF:

| Acordare Permisiune (`GRANT`) | Retragere Regulă (`REVOKE`) | Interzicere Explicită (`DENY`) |
| :--- | :--- | :--- |
| **`GRANT`** ...<br>**`ON`** ...<br>**`TO`** ... | **`REVOKE`** ...<br>**`ON`** ...<br>**`FROM`** ... | **`DENY`** ...<br>**`ON`** ...<br>**`TO`** ... |
| `GRANT INSERT`<br>`ON dbo.products`<br>`TO user_alexei` | `REVOKE DELETE`<br>`ON dbo.stock`<br>`FROM user_adelina` | `DENY SELECT`<br>`ON dbo.orders`<br>`TO user_andrian` |

##### Ce trebuie să urmărim în această secțiune?
1. **Ordinea liniilor este identică la toate trei**:
   - **Linia 1**: Comanda DCL (`GRANT` / `REVOKE` / `DENY`) + acțiunea vizată (`INSERT`, `DELETE`, `SELECT`, `UPDATE`).
   - **Linia 2**: Cuvântul cheie **`ON`** + numele obiectului din baza de date (`dbo.products`, `dbo.stock`, `dbo.orders`).
   - **Linia 3**: Prepoziția de direcție (`TO` sau `FROM`) + numele utilizatorului sau rolului (`user_alexei`, `user_adelina`, `user_andrian`).
2. **Diferența de Prepoziție (`TO` vs `FROM`)**:
   - `GRANT` și `DENY` dau o regulă **către (`TO`)** un utilizator (`GRANT ... ON ... TO ...` / `DENY ... ON ... TO ...`).
   - `REVOKE` retrage o regulă **de la (`FROM`)** un utilizator (`REVOKE ... ON ... FROM ...`).

---

#### Secțiunea 6 din PDF: Structura Oficială și Ponderea Subiectelor la Examenul Certiport ITS Databases

În partea de jos a fișei PDF este prezentată împărțirea exactă a punctajului la examenul internațional **Certiport ITS Databases**:

| Nr. | Domeniu de Examen Certiport | Pondere (%) | Ce Acoperă din Reguli și Lecții |
| :---: | :--- | :---: | :--- |
| **1)** | **Database design (teorie)** | **25%** | Tabele, rânduri, coloane, tipuri de date (`INT`, `VARCHAR`, `DECIMAL`, `DATE`), chei primare (`Primary Key`), chei străine (`Foreign Key`), normalizare (`1NF`, `2NF`, `3NF` — eliminarea dependențelor tranzitive). |
| **2)** | **Database Object Management (DDL)** | **25%** | Regula DDL `1 -> 2 -> 3` (`CREATE`, `ALTER`, `DROP`, `TRUNCATE` pe `TABLE`, `VIEW`, `PROCEDURE`, `FUNCTION`, `LOGIN`, `USER`, `INDEX`, `COLUMN`), constrângeri și permisiuni DCL (`GRANT`, `REVOKE`, `DENY`). |
| **3)** | **Data Retrieval (DQL / `SELECT`)** | **25%** | Ordinea `1 -> 2 -> 3 -> 4 -> 5` în `SELECT` (`SELECT TOP/DISTINCT ... FROM`, `JOIN ... ON`, `WHERE`, `GROUP BY ... HAVING`, `ORDER BY ... ASC/DESC`) și Regula de Aur a funcțiilor de agregare (`c1, c4`). |
| **4)** | **Data Manipulation (DML)** | **12%** | Cele 3 metode de `INSERT` (`VALUES`, `INSERT INTO SELECT`, `SELECT INTO`), `UPDATE ... SET ... WHERE` și `DELETE FROM ... WHERE`. |
| **5)** | **Troubleshooting (erori)** | **13%** | Identificarea cauzei pentru care o interogare dă eroare (ex: coloană neagregată lipsă din `GROUP BY`, încălcarea unei constrângeri `FOREIGN KEY` / `NOT NULL`, ordinea greșită a clauzelor, sau restaurarea backup-urilor). |

> **Concluzie Strategică pentru Elevi**:
> Observați că **DDL (25%) + DQL/SELECT (25%) + DML (12%) + Troubleshooting (13%) = 75% din tot examenul** se bazează direct pe regulile de sintaxă aflate pe această unică pagină PDF! Dacă stăpâniți vizual cele 5 șabloane de pe această foaie, aveți trei sferturi din examenul Certiport rezolvat!

---

### Etapa 3: Runda 2 Kahoot „Cu Analiză Pas cu Pas” — Oprire la Fiecare Întrebare (00:50 – 01:25)

După explicarea completă a fișei PDF, profesorul lansează **pentru a doua oară același Kahoot**:
- **Link Kahoot**: https://create.kahoot.it/share/sql-dml-select-syntax/1309a209-9878-4da9-a53f-6c6a1451305f

#### Metodologia de Desfășurare pentru Runda 2 (Stop & Analyze):
De această dată, profesorul **se oprește după fiecare întrebare** și aplică următorul protocol interactiv cu clasa:
1. **Identificarea Categoriei din PDF**:
   - Profesorul întreabă un elev: *"În care dintre cele 5 blocuri de pe fișa noastră PDF se încadrează această întrebare: DML, DDL (1-2-3), DQL (ordinea 1-5), Agregare (`GROUP BY c1, c4`) sau DCL?"*
2. **Aplicarea Șablonului (Eliminarea Variantei Greșite)**:
   - Elevii analizează pe ecran cele 4 opțiuni de răspuns prin prisma regulii din PDF:
     - *Dacă este o întrebare `INSERT`*: Verificăm care dintre cele 3 șabloane (`INSERT INTO ... VALUES`, `INSERT INTO ... SELECT ... FROM`, `SELECT ... INTO ... FROM`) este respectat fără cuvinte lipsă sau inversate.
     - *Dacă este o întrebare `UPDATE` sau `DELETE`*: Verificăm triada `UPDATE ... SET ... WHERE` sau perechea `DELETE FROM ... WHERE` (eliminăm variantele cu `UPDATE FROM` sau `DELETE * FROM`).
     - *Dacă este o întrebare `DDL`*: Verificăm prezența celor 3 elemente în ordine: `Verb (CREATE/ALTER/DROP/TRUNCATE)` + `Tip Obiect (TABLE/VIEW/PROCEDURE/COLUMN)` + `Denumire`.
     - *Dacă este o întrebare `SELECT` (ordinea clauzelor)*: Verificăm ordinea `1 (SELECT/TOP/DISTINCT ... FROM)` -> `2 (JOIN ... ON)` -> `3 (WHERE)` -> `4 (GROUP BY ... HAVING)` -> `5 (ORDER BY ... ASC/DESC)`.
     - *Dacă este o întrebare cu Funcții de Agregare (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)*: Identificăm coloanele verzi neagregate (`c1, c4`) din `SELECT` și verificăm ce variantă conține **toate și numai** acele coloane în `GROUP BY`.
     - *Dacă este o întrebare `DCL`*: Verificăm structura `GRANT ... ON ... TO`, `REVOKE ... ON ... FROM` sau `DENY ... ON ... TO`.
3. **Compararea Scorului Final (Runda 1 vs Runda 2)**:
   - La finalul Rundei 2, profesorul compară pe tablă acuratețea clasei din Runda 1 (fără reguli) cu acuratețea din Runda 2 (cu regulile din PDF), demonstrând creșterea masivă a preciziei și a vitezei de răspuns.

---

### Etapa 4: Antrenament Practic în OneCompiler pe Toate Șabloanele din PDF (01:25 – 01:50)

Pentru a fixa definitiv regulile din PDF în memoria motrică, profesorul ghidează elevii în OneCompiler printr-un script unificat care pune în practică fiecare bloc din fișa de recapitulare.

Elevii deschid [OneCompiler SQL Server](https://onecompiler.com/sqlserver) și scriu următorul cod:

```sql
-- =========================================================================
-- ANTRENAMENT PRACTIC: APLICAREA REGULILOR DIN FISA DE RECAPITULARE (PDF)
-- =========================================================================

-- -------------------------------------------------------------------------
-- 1. REGULA DDL (1 -> 2 -> 3): Verb (CREATE) + Tip Obiect (TABLE) + Denumire
-- -------------------------------------------------------------------------
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT NOT NULL,
    role_title VARCHAR(40) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- -------------------------------------------------------------------------
-- 2. REGULILE DML: CELE 3 METODE DE INSERT, UPDATE SI DELETE
-- -------------------------------------------------------------------------

-- INSERT Metoda 1: INSERT INTO ... VALUES ...
INSERT INTO Departments (dept_id, dept_name)
VALUES (10, 'IT & Cloud'), (20, 'Finance'), (30, 'Sales');

INSERT INTO Employees (emp_id, emp_name, dept_id, role_title, salary)
VALUES 
    (1, 'Alexei Rusu', 10, 'Developer', 24000.00),
    (2, 'Adelina Munteanu', 10, 'Developer', 26000.00),
    (3, 'Andrian Lupu', 10, 'QA Engineer', 19000.00),
    (4, 'Elena Ciobanu', 20, 'Accountant', 21000.00),
    (5, 'Victor Moraru', 20, 'Accountant', 22000.00),
    (6, 'Mihai Sandu', 30, 'Sales Rep', 15000.00);

-- INSERT Metoda 2: INSERT INTO ... SELECT ... FROM ... (intr-un tabel existent)
CREATE TABLE HighEarners (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO HighEarners (emp_id, emp_name, salary)
SELECT emp_id, emp_name, salary
FROM Employees
WHERE salary >= 22000.00;

-- INSERT Metoda 3: SELECT ... INTO ... FROM ... (creeaza automat tabelul nou!)
SELECT emp_id, emp_name, role_title
INTO IT_Team_Backup
FROM Employees
WHERE dept_id = 10;

-- Verificam tabelele populate prin metodele 2 si 3:
SELECT * FROM HighEarners;
SELECT * FROM IT_Team_Backup;

-- UPDATE: UPDATE ... SET ... WHERE ...
UPDATE Employees
SET salary = 27500.00
WHERE emp_id = 1;

-- DELETE: DELETE FROM ... WHERE ...
DELETE FROM Employees
WHERE emp_id = 6;

-- -------------------------------------------------------------------------
-- 3. REGULA DQL (Ordinea 1-5) & REGULA GROUP BY (c1, F(c2), F(c3), c4)
-- -------------------------------------------------------------------------
-- Observati:
--   - Coloanele NEAGREGATE (verzi): d.dept_name (c1) si e.role_title (c4)
--   - Coloanele AGREGATE (roz): COUNT(e.emp_id) (F(c2)) si AVG(e.salary) (F(c3))
--   - In GROUP BY apar OBLIGATORIU toate si numai coloanele neagregate (d.dept_name, e.role_title)!
--   - Ordinea clauzelor este strict 1 -> 2 -> 3 -> 4 -> 5!

SELECT TOP 10                         -- 1) SELECT TOP ...
    d.dept_name,                      --    c1 (non-aggregated column)
    COUNT(e.emp_id) AS total_staff,   --    F(c2) (aggregated column)
    AVG(e.salary) AS avg_salary,      --    F(c3) (aggregated column)
    e.role_title                      --    c4 (non-aggregated column)
FROM Employees e                      --    ... FROM
INNER JOIN Departments d              -- 2) JOIN ... ON ...
    ON e.dept_id = d.dept_id
WHERE e.salary > 18000.00             -- 3) WHERE ...
GROUP BY d.dept_name, e.role_title    -- 4) GROUP BY c1, c4
HAVING COUNT(e.emp_id) >= 1           --    ... HAVING ...
ORDER BY avg_salary DESC;             -- 5) ORDER BY ... ASC/DESC

-- -------------------------------------------------------------------------
-- 4. REGULILE DCL: GRANT ... ON ... TO / REVOKE ... ON ... FROM / DENY ... ON ... TO
-- -------------------------------------------------------------------------
CREATE USER user_alexei WITHOUT LOGIN;
CREATE USER user_adelina WITHOUT LOGIN;
CREATE USER user_andrian WITHOUT LOGIN;

-- 1) GRANT ... ON ... TO ...
GRANT INSERT
ON dbo.Employees
TO user_alexei;

-- 2) REVOKE ... ON ... FROM ...
REVOKE DELETE
ON dbo.Employees
FROM user_adelina;

-- 3) DENY ... ON ... TO ...
DENY SELECT
ON dbo.Employees
TO user_andrian;
```

---

### Etapa 5: Mini-Quiz Certiport ITS & Concluzii (01:50 – 02:00)

Profesorul încheie sesiunea cu mini-quizul de verificare rapidă a tiparelor din fișa de recapitulare.

---

## 5. Mini-Quiz Certiport ITS (10 Întrebări de Certificare)

#### Întrebarea 1:
Care dintre următoarele instrucțiuni creează automat un tabel nou numit `BackupStaff` și copiază datele în el?
- [ ] A) INSERT INTO BackupStaff
- [x] B) SELECT * INTO BackupStaff FROM Staff
- [ ] C) UPDATE BackupStaff SET *
- [ ] D) CREATE BackupStaff SELECT *
> **Explicație**: Conform celor 3 reguli pentru `INSERT`, tiparul `SELECT ... INTO NewTable FROM SourceTable` creează automat un tabel nou și inserează rezultatul interogării în acesta.

---

#### Întrebarea 2:
Care este ordinea corectă a cuvintelor cheie într-o instrucțiune `UPDATE` validă în T-SQL?
- [ ] A) UPDATE FROM ... WHERE ... SET
- [ ] B) SET ... UPDATE ... WHERE
- [x] C) UPDATE ... SET ... WHERE
- [ ] D) UPDATE ... WHERE ... VALUES
> **Explicație**: Tiparul obligatoriu pentru actualizarea înregistrărilor în DML este `UPDATE <tabel> SET <coloana = valoare> WHERE <condiție>`.

---

#### Întrebarea 3:
Conform regulii DDL `1 -> 2 -> 3`, ce cuvânt lipsește din comanda greșită `DROP Customer;`?
- [ ] A) FROM
- [x] B) TABLE
- [ ] C) VALUES
- [ ] D) WHERE
> **Explicație**: Orice comandă DDL trebuie să conțină Poziția 1 (Verbul `DROP`), Poziția 2 (Tipul obiectului, ex: `TABLE` sau `VIEW`) și Poziția 3 (Denumirea `Customer`). Forma corectă este `DROP TABLE Customer;`.

---

#### Întrebarea 4:
Care este ordinea corectă a celor 5 clauze într-o interogare `SELECT` completă?
- [ ] A) SELECT, WHERE, JOIN, GROUP BY, ORDER BY
- [x] B) SELECT FROM, JOIN ON, WHERE, GROUP BY, ORDER BY
- [ ] C) SELECT FROM, WHERE, ORDER BY, GROUP BY, JOIN
- [ ] D) SELECT, GROUP BY, WHERE, HAVING, ORDER BY
> **Explicație**: Ordinea fixă în DQL este: `1) SELECT ... FROM` -> `2) JOIN ... ON` -> `3) WHERE` -> `4) GROUP BY ... HAVING` -> `5) ORDER BY`.

---

#### Întrebarea 5:
Unde se plasează clauza `HAVING` într-o interogare `SELECT`?
- [ ] A) Înainte de WHERE
- [ ] B) Imediat după SELECT
- [x] C) După GROUP BY, înainte de ORDER BY
- [ ] D) După ORDER BY
> **Explicație**: `HAVING` filtrează rezultatele agregate și aparține blocului 4 (`GROUP BY ... HAVING ...`), fiind plasată după `GROUP BY` și înainte de `ORDER BY`.

---

#### Întrebarea 6:
Pentru interogarea `SELECT c1, SUM(c2), AVG(c3), c4 FROM Sales GROUP BY ...`, ce trebuie să conțină clauza `GROUP BY`?
- [ ] A) c2, c3
- [ ] B) c1, c2, c3, c4
- [x] C) c1, c4
- [ ] D) Doar c1
> **Explicație**: Conform regulii de aur (*"all and only non-aggregated columns must be in the GROUP BY"*), toate și numai coloanele neagregate (`c1` și `c4`) trebuie incluse în `GROUP BY`.

---

#### Întrebarea 7:
Care dintre următoarele NU este o funcție de agregare standard în SQL?
- [ ] A) COUNT
- [ ] B) AVG
- [x] C) DISTINCT
- [ ] D) MAX
> **Explicație**: Cele 5 funcții de agregare principale sunt `COUNT`, `SUM`, `AVG`, `MIN` și `MAX`. `DISTINCT` este un modificator din clauza `SELECT` pentru eliminarea duplicatelor.

---

#### Întrebarea 8:
Care este sintaxa corectă pentru retragerea permisiunii de ștergere a utilizatorului `user_adelina` pe tabelul `dbo.stock`?
- [ ] A) REVOKE DELETE ON dbo.stock TO user_adelina
- [x] B) REVOKE DELETE ON dbo.stock FROM user_adelina
- [ ] C) DENY DELETE FROM dbo.stock TO user_adelina
- [ ] D) GRANT DELETE ON dbo.stock FROM user_adelina
> **Explicație**: În timp ce `GRANT` și `DENY` folosesc prepoziția `TO`, comanda `REVOKE` folosește prepoziția `FROM` (`REVOKE DELETE ON dbo.stock FROM user_adelina`).

---

#### Întrebarea 9:
Care este sintaxa corectă pentru interzicerea explicită a citirii tabelului `dbo.orders` pentru `user_andrian`?
- [ ] A) DENY SELECT FROM dbo.orders TO user_andrian
- [x] B) DENY SELECT ON dbo.orders TO user_andrian
- [ ] C) DENY SELECT ON dbo.orders FROM user_andrian
- [ ] D) REVOKE SELECT ON dbo.orders TO user_andrian
> **Explicație**: Șablonul DCL pentru interzicere explicită este `DENY <permisiune> ON <obiect> TO <utilizator>`.

---

#### Întrebarea 10:
Ce procentaj cumulat din examenul Certiport ITS Databases este acoperit de `Database Design`, `DDL` și `DQL (SELECT)`?
- [ ] A) 50%
- [x] B) 75%
- [ ] C) 25%
- [ ] D) 90%
> **Explicație**: Conform structurii examenului Certiport, `Database Design` (25%) + `Database Object Management / DDL` (25%) + `Data Retrieval / DQL SELECT` (25%) reprezintă împreună 75% din examen (restul fiind `DML` 12% și `Troubleshooting` 13%).
