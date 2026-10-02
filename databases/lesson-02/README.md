# Lecția 02 [DB1.2]: Sublimbajele SQL (DDL, DML, DQL, DCL), Manipularea Schemelor & Modificarea Datelor

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.2
- **Modul**: Structura Limbajului SQL & Operațiuni DDL / DML
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, sincronă în OneCompiler: încălzire cu filtrări esențiale (`WHERE`, `LIKE`, `IN`, `IS NULL`), urmată de analiza structurală a categoriilor SQL (DDL, DML, DQL, DCL) și execuția comenzilor de creare, modificare și ștergere a schemelor și datelor.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 2.1: Clasificarea instrucțiunilor SQL în DDL, DML, DQL și DCL.
  - Obiectiv 2.2: Crearea și modificarea structurii tabelelor folosind DDL (`CREATE TABLE`, `ALTER TABLE` cu `ADD`, `DROP COLUMN`, `ALTER COLUMN`, `ADD/DROP CONSTRAINT`, `DROP TABLE`).
  - Obiectiv 2.3: Manipularea înregistrărilor folosind DML (`INSERT INTO VALUES`, `INSERT INTO SELECT`, `SELECT INTO`, `UPDATE`, `DELETE`).
  - Obiectiv 2.4: Înțelegerea diferenței critice de performanță și integritate între `DELETE` (DML) și `TRUNCATE TABLE` (DDL).

### Întrebări Esențiale:
1. Care este diferența arhitecturală între comenzile care modifică structura tabelelor (**DDL**) și cele care manipulează rândurile de date (**DML**)?
2. Ce se întâmplă dacă executăm o instrucțiune `UPDATE` sau `DELETE` fără clauza `WHERE` și cum protejăm integritatea bazei de date?
3. De ce comanda `TRUNCATE TABLE` este considerată DDL și de ce este substanțial mai rapidă decât `DELETE FROM` la ștergerea tuturor înregistrărilor?
4. Care sunt cele trei metode fundamentale de inserare a datelor în T-SQL și când folosim `SELECT INTO` în locul comenzii `INSERT INTO`?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație T-SQL DDL**: https://learn.microsoft.com/en-us/sql/t-sql/statements/statements
- **Documentație T-SQL DML**: https://learn.microsoft.com/en-us/sql/t-sql/queries/queries

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate stațiile de lucru.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pe ecranul elevilor.
- [ ] Proiectorul / ecranul central configurat pentru afișarea interogărilor T-SQL.

### Materiale Didactice & Exemple Pregătite
- [ ] Scriptul inițial pentru tabelul `Customers` (cu valori `NULL` pe coloana `extension`) pregătit pentru etapa de încălzire.
- [ ] Setul de scenarii DDL (`ALTER TABLE`, `ADD CONSTRAINT`, `DROP COLUMN`) și DML (`UPDATE` cu/fără `WHERE`, `TRUNCATE` vs `DELETE`).
- [ ] Mini-quiz-ul Certiport ITS pregătit la finalul lecției pentru evaluarea rapidă a înțelegerii taxonomiei SQL.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:20** | **1. Încălzire Practică: Tabelul `Customers` & 5 Filtrări Esențiale** | Crearea tabelului `Customers`, inserarea datelor de test (cu `NULL`) și rezolvarea sincronă a 5 interogări de filtrare (`IS NOT NULL`, `=`, `OR`, `LIKE 'M%'`, `IN`). |
| **00:20 – 00:40** | **2. Taxonomia Limbajului SQL: DDL, DML, DQL, DCL** | Clasificarea teoretică a celor 4 ramuri SQL pentru examenul Certiport: definire, manipulare, interogare și controlul accesului. |
| **00:40 – 01:05** | **3. DDL în Detaliu: `CREATE`, `ALTER TABLE`, `DROP TABLE`** | Modificarea structurală a schemelor: `ADD column`, `DROP COLUMN`, `ALTER COLUMN`, adăugarea și eliminarea constrângerilor (`ADD/DROP CONSTRAINT`), eliminarea tabelelor (`DROP TABLE`). |
| **01:05 – 01:35** | **4. DML în Detaliu: Inserare (3 Metode), `UPDATE`, `DELETE` vs `TRUNCATE`** | Cele 3 tehnici de `INSERT` (`VALUES`, `INSERT INTO SELECT`, `SELECT INTO`), modificarea datelor cu `UPDATE` (riscul omitării `WHERE`), ștergerea rândurilor cu `DELETE` vs `TRUNCATE TABLE`. |
| **01:35 – 01:50** | **5. Sarcina Practică Individuală (OneCompiler)** | Exercițiu aplicativ individual: gestionarea completă a unui tabel de produse (`Products`) prin operațiuni succesive DDL și DML. |
| **01:50 – 02:00** | **6. Mini-Quiz Certiport ITS & Concluzii** | Evaluare grilă de 8 întrebări Certiport axate pe clasificarea comenzilor SQL, clauze de filtrare și siguranța datelor. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Încălzire Practică – Tabelul `Customers` & 5 Filtrări Esențiale (00:00 – 00:20)

Profesorul deschide sesiunea direct în OneCompiler:
*"Înainte de a pătrunde în structura teoretică a comenzilor SQL, facem un exercițiu rapid de încălzire pentru a ne reaminti cum extragem și filtrăm informațiile dintr-un tabel de clienți."*

#### Scriptul de Bază (Executat Sincron în OneCompiler):

```sql
-- Crearea tabelului Customers pentru incalzire
CREATE TABLE Customers (
    id INT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    phonenumber VARCHAR(20),
    extension VARCHAR(10)
);

-- Inserarea inregistrarilor de test (inclusiv valori NULL)
INSERT INTO Customers (id, firstname, lastname, phonenumber, extension)
VALUES 
    (1, 'Minnie', 'Mouse', '022-123456', '101'),
    (2, 'Mickey', 'Mouse', '022-654321', NULL),
    (3, 'Donald', 'Duck', '022-789012', '102'),
    (4, 'Minnie', 'Driver', '022-998877', NULL),
    (5, 'Hope', 'Sanders', '022-445566', '105'),
    (6, 'Goofy', 'Dog', '022-332211', NULL);

-- Afisarea tuturor inregistrarilor
SELECT * FROM Customers;
```

#### Rezolvarea Celor 5 Provocări de Filtrare:

Profesorul solicită elevilor să scrie pe rând următoarele interogări și explică logica fiecărui operator:

1. **Provocarea 1: Afișarea tuturor clienților care au extensie telefonică (`IS NOT NULL`)**:
   ```sql
   SELECT * FROM Customers 
   WHERE extension IS NOT NULL;
   ```
   > **Explicație Didactică**: În SQL, `NULL` nu este o valoare, ci absența unei valori (stare necunoscută). De aceea, nu putem scrie `= NULL` sau `!= NULL`, ci folosim exclusiv operatorul dedicat `IS NOT NULL` (sau `IS NULL`).

2. **Provocarea 2: Afișarea clienților cu prenumele 'Minnie'**:
   ```sql
   SELECT * FROM Customers
   WHERE firstname = 'Minnie';
   ```

3. **Provocarea 3: Afișarea clienților cu prenumele 'Minnie' SAU 'Mickey' (`OR`)**:
   ```sql
   SELECT * FROM Customers
   WHERE firstname = 'Minnie' OR firstname = 'Mickey';
   ```

4. **Provocarea 4: Afișarea clienților al căror prenume începe cu litera 'M' (`LIKE 'M%'`)**:
   ```sql
   SELECT * FROM Customers
   WHERE firstname LIKE 'M%';
   ```
   > **Explicație Didactică**: Operatorul `LIKE` realizează căutări după tipare (pattern matching). Caracterul wildcard `%` reprezintă orice număr de caractere (zero, unul sau mai multe). Dacă am fi căutat un nume care se termină cu 'e', am fi scris `LIKE '%e'`. Dacă am fi căutat un nume care conține 'in', am fi scris `LIKE '%in%'`.

5. **Provocarea 5: Afișarea clienților cu prenumele 'Minnie', 'Mickey' sau 'Hope' (`IN`)**:
   ```sql
   SELECT * FROM Customers
   WHERE firstname IN ('Minnie', 'Mickey', 'Hope');
   ```
   > **Explicație Didactică**: Operatorul `IN (...)` verifică apartenența la o listă de valori discrete. Este echivalentul sintactic compact al utilizării mai multor condiții `OR` (`firstname = 'Minnie' OR firstname = 'Mickey' OR firstname = 'Hope'`).

---

### Etapa 2: Taxonomia Limbajului SQL – DDL, DML, DQL, DCL (00:20 – 00:40)

Profesorul prezintă clasificarea formală a instrucțiunilor SQL. Această taxonomie este un subiect central în certificarea **Certiport ITS Databases**:

```
                              ┌──────────────────────────────────────────────┐
                              │            CATEGORIILE LIMBAJULUI SQL        │
                              └──────────────────────┬───────────────────────┘
                                                     │
         ┌────────────────────────┬──────────────────┴───────────────┬────────────────────────┐
         │                        │                                  │                        │
         ▼                        ▼                                  ▼                        ▼
 ┌───────────────┐        ┌───────────────┐                  ┌───────────────┐        ┌───────────────┐
 │      DDL      │        │      DML      │                  │      DQL      │        │      DCL      │
 │Data Definition│        │Data Manipulat.│                  │  Data Query   │        │ Data Control  │
 ├───────────────┤        ├───────────────┤                  ├───────────────┤        ├───────────────┤
 │ CREATE        │        │ INSERT        │                  │ SELECT        │        │ GRANT         │
 │ ALTER         │        │ UPDATE        │                  │               │        │ REVOKE        │
 │ DROP          │        │ DELETE        │                  │ (Adesea inclus│        │ DENY          │
 │ TRUNCATE      │        │               │                  │  în DML)      │        │               │
 └───────────────┘        └───────────────┘                  └───────────────┘        └───────────────┘
```

#### Descrierea Categoriilor:

1. **DDL (Data Definition Language)**:
   - **Scop**: Definește, modifică și șterge **structura (schema)** obiectelor din baza de date (tabele, vederi, indexuri, constrângeri).
   - **Comenzi principale**: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`.
   - **Analogia Didactică**: DDL construiește dulapul și rafturile (mobilierul).

2. **DML (Data Manipulation Language)**:
   - **Scop**: Lucrează cu **datele (rândurile/înregistrările)** stocate în interiorul tabelelor.
   - **Comenzi principale**: `INSERT`, `UPDATE`, `DELETE`.
   - **Analogia Didactică**: DML așază, modifică sau scoate cărțile de pe rafturi.

3. **DQL (Data Query Language)**:
   - **Scop**: Interoghează și extrage date fără a modifica starea bazei de date.
   - **Comandă principală**: `SELECT`.
   - *(Notă Certiport: În multe manuale tehnice, `SELECT` este tratat ca parte a DML, dar formal reprezintă DQL).*

4. **DCL (Data Control Language)**:
   - **Scop**: Gestionează securitatea, privilegiile și permisiunile utilizatorilor.
   - **Comenzi principale**: `GRANT` (acordă drepturi), `REVOKE` (retrage drepturi), `DENY` (interzice explicit).

---

### Etapa 3: DDL în Detaliu – `CREATE`, `ALTER TABLE`, `DROP TABLE` (00:40 – 01:05)

Profesorul demonstrează pe proiector cum modificăm structura schemelor existente fără a recrea tabelele de la zero.

#### 1. Crearea unui Tabel (`CREATE TABLE`):
```sql
CREATE TABLE Customers (
    id INT,
    firstname VARCHAR(10),
    lastname VARCHAR(10)
);
```

#### 2. Modificarea Structurii unui Tabel (`ALTER TABLE`):

- **Adăugarea de Coloane Noi (`ADD`)**:
  ```sql
  -- Adaugam simultan coloana birthday (DATE) si new_client (BIT)
  ALTER TABLE Customers
  ADD birthday DATE, new_client BIT;
  ```

- **Eliminarea unei Coloane (`DROP COLUMN`)**:
  ```sql
  -- Eliminam coloana new_client din structura tabelului
  ALTER TABLE Customers
  DROP COLUMN new_client;
  ```

- **Modificarea Tipului de Date al unei Coloane (`ALTER COLUMN`)**:
  ```sql
  -- Extindem dimensiunea prenumelui de la VARCHAR(10) la VARCHAR(15)
  ALTER TABLE Customers
  ALTER COLUMN firstname VARCHAR(15);
  ```

- **Adăugarea și Ștergerea unei Constrângeri (`ADD / DROP CONSTRAINT`)**:
  ```sql
  -- Adaugam o constrangere CHECK prin care id-ul trebuie sa fie strict pozitiv
  ALTER TABLE Customers
  ADD CONSTRAINT check_id_positive CHECK (id > 0);

  -- Daca nu mai avem nevoie de constrangere, o putem elimina dupa nume
  ALTER TABLE Customers
  DROP CONSTRAINT check_id_positive;
  ```

#### 3. Eliminarea Completă a unui Tabel (`DROP TABLE`):
```sql
-- Sterge definitiv tabelul si toate datele continute
DROP TABLE Customers;
```
> **Avertisment Didactic**: Comanda `DROP TABLE` șterge atât datele, cât și definiția structurală a tabelului din catalogul bazei de date.

---

### Etapa 4: DML în Detaliu – Inserare (3 Metode), `UPDATE`, `DELETE` vs `TRUNCATE` (01:05 – 01:35)

#### A. Cele 3 Metode Fundamentale de Inserare a Datelor:

1. **Metoda 1: `INSERT INTO ... VALUES` (Inserare Directă)**:
   - *Varianta A (Specificare explicită a coloanelor - Recomandat în producție)*:
     ```sql
     INSERT INTO Customers (id, firstname, lastname)
     VALUES 
         (1, 'Michael', 'Jackson'),
         (2, 'Mihai', 'Eminescu');
     ```
   - *Varianta B (Fără specificarea coloanelor - Necesită valori pentru TOATE coloanele în ordinea exactă din schemă)*:
     ```sql
     INSERT INTO Customers
     VALUES 
         (3, 'Ion', 'Creanga', '1837-03-01'),
         (4, 'George', 'Enescu', '1881-08-19');
     ```

2. **Metoda 2: `INSERT INTO ... SELECT` (Copierea datelor într-un tabel EXISTENT)**:
   - *Condiție*: Tabelul destinație trebuie să fie deja creat înainte de execuție.
   ```sql
   -- Cream tabelul destinatie
   CREATE TABLE ArchivedCustomers (
       id INT,
       firstname VARCHAR(50),
       lastname VARCHAR(50)
   );

   -- Copiem doar clientii din tabelul Customers
   INSERT INTO ArchivedCustomers (id, firstname, lastname)
   SELECT id, firstname, lastname FROM Customers;
   ```

3. **Metoda 3: `SELECT ... INTO ... FROM` (Crearea automată a unui tabel NOU pe baza interogării)**:
   - *Condiție*: Tabelul destinație **NU** trebuie să existe în prealabil; motorul SQL îl creează automat cu aceleași tipuri de date ca sursa.
   ```sql
   -- Creeaza automat tabelul NewCustomers si il populeaza cu toate datele din Customers
   SELECT * INTO NewCustomers
   FROM Customers;
   ```

---

#### B. Modificarea Înregistrărilor (`UPDATE`):

Sintaxa standard T-SQL:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

Exemple practice:
```sql
-- 1. Modificam prenumele si numele pentru clientii al caror prenume incepe cu 'M'
UPDATE Customers
SET firstname = 'Ion', lastname = 'Popescu'
WHERE firstname LIKE 'M%';

-- 2. Modificam prenumele pentru un client specific pe baza numelui
UPDATE Customers
SET firstname = 'Mihai'
WHERE lastname = 'Eminescu';

-- 3. PERICOL MAJOR: UPDATE fara clauza WHERE!
UPDATE Customers
SET firstname = 'Jenea';
```

> ⚠️ **Atenționare Critică pentru Examenul Certiport**: Dacă omiteți clauza `WHERE` într-o instrucțiune `UPDATE`, **TOATE rândurile din tabel vor fi suprascrise cu noua valoare**. Nu există avertisment de confirmare pe server!

---

#### C. Eliminarea Datelor: `DELETE` vs `TRUNCATE TABLE` (Comparație Tehnico-Pedagogică)

Profesorul explică la tablă diferența critică dintre cele două comenzi:

| Criteriu de Comparație | `DELETE FROM` | `TRUNCATE TABLE` |
| :--- | :--- | :--- |
| **Categorie SQL** | **DML** (Data Manipulation Language) | **DDL** (Data Definition Language) |
| **Filtrare cu `WHERE`** | **Permisă** (`DELETE FROM table WHERE id = 1`) | **Strict interzisă** (șterge întotdeauna tot) |
| **Mod de Execuție** | Șterge rând cu rând, înregistrând fiecare operațiune în Transaction Log | Dezalocă paginile întregi de date direct din memorie |
| **Viteză & Resurse** | Mai lent pe volume mari de date | **Ultra-rapid**, consum minim de resurse |
| **Resetare Coloană Identity** | **NU** resetează contorul autoincrement | **Resetează** automat contorul `IDENTITY` la valoarea inițială (1) |
| **Declanșare Triggere** | Declanșează declanșatoarele `ON DELETE` | **NU** declanșează triggerele `AFTER DELETE` |

Exemple de cod:
```sql
-- Stergerea unui singur client specificat
DELETE FROM Customers
WHERE id = 1;

-- Stergerea tuturor inregistrarilor rand cu rand (DML)
DELETE FROM Customers;

-- Golirea instanta a tabelului prin dezalocarea paginilor de memorie (DDL)
TRUNCATE TABLE Customers;
```

---

### Etapa 5: Sarcina Practică Individuală (OneCompiler) (01:35 – 01:50)

Fiecare elev deschide o sesiune curată în OneCompiler și rezolvă următoarea sarcină inginerească cap-coadă:

1. Creează tabelul `Products` cu coloanele: `product_id (INT)`, `product_name (VARCHAR(50))`, `price (DECIMAL(10,2))`.
2. Inserează 3 produse folosind comanda `INSERT INTO ... VALUES`.
3. Folosește `ALTER TABLE` pentru a adăuga coloana `stock_quantity (INT)`.
4. Actualizează stocul la valoarea `100` pentru toate produsele cu prețul mai mare de 50.00 (`UPDATE ... WHERE`).
5. Copiază toate produsele scumpe într-un tabel nou numit `PremiumProducts` folosind comanda `SELECT ... INTO`.
6. Șterge produsele cu stocul 0 din tabelul inițial (`DELETE FROM ... WHERE`).

---

## 5. Mini-Quiz Certiport ITS Databases (Verificare Teoretică)

Profesorul proiectează întrebările de verificare, iar elevii răspund individual:

---

### Întrebarea 1
Din ce categorie a limbajului SQL face parte comanda `ALTER TABLE`?
- A) DML (Data Manipulation Language)
- B) DDL (Data Definition Language) *(Corect)*
- C) DCL (Data Control Language)
- D) DQL (Data Query Language)
> **Explicație**: `ALTER TABLE` modifică structura (schema) bazei de date, aparținând prin definiție categoriei DDL.

---

### Întrebarea 2
Care dintre următoarele comenzi este clasificată drept DML?
- A) `CREATE TABLE`
- B) `DROP TABLE`
- C) `UPDATE` *(Corect)*
- D) `TRUNCATE TABLE`
> **Explicație**: `UPDATE` modifică valorile din rândurile existente, fiind o instrucțiune clasică de manipulare a datelor (DML).

---

### Întrebarea 3
Ce instrucțiune T-SQL adaugă o coloană nouă numită `email` într-un tabel existent `Users`?
- A) `UPDATE TABLE Users ADD COLUMN email VARCHAR(100);`
- B) `ALTER TABLE Users ADD email VARCHAR(100);` *(Corect)*
- C) `INSERT INTO Users (email) VALUES (VARCHAR(100));`
- D) `CREATE COLUMN email VARCHAR(100) IN Users;`
> **Explicație**: Sintaxa corectă T-SQL pentru adăugarea unei coloane este `ALTER TABLE [NumeTabel] ADD [NumeColoana] [TipDate]`.

---

### Întrebarea 4
Care este efectul executării comenzii `DELETE FROM Employees;` fără clauza `WHERE`?
- A) Va returna o eroare de sintaxă
- B) Va șterge primul rând din tabel
- C) Va șterge toate rândurile din tabel, menținând structura *(Corect)*
- D) Va șterge definitiv tabelul din baza de date
> **Explicație**: `DELETE` fără `WHERE` golește conținutul tabelului rând cu rând, dar structura tabelului rămâne intactă în schemă.

---

### Întrebarea 5
Prin ce se deosebește `TRUNCATE TABLE` de `DELETE FROM`?
- A) `TRUNCATE` permite filtrarea cu clauza `WHERE`
- B) `TRUNCATE` este o comandă DDL mai rapidă care dezalocă paginile de date și resetează contoarele de identitate *(Corect)*
- C) `TRUNCATE` este o comandă DCL de securitate
- D) `TRUNCATE` șterge doar coloanele de tip text
> **Explicație**: `TRUNCATE TABLE` este o operațiune DDL de mare viteză care eliberează direct paginile de date din memorie, fără a parcurge rândurile individual.

---

### Întrebarea 6
Ce metodă T-SQL creează automat un tabel nou pe baza rezultatului unei interogări?
- A) `INSERT INTO ... VALUES`
- B) `INSERT INTO ... SELECT`
- C) `SELECT ... INTO ... FROM` *(Corect)*
- D) `CREATE TABLE ... LIKE`
> **Explicație**: Clauza `SELECT [Coloane] INTO [TabelNou] FROM [TabelSursa]` creează automat tabelul destinație cu tipurile de date corespunzătoare și copiază înregistrările.

---

### Întrebarea 7
Ce operator folosim pentru a selecta clienții care au prenumele 'Minnie', 'Mickey' sau 'Hope' într-o singură clauză compactă?
- A) `BETWEEN`
- B) `IN` *(Corect)*
- C) `LIKE`
- D) `EXISTS`
> **Explicație**: Operatorul `IN ('val1', 'val2', ...)` testează dacă o valoare se regăsește într-o listă finită specificată.

---

### Întrebarea 8
Cum verificăm corect dacă o coloană `extension` nu conține nicio valoare (este vidă/necunoscută)?
- A) `WHERE extension = NULL`
- B) `WHERE extension == ""`
- C) `WHERE extension IS NULL` *(Corect)*
- D) `WHERE extension = 0`
> **Explicație**: În standardul SQL, starea necunoscută `NULL` se testează exclusiv prin operatorul logic `IS NULL` (sau `IS NOT NULL`).
