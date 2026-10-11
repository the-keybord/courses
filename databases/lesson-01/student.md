# Compendiu Elev: Lecția 01 [DB1.1] – Introducere în Baze de Date Relaționale, Tipuri de Date & Chei în T-SQL

---

## 📌 1. Rezumatul Lecției (Core Notes)

Această primă lecție pune bazele **modelării relaționale** și ale limbajului **T-SQL (Transact-SQL)**, aliniate standardului internațional de certificare **Certiport Information Technology Specialist (ITS): Databases**.

### Idei Cheie de Reținut:
1. **De ce RDBMS și nu Excel?**
   - Fișierele de calcul tabelar (ex. Excel) sunt excelente pentru analize rapide și bugete mici, dar eșuează când vine vorba de:
     - **Volum masiv**: Excel devine inutilizabil la sute de mii de rânduri; un RDBMS precum Microsoft SQL Server procesează miliarde de rânduri cu performanță optimizată.
     - **Acces concurent**: Într-un RDBMS, mii de utilizatori pot citi și scrie date simultan fără coruperea fișierului, grație mecanismelor de tranzacții și blocare (*locking/concurrency*).
     - **Integritate și Securitate**: Relațiile matematice dintre tabele și constrângerile rigide garantează că nu pot fi introduse date invalide.
2. **Ce este SQL și T-SQL?**
   - **SQL (Structured Query Language)**: Limbaj declarativ standardizat la nivel internațional (ANSI/ISO). Noi îi spunem motorului relațional **ce** date vrem să obținem, iar optimizatorul de interogări stabilește cel mai eficient algoritm de execuție.
   - **T-SQL (Transact-SQL)**: Extensia proprietară Microsoft pentru SQL Server, care adaugă funcții avansate, variabile și control procedural. Este dialectul oficial testat în certificarea Certiport ITS.
3. **Anatomia unui Tabel Relațional**:
   - **Tabel (Table / Entity / Relation)**: Structura bidimensională dedicată unui singur concept (ex. `Students`, `Classes`).
   - **Rând (Row / Record / Tuple)**: O singură înregistrare completă a unei entități (ex. toate informațiile despre elevul Ion Popescu).
   - **Coloană (Column / Field / Attribute)**: O proprietate specifică a entității (ex. `first_name`, `birth_date`).
4. **Principiul Cheii Primare (Primary Key)**:
   - Fiecare rând dintr-un tabel trebuie să poată fi identificat unic și fără echivoc.
   - Nu ne putem baza pe nume, prenume sau data nașterii pentru unicitate (apar duplicate inevitabil).
   - În lumea reală, fiecare cetățean are un **IDNP**; în baza de date, fiecare rând are o **Primary Key** (ex. `student_id`).
5. **Separarea Tabelelor și Cheia Străină (Foreign Key)**:
   - Aglomerarea tuturor atributelor într-un singur tabel generează **redundanță** (date repetate inutil) și **anomalii de actualizare** (ex. modificarea numelui dirigintelui de zeci de ori).
   - Soluția inginerească este descompunerea în două tabele: tabelul părinte (`Classes`) și tabelul copil (`Students`), legate printr-o **Foreign Key** (`class_id`).

---

## 📚 2. Dicționar de Termeni Tehnici (New Words Learned)

| Termen Tehnic | Categorie | Definiție & Semnificație | Exemplu / Context |
| :--- | :--- | :--- | :--- |
| **RDBMS** | Arhitectură | *Relational Database Management System* – Sistem software conceput pentru crearea, gestionarea și interogarea bazelor de date relaționale. | Microsoft SQL Server, Oracle, PostgreSQL. |
| **Table (Tabel)** | Structură | Colecție bidimensională de date organizată pe rânduri și coloane, reprezentând o entitate din lumea reală. | Tabelul `Students` stochează toți elevii. |
| **Row / Record / Tuple** | Structură | O linie orizontală dintr-un tabel ce reprezintă o instanță unică și completă a entității. | Rândul cu datele: `(101, 'Ion', 'Popescu', '2010-04-12')`. |
| **Column / Field / Attribute**| Structură | O coloană verticală ce descrie o proprietate specifică, având un nume și un tip de date bine definit. | Coloana `birth_date` conține date calendaristice. |
| **Data Type** | Schemă | Tipul de valoare pe care o poate stoca o coloană (`INT`, `VARCHAR`, `DATE`, `BIT`, `DECIMAL`). | `INT` pentru ID-uri, `VARCHAR(50)` pentru nume. |
| **Primary Key (PK)** | Integritate | O coloană (sau combinație de coloane) ale cărei valori identifică în mod unic fiecare rând dintr-un tabel. | `student_id` garantează că distingem doi elevi omonimi. |
| **Foreign Key (FK)** | Relație | O coloană dintr-un tabel copil care face referință directă la Primary Key-ul dintr-un tabel părinte. | `Students.class_id` face trimitere la `Classes.class_id`. |
| **Redundancy (Redundanță)** | Calitate Date | Duplicarea inutilă a aceleiași informații în mai multe rânduri ale bazei de date. | Scrierea numelui dirigintelui pentru fiecare elev din clasă. |
| **Update Anomaly** | Integritate | Eroare de date ce apare când o informație repetată este modificată doar parțial, lăsând baza de date contradictorie. | Dirigintele este actualizat pentru 3 elevi, dar uitat pentru alți 30. |
| **Transitive Dependency** | Teorie Date | Situația în care o coloană depinde funcțional de o altă coloană non-cheie, și nu direct de cheia primară. | Numele dirigintelui depinde de clasă, nu de ID-ul elevului. |
| **OneCompiler** | Instrument | Mediu cloud de dezvoltare și compilare online folosit pentru rularea sincronă a codului T-SQL fără instalare locală. | Platforma de laborator utilizată la clasă. |

---

## 💻 3. Ghid Sintactic & Exemple Practice T-SQL

Toate exemplele de mai jos sunt optimizate și verificate pentru rulare directă în [OneCompiler SQL Server](https://onecompiler.com/sqlserver).

### A. Tipurile Fundamentale de Date T-SQL

| Tip de Date | Format & Dimensiune | Exemple Valide | Când îl folosim? |
| :--- | :--- | :--- | :--- |
| **`INT`** | Număr întreg (4 bytes): de la -2.147.483.648 la +2.147.483.647 | `1`, `105`, `-14` | ID-uri, cantități de produse, vârste |
| **`DECIMAL(p, s)`** | Număr zecimal cu precizie exactă (`p` = cifre totale, `s` = zecimale) | `9.75`, `1250.50` | Note, prețuri financiare, salarii, greutăți |
| **`BIT`** | Valoare binară booleană (stochează `1` sau `0`) | `1` (True), `0` (False) | Flag-uri de stare: `is_active`, `has_scholarship` |
| **`VARCHAR(n)`** | Text de lungime variabilă (maxim `n` caractere) | `'Ion'`, `'Strada Libertatii'` | Nume, prenume, adrese de email, descrieri |
| **`DATE`** | Doar data calendaristică (`YYYY-MM-DD`) | `'2010-04-12'` | Data nașterii, data înscrierii, data emiterii |
| **`DATETIME`** | Dată calendaristică + Timp precis | `'2026-10-11 14:30:00'` | Log-uri de autentificare, plasarea comenzilor |
| **`TIME`** | Doar ora și minutul (`hh:mm:ss`) | `'08:30:00'` | Ora începerii unei sesiuni de curs |

> ⚠️ **Regulă de Sintaxă**: În T-SQL, toate șirurile text (`VARCHAR`) și datele calendaristice (`DATE`) trebuie încadrate strict între **ghilimele simple** (`'valoare'`). Numerele (`INT`, `DECIMAL`) se scriu direct fără ghilimele.

---

### B. Crearea unui Tabel Simplu & Inserarea Datelor

```sql
-- 1. Crearea tabelului Students cu 3 coloane esentiale
CREATE TABLE Students (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
);

-- 2. Inserarea inregistrarilor (INSERT INTO ... VALUES)
INSERT INTO Students (first_name, last_name, birth_date)
VALUES 
    ('Ion', 'Popescu', '2010-04-12'),
    ('Elena', 'Ceban', '2011-09-23'),
    ('Mihai', 'Rusu', '2010-11-05');

-- 3. Interogarea intregului tabel (SELECT * FROM)
SELECT * FROM Students;
```

---

### C. Rezolvarea Dilemei Duplicatelor prin Primary Key (`student_id`)

Dacă doi elevi au exact același nume, prenume și dată de naștere, tabelul nu îi poate diferenția. Introducem un identificator unic:

```sql
CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
);

INSERT INTO Students (student_id, first_name, last_name, birth_date)
VALUES 
    (101, 'Ion', 'Popescu', '2010-04-12'),
    (102, 'Elena', 'Ceban', '2011-09-23'),
    (103, 'Mihai', 'Rusu', '2010-11-05'),
    (104, 'Ion', 'Popescu', '2010-04-12'); -- ID-ul 104 rezolva complet ambiguitatea!

SELECT * FROM Students;
```

---

### D. Arhitectura Corectă în 2 Tabele: Relaționarea Părinte-Copil (PK și FK)

În loc să repetăm detaliile clasei (profil, diriginte) în fiecare rând din `Students`, creăm un tabel separat `Classes` și păstrăm doar `class_id` în `Students`:

```sql
-- 1. Tabelul Parinte: Classes (detine Primary Key-ul class_id)
CREATE TABLE Classes (
    class_id INT,
    class_name VARCHAR(10),
    profile_name VARCHAR(30),
    class_master VARCHAR(50)
);

-- Inseram clasele o singura data
INSERT INTO Classes (class_id, class_name, profile_name, class_master)
VALUES 
    (1, '10-A', 'Real', 'Prof. Vasile Lungu'),
    (2, '10-B', 'Uman', 'Prof. Maria Dabija');

-- 2. Tabelul Copil: Students (detine Foreign Key-ul class_id)
CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    class_id INT -- Face referinta la Classes.class_id
);

-- Inseram elevii indicand doar ID-ul clasei lor
INSERT INTO Students (student_id, first_name, last_name, birth_date, class_id)
VALUES 
    (101, 'Ion', 'Popescu', '2010-04-12', 1),
    (102, 'Elena', 'Ceban', '2011-09-23', 1),
    (103, 'Mihai', 'Rusu', '2010-11-05', 2),
    (104, 'Ana', 'Sirbu', '2010-08-19', 1);

-- 3. Vizualizarea datelor din ambele tabele
SELECT * FROM Classes;
SELECT * FROM Students;
```

---

## 🧠 4. Explicații Aprofundate: Cum Funcționează „Sub Capotă”

### De ce este Dependența Tranzitivă un Pericol Major?
- În tabelul combinat inițial aveam: `student_id -> class_name -> class_master`.
- Numele dirigintelui depindea de clasă, nu de elev.
- Când profesorul Vasile Lungu este înlocuit cu alt diriginte:
  - Dacă informația este într-un singur tabel, trebuie să executăm un `UPDATE` pe zeci sau sute de rânduri de elevi. O eroare de filtrare lasă baza de date coruptă (o parte din elevi vor apărea cu vechiul diriginte, iar cealaltă cu noul diriginte).
  - Când informația este extrasă în tabelul `Classes`, modificăm **un singur rând** în `Classes`. Automat, toți elevii asociați cu `class_id = 1` reflectă schimbarea instantaneu și fără risc de inconsistență. Aceasta este esența **Normalizării Datelor (Forma Normală 3)**.

### De ce alegem `DECIMAL(6,2)` și nu numere flotante (`FLOAT`) pentru valori financiare?
- Tipul `FLOAT` este o reprezentare aproximativă binară (conform standardului IEEE 754), ceea ce poate introduce erori de rotunjire (ex. `0.1 + 0.2 = 0.30000000000000004`).
- Tipul `DECIMAL(p, s)` (sau `NUMERIC`) garantează stocarea exactă a fiecărei zecimale, fiind cerința obligatorie în aplicații bancare, de contabilitate și la examenele Certiport.

---

## 🎯 5. Întrebări Frecvente & Capcane la Examenul Certiport

### ❓ Întrebarea 1: Poate un tabel să aibă două coloane definite ca Primary Key distincte?
> **Răspuns**: **NU.** Un tabel poate avea **o singură cheie primară**. Totuși, acea unică cheie primară poate fi compusă din două sau mai multe coloane combinate (se numește **Composite Primary Key**).

### ❓ Întrebarea 2: Poate o Foreign Key să conțină valori duplicate?
> **Răspuns**: **DA!** Într-o relație de tip 1-la-Mulți (One-to-Many), mai mulți elevi pot aparține aceleiași clase (mai mulți elevi au `class_id = 1`). Cheia primară din tabelul părinte este unică, dar cheia străină din tabelul copil acceptă duplicate.

### ❓ Întrebarea 3: Ce se întâmplă dacă scriu o dată calendaristică sub forma `12/04/2010`?
> **Răspuns**: Poate genera eroare de conversie în funcție de setările lingvistice ale serverului SQL. Standardul internațional ISO recomandat și testat la Certiport este strict **`'YYYY-MM-DD'`** (anul cu 4 cifre, luna cu 2 cifre, ziua cu 2 cifre: `'2010-04-12'`).

---

## 🛠️ 6. Mini-Exerciții Autonome de Consolidare (Self-Study)

Deschide o fereastră curată în [OneCompiler](https://onecompiler.com/sqlserver) și rezolvă următoarele sarcini fără a privi soluțiile:

### Exercițiul 1: Modelarea unui Parc Auto
1. Creează un tabel numit `Manufacturers` cu coloanele: `manufacturer_id (INT)`, `name (VARCHAR(50))`, `country (VARCHAR(50))`.
2. Creează un tabel numit `Cars` cu coloanele: `car_id (INT)`, `model (VARCHAR(50))`, `price (DECIMAL(10,2))`, `is_electric (BIT)`, `manufacturer_id (INT)`.
3. Inserează 2 producători (ex. Toyota din Japonia, Tesla din SUA).
4. Inserează 3 mașini asociate producătorilor respectivi prin `manufacturer_id`.
5. Rulează `SELECT * FROM Cars;`.

<details>
<summary>👉 Vezi Soluția de Verificare</summary>

```sql
CREATE TABLE Manufacturers (
    manufacturer_id INT,
    name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Manufacturers (manufacturer_id, name, country)
VALUES 
    (1, 'Toyota', 'Japan'),
    (2, 'Tesla', 'USA');

CREATE TABLE Cars (
    car_id INT,
    model VARCHAR(50),
    price DECIMAL(10,2),
    is_electric BIT,
    manufacturer_id INT
);

INSERT INTO Cars (car_id, model, price, is_electric, manufacturer_id)
VALUES 
    (101, 'Corolla', 22000.00, 0, 1),
    (102, 'Model 3', 39000.00, 1, 2),
    (103, 'RAV4', 32000.00, 0, 1);

SELECT * FROM Manufacturers;
SELECT * FROM Cars;
```
</details>
