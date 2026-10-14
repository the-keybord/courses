# Lecția 04 [DB1.4]: Constrângeri de Integritate în T-SQL (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, DEFAULT, IDENTITY)

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.4
- **Modul**: Integritatea Datelor & Constrângeri DDL (Data Definition Language)
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, sincronă în OneCompiler: anatomia unei coloane (Name, Data Type, Constraints), modelarea unei baze de date auto cu trei tabele relaționate (`Owner`, `Brand`, `Car`), simularea datelor corupte/eronate pentru evidențierea lipsei de constrângeri, aplicarea secvențială a celor 8 constrângeri de integritate, declanșarea deliberată și analizarea erorilor T-SQL, urmată de curățarea și validarea schemei finale.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 1.3: Înțelegerea conceptului de integritate a datelor și a rolului constrângerilor relaționale.
  - Obiectiv 2.1: Definirea cheilor primare (`PRIMARY KEY`) la nivel de coloană și la nivel de tabel cu clauza `CONSTRAINT`.
  - Obiectiv 2.2: Stabilirea relațiilor referențiale prin chei străine (`FOREIGN KEY ... REFERENCES`).
  - Obiectiv 2.3: Implementarea constrângerilor de coloană: `NOT NULL`, `UNIQUE`, `CHECK` și `DEFAULT`.
  - Obiectiv 2.4: Generarea automată a valorilor numerice unice folosind proprietatea `IDENTITY`.

### Întrebări Esențiale:
1. Care sunt cele 3 elemente obligatorii în definirea completă a unei coloane într-un tabel relațional?
2. Ce este o constrângere (`Constraint`) și de ce este mai eficient să validăm datele la nivel de bază de date decât exclusiv în aplicație?
3. Care este diferența de sintaxă între declararea unei constrângeri direct pe coloană (*column-level*) și declararea ei la sfârșitul tabelului cu `CONSTRAINT` (*table-level*)?
4. Ce mesaje de eroare specifice returnează SQL Server atunci când încălcăm o constrângere `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE` sau `CHECK`?
5. De ce clauza `IDENTITY` este specifică T-SQL / SQL Server și cum corespunde ea noțiunii de `AUTO_INCREMENT` din alte sisteme RDBMS?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Formular Trimitere Soluții (Google Form)**: `[Link Formular Google - Câmp Răspuns Text Lung]`
- **Documentație T-SQL CREATE TABLE & Constraints**: https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql
- **Documentație Microsoft - Constrângeri de Integritate**: https://learn.microsoft.com/en-us/sql/relational-databases/tables/create-unique-constraints

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate stațiile de lucru ale elevilor.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis și funcțional.
- [ ] Formular Google activat (un formular simplu cu un câmp uriaș de tip text/paragraf: *„Lipește aici tot codul tău T-SQL cu cele 28 de sarcini”*).
- [ ] Proiectorul / ecranul partajat pregătit pentru scrierea live a interogărilor și vizualizarea mesajelor de eroare.

### Materiale Didactice & Exemple Pregătite
- [ ] Scriptul DDL și datele de test pentru tabelul `Persons` pregătit pentru distribuire instantanee către elevi.
- [ ] Lista celor 28 de sarcini de interogare afișată pe ecran / partajată în chat-ul clasei.
- [ ] Schema structurală a tabelelor `Owner`, `Brand` și `Car` pregătită pentru partea a doua a lecției.
- [ ] Setul deliberat de „date greșite” (rânduri cu text în loc de cifre, ID-uri duplicate, `NULL`-uri nepermise, referințe către branduri inexistente).
- [ ] Șabloanele de sintaxă pentru cele două moduri de scriere: *column-level* vs *table-level* cu `CONSTRAINT`.
- [ ] Setul de 8 întrebări tip Certiport ITS pregătit pentru testarea finală.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:30** | **1. Marele Test Practic de Diagnostic: Tabelul `Persons` (28 Sarcini)** | Distribuirea scriptului `Persons` (7 coloane). Elevii rezolvă autonom 28 de interogări T-SQL acoperind toți operatorii învățați (`=`, `<>`, `<`, `>`, `<=`, `>=`, `BETWEEN`, `NOT BETWEEN`, `IS NULL`, `IS NOT NULL`, `LIKE`, `IN`, `NOT IN`, `AND`, `OR`, `NOT`, paranteze). Toate sarcinile se rezolvă într-un singur fișier (comentând interogările testate), iar codul complet se trimite în Google Form. |
| **00:30 – 00:45** | **2. Anatomia unei Coloane & Ce sunt Constrângerile** | Trecerea la noul subiect: fiecare coloană are Nume, Tip de Date și Constrângeri. Definiția funcțională a constrângerilor ca gardieni la nivel de motor RDBMS. |
| **00:45 – 01:05** | **3. Schema Bazei de Date Auto & Paradoxul Datelor Greșite** | Crearea tabelelor `Owner`, `Brand` și `Car` fără constrângeri. Popularea cu date mixte (corecte vs absurde) pentru a demonstra vulnerabilitatea tabelelor neprotejate. |
| **01:05 – 01:30** | **4. Constrângeri Cheie: PRIMARY KEY & FOREIGN KEY** | Aplicarea `PRIMARY KEY` (inline, table-level și cu clauza `CONSTRAINT`), captarea erorilor de duplicat și `NULL`. Aplicarea `FOREIGN KEY`, explicarea integrității referențiale și captarea erorii de conflict referențial. |
| **01:30 – 01:45** | **5. Constrângeri de Valoare: NOT NULL, UNIQUE, CHECK, DEFAULT & NULL** | Aplicarea constrângerilor: `NOT NULL` (câmp obligatoriu), `UNIQUE` (unicitate pe coloană), `CHECK` (vârstă, dată de naștere, șablon email), `DEFAULT` (`GETDATE()`, status) și `NULL` explicit. |
| **01:45 – 01:55** | **6. Automatizarea Cheilor cu IDENTITY & Schema Finală** | Introducerea proprietății `IDENTITY(1,1)` pentru incrementare automată în T-SQL (comparație cu `AUTO_INCREMENT`). Reconstruirea completă a bazei de date și inserarea setului corect de date în OneCompiler. |
| **01:55 – 02:00** | **7. Mini-Quiz Certiport ITS & Concluzii** | Evaluare de 8 întrebări tip Certiport centrată pe sintaxa constrângerilor, identificarea tiparelor de cod și depanarea erorilor clasice. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Marele Test Practic de Diagnostic: Tabelul `Persons` (00:00 – 00:30)

Profesorul deschide lecția oferind elevilor o provocare intensivă de verificare a competențelor dobândite în lecțiile precedente:
*"Înainte de a învăța cum să blocăm datele greșite prin constrângeri, trebuie să demonstrăm că stăpânim perfect arta de a interoga datele existente. În următoarele 30 de minute veți rezolva un set de 28 de sarcini practice de interogare pe o bază de date cu persoane."*

#### 1. Regulile de Lucru pentru Elevi:
1. **Un Singur Fișier**: Toate cele 28 de cerințe se rezolvă în aceeași fereastră OneCompiler, direct sub scriptul de creare și populare a tabelului `Persons`.
2. **Comentarea Soluțiilor Testate**: După ce o interogare a fost scrisă și verificată cu succes (apasă *Run* și produce rezultatul așteptat), elevul **comentează interogarea** folosind `--` înainte de a trece la următoarea (de exemplu: `-- Task 1: SELECT * FROM Persons WHERE age > 30;`). Astfel, codul rămâne curat, executabil de la cap la coadă fără a afișa 28 de tabele deodată în consolă.
3. **Trimiterea Soluțiilor**: La finalul celor 30 de minute, fiecare elev selectează tot codul (`Ctrl + A`), îl copiază (`Ctrl + C`) și îl lipește în câmpul mare de text din formularul **Google Form** pus la dispoziție de profesor.

---

#### 2. Scriptul de Inițializare: Tabelul `Persons` (7 Coloane)

Profesorul partajează scriptul pe care toți elevii îl copiază în OneCompiler:

```sql
-- ===================================================
-- TEST DE DIAGNOSTIC: TABELUL PERSONS (7 COLOANE)
-- ===================================================

CREATE TABLE Persons (
    person_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    height_cm INT NULL,
    city VARCHAR(50) NOT NULL,
    email VARCHAR(100) NULL
);

INSERT INTO Persons (person_id, first_name, last_name, age, height_cm, city, email)
VALUES 
    (1, 'Andrei', 'Popescu', 28, 182, 'Bucuresti', 'andrei.popescu@gmail.com'),
    (2, 'Elena', 'Radu', 22, 168, 'Cluj', 'elena.radu@yahoo.com'),
    (3, 'Mihai', 'Ionescu', 35, 175, 'Iasi', NULL),
    (4, 'Maria', 'Dumitrescu', 19, 162, 'Bucuresti', 'maria.d@gmail.com'),
    (5, 'Ion', 'Vasile', 42, 190, 'Timisoara', 'ion.vasile@outlook.com'),
    (6, 'Ana', 'Popa', 20, NULL, 'Cluj', 'ana.popa@gmail.com'),
    (7, 'Alexandru', 'Stan', 31, 185, 'Brasov', 'alex.stan@yahoo.com'),
    (8, 'Diana', 'Stoica', 25, 170, 'Chisinau', 'diana.stoica@gmail.com'),
    (9, 'Cristian', 'Gheorghe', 17, 178, 'Bucuresti', NULL),
    (10, 'Ioana', 'Marin', 29, 165, 'Iasi', 'ioana.marin@gmail.com'),
    (11, 'George', 'Tudor', 48, 172, 'Timisoara', 'george.tudor@yahoo.com'),
    (12, 'Andreea', 'Nistor', 23, 174, 'Cluj', 'andreea.n@gmail.com'),
    (13, 'Stefan', 'Dobre', 26, 188, 'Brasov', 'stefan.dobre@outlook.com'),
    (14, 'Laura', 'Matei', 33, 160, 'Chisinau', 'laura.matei@gmail.com'),
    (15, 'Dan', 'Moraru', 18, NULL, 'Bucuresti', 'dan.moraru@yahoo.com'),
    (16, 'Carmen', 'Iacob', 21, 169, 'Iasi', 'carmen.iacob@gmail.com'),
    (17, 'Bogdan', 'Petrescu', 39, 195, 'Timisoara', NULL),
    (18, 'Alina', 'Voinea', 27, 171, 'Cluj', 'alina.voinea@gmail.com');

SELECT * FROM Persons;
```

---

#### 3. Cele 28 de Sarcini Practice de Interogare (Student Task Sheet)

Elevii au de scris câte o interogare `SELECT` pentru fiecare dintre următoarele cerințe formulate exclusiv în limba engleză (fără indicii de sintaxă sau operatori menționați în text):

1. **Task 01**: Retrieve all columns for all persons in the table.
2. **Task 02**: Find all persons whose first name is `'Andrei'`.
3. **Task 03**: Find all persons who are older than 25 years old.
4. **Task 04**: Find all persons who are at least 180 cm tall.
5. **Task 05**: Find all persons who are 20 years old or younger.
6. **Task 06**: Find all persons who do not live in `'Bucuresti'`.
7. **Task 07**: Find all persons with a height between 165 cm and 175 cm (inclusive).
8. **Task 08**: Find all persons whose age is outside the range of 25 to 40 years.
9. **Task 09**: Find all persons who do not have an email address recorded.
10. **Task 10**: Find all persons who have an email address.
11. **Task 11**: Find all persons whose height information is missing.
12. **Task 12**: Find all persons whose last name starts with the letter `'P'`.
13. **Task 13**: Find all persons whose first name ends with the letter `'a'`.
14. **Task 14**: Find all persons whose first name contains `'an'` anywhere.
15. **Task 15**: Find all persons whose first name is exactly 3 letters long.
16. **Task 16**: Find all persons whose first name has `'o'` as its second letter.
17. **Task 17**: Find all persons who have a Gmail email address.
18. **Task 18**: Find all persons who live in either `'Cluj'`, `'Iasi'`, or `'Timisoara'`.
19. **Task 19**: Find all persons who do not live in `'Bucuresti'`, `'Chisinau'`, or `'Brasov'`.
20. **Task 20**: Find all adults (age 18 or older) who live in `'Bucuresti'`.
21. **Task 21**: Find all persons who are either taller than 185 cm or shorter than 165 cm.
22. **Task 22**: Find all persons who have a Yahoo email address and are at least 30 years old.
23. **Task 23**: Find all persons from `'Cluj'` who are either under 25 years old or taller than 170 cm.
24. **Task 24**: Find all persons named either `'Elena'` or `'Maria'` who do not have an email address.
25. **Task 25**: Find all persons aged between 20 and 35 who live in `'Iasi'` or `'Chisinau'`.
26. **Task 26**: Find all persons who have an email address that does not belong to the `'gmail.com'` domain.
27. **Task 27**: Find all persons whose height is exactly 170 cm, 175 cm, or 185 cm.
28. **Task 28**: Find all persons whose last name starts with `'M'` and who are at least 20 years old.

---

#### 4. Ghidul de Soluții al Profesorului (Verificare Rapidă)

```sql
-- Task 01: SELECT * FROM Persons;
-- Task 02: SELECT * FROM Persons WHERE first_name = 'Andrei';
-- Task 03: SELECT * FROM Persons WHERE age > 25;
-- Task 04: SELECT * FROM Persons WHERE height_cm >= 180;
-- Task 05: SELECT * FROM Persons WHERE age <= 20;
-- Task 06: SELECT * FROM Persons WHERE city <> 'Bucuresti';
-- Task 07: SELECT * FROM Persons WHERE height_cm BETWEEN 165 AND 175;
-- Task 08: SELECT * FROM Persons WHERE age NOT BETWEEN 25 AND 40;
-- Task 09: SELECT * FROM Persons WHERE email IS NULL;
-- Task 10: SELECT * FROM Persons WHERE email IS NOT NULL;
-- Task 11: SELECT * FROM Persons WHERE height_cm IS NULL;
-- Task 12: SELECT * FROM Persons WHERE last_name LIKE 'P%';
-- Task 13: SELECT * FROM Persons WHERE first_name LIKE '%a';
-- Task 14: SELECT * FROM Persons WHERE first_name LIKE '%an%';
-- Task 15: SELECT * FROM Persons WHERE first_name LIKE '___';
-- Task 16: SELECT * FROM Persons WHERE first_name LIKE '_o%';
-- Task 17: SELECT * FROM Persons WHERE email LIKE '%@gmail.com';
-- Task 18: SELECT * FROM Persons WHERE city IN ('Cluj', 'Iasi', 'Timisoara');
-- Task 19: SELECT * FROM Persons WHERE city NOT IN ('Bucuresti', 'Chisinau', 'Brasov');
-- Task 20: SELECT * FROM Persons WHERE age >= 18 AND city = 'Bucuresti';
-- Task 21: SELECT * FROM Persons WHERE height_cm > 185 OR height_cm < 165;
-- Task 22: SELECT * FROM Persons WHERE email LIKE '%@yahoo.com' AND age >= 30;
-- Task 23: SELECT * FROM Persons WHERE city = 'Cluj' AND (age < 25 OR height_cm > 170);
-- Task 24: SELECT * FROM Persons WHERE (first_name = 'Elena' OR first_name = 'Maria') AND email IS NULL;
-- Task 25: SELECT * FROM Persons WHERE age BETWEEN 20 AND 35 AND city IN ('Iasi', 'Chisinau');
-- Task 26: SELECT * FROM Persons WHERE email IS NOT NULL AND email NOT LIKE '%@gmail.com';
-- Task 27: SELECT * FROM Persons WHERE height_cm IN (170, 175, 185);
-- Task 28: SELECT * FROM Persons WHERE last_name LIKE 'M%' AND age >= 20;
```

---

### Etapa 2: Anatomia unei Coloane & Ce este o Constrângere (00:30 – 00:45)

Profesorul deschide discuția notând pe tablă structura universală a oricărei coloane SQL:
*"De fiecare dată când definim un tabel într-o bază de date relațională, fiecare coloană este compusă din trei elemente fundamentale:"*

```text
[Column Name]   +   [Data Type]   +   [Constraints]
  (Denumire)        (Tip de date)       (Reguli / Constrângeri)
```

1. **Column Name**: Identificatorul coloanei, scris obligatoriu în limba engleză (ex: `email`, `created_at`, `brand_id`).
2. **Data Type**: Tipul valorilor permise (ex: `INT`, `VARCHAR(50)`, `DATE`, `DATETIME`, `BIT`).
3. **Constraints**: Regulile stricte impuse de motorul de baze de date pentru a garanta că datele introduse sunt valide, consistente și unice.

#### Ce este o Constrângere (`Constraint`)?
- La nivel funcțional, o **constrângere** este un gardian automat la poarta tabelului.
- Dacă o comandă `INSERT` sau `UPDATE` încearcă să salveze o valoare care încalcă o regulă stabilită, SQL Server blochează imediat comanda, aruncă o eroare clară și refuză salvarea rândului.
- **De ce este critică?** Fără constrângeri, baza de date devine un fișier text haotic în care pot exista clienți fără nume, mașini cu anul -500, sau comenzi legate de clienți inexistenți.

---

### Etapa 3: Arhitectura Bazei de Date Auto & Rândurile Deliberat Eronate (00:45 – 01:05)

Construim un sistem de evidență auto compus din 3 tabele:
1. **`Owner`**: Proprietarii de vehicule.
2. **`Brand`**: Mărcile de automobile.
3. **`Car`**: Autovehiculele înmatriculate.

#### Structura Tabelelor și Relațiile dintre ele

| Tabel | Coloane Proiectate | Rol Funcțional |
| :--- | :--- | :--- |
| **`Owner`** | `owner_id`, `full_name`, `email`, `phone`, `age`, `birthdate`, `created_at` | Entitatea părinte pentru deținătorii auto |
| **`Brand`** | `brand_id`, `name` | Nomenclatorul de mărci auto |
| **`Car`** | `car_id`, `model`, `year`, `is_active`, `owner_id`, `brand_id` | Entitatea copil legată de `Owner` și `Brand` |

Relațiile logice:
- Un `Owner` poate deține mai multe mașini (`1 : N` către `Car`).
- Un `Brand` fabrică mai multe mașini (`1 : N` către `Car`).

#### Simularea Haosului: Tabele Fără Nicio Constrângere

Profesorul dictează primul script în OneCompiler, **fără nicio constrângere**:

```sql
-- Tabele create complet fara constrangeri (Vulnerabile!)
CREATE TABLE Owner (
    owner_id INT,
    full_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    age INT,
    birthdate DATE,
    created_at DATETIME
);

CREATE TABLE Brand (
    brand_id INT,
    name VARCHAR(50)
);

CREATE TABLE Car (
    car_id INT,
    model VARCHAR(50),
    year INT,
    is_active BIT,
    owner_id INT,
    brand_id INT
);
```

#### Popularea cu Date Mixte (Date Corecte vs. Date care Încalcă Logica)

Profesorul și elevii introduc cel puțin 4 rânduri în fiecare tabel. Observați cum **unele date au sens deplin**, în timp ce **altele încalcă grav logica de afaceri și integritatea**:

```sql
-- 1. Populare Owner (4 randuri: nu introducem nimic in created_at, coloana ramane complet goala!)
INSERT INTO Owner (owner_id, full_name, email, phone, age, birthdate)
VALUES 
    -- Randul 1 (CORECT): are sens deplin (major, nascut in 1996, created_at omis)
    (1, 'Alex Popescu', 'alex.popescu@gmail.com', '078123456', 28, '1996-05-15'),
    
    -- Randul 2 (ERONAT): ID duplicat (1), email invalid (fara @), telefon cu litere, varsta minora (10 ani), nastere minora (2014)
    (1, 'Mihai Ionescu', 'mihai_fara_arond', 'numar_necunoscut', 10, '2014-08-20'),
    
    -- Randul 3 (ERONAT): full_name lipsa (NULL), email duplicat cu al lui Alex, varsta absurda (8 ani), nascut in 2016
    (2, NULL, 'alex.popescu@gmail.com', '079111222', 8, '2016-11-03'),
    
    -- Randul 4 (CORECT): are sens, telefonul e omis (NULL permis pe camp optional), nascuta in 1990
    (3, 'Elena Radu', 'elena.radu@yahoo.com', NULL, 34, '1990-02-10');

-- 2. Populare Brand (4 randuri: 2 corecte, 2 care incalca logica)
INSERT INTO Brand (brand_id, name)
VALUES 
    -- Randul 1 (CORECT): are sens
    (1, 'BMW'),
    
    -- Randul 2 (CORECT): are sens
    (2, 'Audi'),
    
    -- Randul 3 (ERONAT): Nume de brand duplicat ('BMW' exista deja la id = 1!)
    (3, 'BMW'),
    
    -- Randul 4 (ERONAT): Cheia primara lipseste (brand_id este NULL!)
    (NULL, 'Mercedes-Benz');

-- 3. Populare Car (4 randuri: 2 corecte, 2 care incalca logica)
INSERT INTO Car (car_id, model, year, is_active, owner_id, brand_id)
VALUES 
    -- Randul 1 (CORECT): masina valida legata de proprietarul 1 si brandul 1
    (101, 'M3 Competition', 2023, 1, 1, 1),
    
    -- Randul 2 (ERONAT): an absurd (1800!), proprietar inexistent (owner_id = 999!)
    (102, 'RS6 Avant', 1800, 1, 999, 2),
    
    -- Randul 3 (ERONAT): car_id duplicat (101), model lipsa (NULL), brand inexistent (brand_id = 555!)
    (101, NULL, 2024, 0, 1, 555),
    
    -- Randul 4 (CORECT): masina valida legata de proprietarul 3 si brandul 2
    (103, 'A4 Quattro', 2021, 1, 3, 2);

SELECT * FROM Owner;
SELECT * FROM Brand;
SELECT * FROM Car;
```

Profesorul întreabă clasa:
*"A acceptat SQL Server aceste comenzi? Da, le-a acceptat pe toate fără nicio ezitare! În timp ce rândurile lui Alex (101) și Elenei (103) au sens, restul tabelelor sunt complet compromise: avem persoane cu același ID, proprietari fără nume sau minori cu mașini, mărci duplicate, chei primare `NULL` și mașini atribuite unor mărci sau proprietari fictivi (`999`, `555`). Acum vom învăța cum să aplicăm fiecare constrângere pentru a opri aceste anomalii la nivel de sistem."*

---

### Etapa 4: Aplicarea Constrângerilor de Bază (PRIMARY KEY & FOREIGN KEY) (01:05 – 01:30)

### 1. `PRIMARY KEY` (Cheia Primară)
- **Rol**: Garantează că fiecare rând dintr-un tabel poate fi identificat unic și **interzice strict valorile `NULL`**. Un tabel poate avea o singură cheie primară.
- **Tipare de Scriere (Syntax Patterns)**:
  - **Pattern 1: Column-Level (Inline)**:
    ```sql
    owner_id INT PRIMARY KEY
    ```
  - **Pattern 2: Table-Level**:
    ```sql
    PRIMARY KEY (brand_id)
    ```
  - **Pattern 3: Table-Level cu `CONSTRAINT` explicit denumit**:
    ```sql
    CONSTRAINT PK_Car PRIMARY KEY (car_id)
    ```
    *(Notă*: Numele de constrângere poate fi orice identificator valid, de exemplu `PK_Car` sau `jenea`, dar în inginerie software folosim prefixul standard `PK_NumeTabel`.)

#### Testarea Erorilor de `PRIMARY KEY`:
Dacă încercăm să inserăm o valoare duplicat sau `NULL` pe o coloană `PRIMARY KEY`:

```sql
-- Test 1: Inserare valoare NULL pe Primary Key
-- Eroare SQL Server:
-- Cannot insert the value NULL into column 'brand_id', table 'Brand'; column does not allow nulls. INSERT fails.

-- Test 2: Inserare cheie duplicata
-- Eroare SQL Server:
-- Violation of PRIMARY KEY constraint 'PK_Brand'. Cannot insert duplicate key in object 'dbo.Brand'. The duplicate key value is (1).
```

---

### 2. `FOREIGN KEY` (Cheia Străină)
- **Rol**: Impune **integritatea referențială** (*Referential Integrity*). Garantează că valoarea dintr-o coloană copil există deja în coloana `PRIMARY KEY` a tabelului părinte.
- **Tipare de Scriere (Syntax Patterns)**:
  - **Pattern 1: Column-Level (Inline)**:
    ```sql
    owner_id INT FOREIGN KEY REFERENCES Owner(owner_id)
    ```
  - **Pattern 2: Table-Level cu `CONSTRAINT` explicit denumit**:
    ```sql
    brand_id INT,
    CONSTRAINT FK_Car_Brand FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
    ```
    *(Notă*: Clauza `CONSTRAINT` permite denumirea relației, de exemplu `FK_Car_Brand` sau `marius`, pentru a identifica imediat sursa erorii în caz de conflict.)

#### Testarea Erorii de `FOREIGN KEY`:
Dacă încercăm să inserăm o mașină cu `brand_id = 999`, când în tabelul `Brand` există doar `brand_id = 1` și `2`:

```sql
-- Test Inserare Cheie Straina Inexistenta
-- Eroare SQL Server:
-- The INSERT statement conflicted with the FOREIGN KEY constraint 'FK_Car_Brand'. 
-- The conflict occurred in database 'db', table 'dbo.Brand', column 'brand_id'.
```
Profesorul explică elevilor:
*"Mesajul de eroare ne spune exact unde a apărut conflictul: am încercat să introducem o valoare în `Car` care nu se găsește în `dbo.Brand(brand_id)`!"*

---

### Etapa 5: Constrângeri de Valoare: NOT NULL, UNIQUE, CHECK, DEFAULT & NULL (01:30 – 01:45)

### 3. `NOT NULL`
- **Rol**: Interzice stocarea valorilor lipsă (`NULL`) într-o coloană. Câmpul devine obligatoriu la fiecare `INSERT`.
- **Sintaxă**:
  ```sql
  full_name VARCHAR(50) NOT NULL
  ```
- **Eroare SQL Server la încălcare**:
  ```text
  Cannot insert the value NULL into column 'full_name', table 'Owner'; column does not allow nulls. INSERT fails.
  ```

---

### 4. `UNIQUE`
- **Rol**: Garantează că toate valorile din coloană sunt distincte (nu permite duplicate). Spre deosebire de `PRIMARY KEY`, un tabel poate avea **mai multe constrângeri `UNIQUE`**, iar T-SQL permite o singură valoare `NULL` pe o coloană `UNIQUE`.
- **Sintaxă**:
  ```sql
  name VARCHAR(50) UNIQUE,
  email VARCHAR(100) UNIQUE
  ```
- **Eroare SQL Server la încălcare**:
  ```text
  Violation of UNIQUE KEY constraint 'UQ__Brand__name'. Cannot insert duplicate key in object 'dbo.Brand'. The duplicate key value is (BMW).
  ```

---

### 5. `CHECK`
- **Rol**: Validează că valorile introduse respectă o condiție logică booleană (expresie evaluată la `TRUE` sau `FALSE`). Dacă expresia returnează `FALSE`, inserarea este respinsă.
- **Tipare de Scriere (Syntax Patterns)**:
  - **Validare Numerică (vârstă minimă)**:
    ```sql
    age INT CHECK (age >= 18)
    ```
  - **Validare Dată Calendaristică**:
    ```sql
    birthdate DATE CHECK (birthdate <= '2008-09-27')
    ```
  - **Validare Șablon Text (format email cu `@` și punct)**:
    ```sql
    email VARCHAR(100) CHECK (email LIKE '%@%.%')
    ```
- **Eroare SQL Server la încălcare**:
  ```text
  The INSERT statement conflicted with the CHECK constraint 'CK__Owner__age'. 
  The conflict occurred in database 'db', table 'dbo.Owner', column 'age'.
  ```

---

### 6. `DEFAULT`
- **Rol**: Asignează automat o valoare predefinită unei coloane atunci când comanda `INSERT` nu specifică o valoare explicită pentru aceasta.
- **De ce este utilă?**: În pasul de inserare inițială în `Owner`, am omis complet coloana `created_at` la `INSERT`, motiv pentru care SQL Server a lăsat coloana complet goală (`NULL`). În loc să forțăm utilizatorul să scrie manual data sau să lăsăm câmpul gol, setăm `DEFAULT GETDATE()`, iar SQL Server va popula automat data și ora curentă de fiecare dată când coloana este omisă!
- **Tipare de Scriere**:
  - Salvarea datei și orei curente a sistemului:
    ```sql
    created_at DATETIME DEFAULT GETDATE()
    ```
  - Setarea unui indicator logic activ (`1` pentru `TRUE`):
    ```sql
    is_active BIT DEFAULT 1
    ```

---

### 7. `NULL` (Permisiune Explicită)
- **Rol**: Specifică în mod explicit că o coloană este opțională și acceptă stocarea valorilor `NULL`.
- **Sintaxă**:
  ```sql
  phone VARCHAR(20) NULL
  ```
  *(Notă*: În SQL Server, dacă o coloană nu este declarată cu `NOT NULL` sau `PRIMARY KEY`, comportamentul implicit este `NULL`. Totuși, scrierea explicită `NULL` este o bună practică de claritate arhitecturală.)

---

### Etapa 6: Automatizarea Cheilor cu IDENTITY & Schema Finală (01:45 – 01:55)

### 8. `IDENTITY` (Generare Automată de Valori Unice)
- **Rol**: Generează automat valori numerice secvențiale pentru fiecare rând nou introdus.
- **Sintaxă T-SQL**:
  ```sql
  owner_id INT IDENTITY(1, 1) PRIMARY KEY
  ```
  - Primul parametru (`1`) reprezintă valoarea de pornire (*Seed*).
  - Al doilea parametru (`1`) reprezintă pasul de incrementare (*Increment*).
- **Notă Importantă Certiport**: În T-SQL (Microsoft SQL Server), cuvântul cheie este **`IDENTITY`**. Sintaxa `AUTO_INCREMENT` este folosită în MySQL, iar examenul Certiport ITS testează frecvent recunoașterea sintaxei oficiale T-SQL `IDENTITY(seed, increment)`.

---

#### Scriptul T-SQL Final, Complet și Validat (OneCompiler Ready)

Profesorul ghidează elevii să execute scriptul complet, curat și protejat de toate cele 8 constrângeri:

```sql
-- ===================================================
-- SCHEMA FINALA CU TOATE CELE 8 CONSTRANGERI DE INTEGRITATE
-- ===================================================

-- 1. Tabelul Brand (cu PRIMARY KEY table-level si UNIQUE)
CREATE TABLE Brand (
    brand_id INT,
    name VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (brand_id)
);

-- 2. Tabelul Owner (cu IDENTITY, PRIMARY KEY, NOT NULL, CHECK, DEFAULT si NULL)
CREATE TABLE Owner (
    owner_id INT IDENTITY(1, 1) PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE CHECK (email LIKE '%@%.%'),
    phone VARCHAR(20) NULL,
    age INT NOT NULL CHECK (age >= 18),
    birthdate DATE NOT NULL CHECK (birthdate <= '2008-09-27'),
    created_at DATETIME DEFAULT GETDATE()
);

-- 3. Tabelul Car (cu CONSTRAINT denumit pentru PK si FK, DEFAULT, CHECK)
CREATE TABLE Car (
    car_id INT,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL CHECK (year BETWEEN 1900 AND 2026),
    is_active BIT DEFAULT 1,
    owner_id INT NOT NULL,
    brand_id INT NOT NULL,
    CONSTRAINT PK_Car PRIMARY KEY (car_id),
    CONSTRAINT FK_Car_Owner FOREIGN KEY (owner_id) REFERENCES Owner(owner_id),
    CONSTRAINT FK_Car_Brand FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

-- ===================================================
-- INSERAREA DATELOR CORECTE (TESTARE DE SUCCES)
-- ===================================================

-- Populare Brand
INSERT INTO Brand (brand_id, name)
VALUES 
    (1, 'BMW'),
    (2, 'Audi'),
    (3, 'Mercedes-Benz');

-- Populare Owner (owner_id se genereaza automat prin IDENTITY, created_at prin DEFAULT)
INSERT INTO Owner (full_name, email, phone, age, birthdate)
VALUES 
    ('Alex Popescu', 'alex.popescu@gmail.com', '078123456', 28, '1996-05-15'),
    ('Elena Radu', 'elena.radu@yahoo.com', NULL, 30, '1994-08-22'),
    ('Mihai Dan', 'mihai.dan@outlook.com', '079988776', 19, '2005-01-10');

-- Populare Car (respecta integritatea referentiala cu Owner si Brand)
INSERT INTO Car (car_id, model, year, is_active, owner_id, brand_id)
VALUES 
    (101, 'M3 Competition', 2023, 1, 1, 1),
    (102, 'RS6 Avant', 2022, 1, 2, 2),
    (103, 'C63 AMG', 2021, 0, 3, 3);

-- Vizualizare date corecte
SELECT * FROM Brand;
SELECT * FROM Owner;
SELECT * FROM Car;
```

---

## 5. Mini-Quiz Certiport ITS (Evaluare & Consolidare)

#### Întrebarea 1:
Care este diferența fundamentală dintre o constrângere `PRIMARY KEY` și o constrângere `UNIQUE`?
- [ ] A) `PRIMARY KEY` poate fi definită doar pe coloane de tip text, iar `UNIQUE` doar pe numere.
- [x] B) Un tabel poate avea o singură `PRIMARY KEY` (care nu acceptă `NULL`), dar poate avea multiple constrângeri `UNIQUE`.
- [ ] C) `UNIQUE` nu verifică valorile duplicate, ci doar valorile nule.
- [ ] D) Nu există nicio diferență; sunt denumiri sinonime în T-SQL.
> **Explicație**: Un tabel admite o singură cheie primară (`PRIMARY KEY`), care respinge strict valorile `NULL`. În schimb, pot exista mai multe constrângeri `UNIQUE` pe același tabel pentru alte coloane unice (cum ar fi `email` sau `name`).

---

#### Întrebarea 2:
Ce mesaj de eroare va genera SQL Server dacă încercați să inserați o înregistrare în tabelul `Car` cu o valoare `brand_id = 500`, în condițiile în care tabelul `Brand` conține doar id-urile 1, 2 și 3?
- [ ] A) Violation of PRIMARY KEY constraint.
- [x] B) The INSERT statement conflicted with the FOREIGN KEY constraint.
- [ ] C) Cannot insert duplicate key in object.
- [ ] D) The INSERT statement conflicted with the CHECK constraint.
> **Explicație**: Integritatea referențială este protejată de constrângerea `FOREIGN KEY`. Inserarea unei chei copil care nu are corespondent în tabelul părinte declanșează un conflict de cheie străină (*FOREIGN KEY constraint conflict*).

---

#### Întrebarea 3:
Fie instrucțiunea:
```sql
CREATE TABLE Users (
    user_id INT,
    username VARCHAR(30),
    CONSTRAINT PK_Users PRIMARY KEY (user_id)
);
```
Ce reprezintă identificatorul `PK_Users` în această declarație?
- [ ] A) Numele bazei de date în care se salvează tabelul.
- [ ] B) Numele fișierului de log pe disc.
- [x] C) Numele explicit atribuit constrângerii de cheie primară.
- [ ] D) O funcție automată de generare a cheilor.
> **Explicație**: Clauza `CONSTRAINT NumeConstrangere` permite atribuirea unui nume personalizat regulii. În cazul unei erori, SQL Server va afișa `PK_Users` în mesaj, permițând identificarea instantanee a problemei.

---

#### Întrebarea 4:
Care dintre următoarele clauze T-SQL generează automat o secvență numerică începând de la 100 și crescând cu câte 5 la fiecare rând nou inserat?
- [ ] A) `AUTO_INCREMENT(100, 5)`
- [x] B) `IDENTITY(100, 5)`
- [ ] C) `SEQUENCE(100, 5)`
- [ ] D) `DEFAULT(100 + 5)`
> **Explicație**: În T-SQL (SQL Server), proprietatea de numerotare automată este `IDENTITY(seed, increment)`. Primul argument este valoarea inițială (100), iar al doilea este pasul de adăugare (5). `AUTO_INCREMENT` este specific MySQL.

---

#### Întrebarea 5:
Ce clauză trebuie adăugată unei coloane `registration_date` pentru ca aceasta să preia automat data și ora curentă dacă utilizatorul nu furnizează nicio valoare la `INSERT`?
- [ ] A) `CHECK (registration_date = NOW())`
- [x] B) `DEFAULT GETDATE()`
- [ ] C) `IDENTITY(1, 1)`
- [ ] D) `AUTO_DATE`
> **Explicație**: Constrângerea `DEFAULT` specifică o valoare prestabilită. Funcția T-SQL care returnează data și ora curentă a sistemului este `GETDATE()`.

---

#### Întrebarea 6:
Ce va returna încercarea de a insera valoarea `15` în coloana definită prin `age INT CHECK (age >= 18)`?
- [ ] A) Valoarea va fi rotunjită automat la 18.
- [ ] B) Valoarea va fi salvată cu un avertisment (warning).
- [x] C) O eroare de execuție: comanda `INSERT` este respinsă din cauza conflictului cu constrângerea `CHECK`.
- [ ] D) Coloana va fi completată cu valoarea `NULL`.
> **Explicație**: Constrângerea `CHECK` evaluează condiția booleană. Deoarece `15 >= 18` este `FALSE`, SQL Server respinge complet tranzacția de inserare și emite o eroare de conflict `CHECK`.

---

#### Întrebarea 7:
Ce se întâmplă dacă o coloană este definită fără `NOT NULL` și fără nicio altă constrângere, de exemplu `phone VARCHAR(20)`?
- [ ] A) Coloana respinge automat valorile `NULL`.
- [x] B) Coloana acceptă implicit valori `NULL`.
- [ ] C) SQL Server returnează eroare de sintaxă la crearea tabelului.
- [ ] D) Coloana primește automat o cheie străină.
> **Explicație**: În T-SQL, starea implicită a unei coloane nou create (dacă nu este cheie primară) este `NULL` (permite valori lipsă), cu excepția cazului în care specificăm explicit `NOT NULL`.

---

#### Întrebarea 8:
Care este sintaxa corectă pentru a constrânge o coloană `email` să conțină caracterele specifice unei adrese valide (adică simbolul `@` urmat de un punct `.`)?
- [ ] A) `email VARCHAR(100) UNIQUE ('%@%.%')`
- [ ] B) `email VARCHAR(100) DEFAULT ('@.')`
- [x] C) `email VARCHAR(100) CHECK (email LIKE '%@%.%')`
- [ ] D) `email VARCHAR(100) FOREIGN KEY ('%@%.%')`
> **Explicație**: Validarea conținutului text pe baza unui șablon se realizează combinând constrângerea `CHECK` cu operatorul de potrivire a modelelor `LIKE`.
