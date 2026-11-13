# Lecția 09 [DB1.9]: Relații Multi-Tabel în T-SQL: Anatomia Clauzei JOIN (INNER, LEFT, RIGHT, FULL, CROSS, SELF JOIN) & Operatori de Mulțimi (UNION / UNION ALL)

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.9
- **Modul**: Interogarea Schemelor Relaționale, Relații Multi-Tabel & Algebra Mulțimilor în T-SQL
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS: Databases)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune avansată de programare T-SQL și recunoaștere a tiparelor de interogare pe multiple tabele relaționate. După recapitularea regulilor generale din Lecția 08, cursanții aprofundează mecanica interogărilor compuse. Se deconstruiește sintaxa clauzei `JOIN ... ON ...`, evidențiind de ce cuvântul cheie `ON` este obligatoriu pentru corelarea Cheii Primare (`PRIMARY KEY`) cu Cheia Străină (`FOREIGN KEY`), precum și necesitatea absolută a aliasurilor de tabele (`FROM Customers c INNER JOIN Orders o ON c.customer_id = o.customer_id`) pentru prevenirea erorilor de ambiguitate (*ambiguous column name*). Elevii analizează cele 4 tipuri majore de conexiuni (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`), impactul valorilor `NULL` generate în coloanele necorespondente și tiparul clasic de examen Certiport: identificarea înregistrărilor fără pereche (*unmatched rows*) prin filtrarea `WHERE right_table.id IS NULL`. În a doua parte, se explorează produsul cartezian (`CROSS JOIN`), relațiile ierarhice din interiorul aceluiași tabel (`SELF JOIN`) și operatorii de combinare a rezultatelor (`UNION` vs `UNION ALL`), insistând pe regulile de compatibilitate a coloanelor și diferențele critice de performanță.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - **Domain 3: Data Retrieval (DQL)** — Combinarea datelor din multiple tabele folosind `JOIN` (Inner, Left, Right, Full, Cross).
  - **Domain 3.2**: Rezolvarea interogărilor cu `UNION` și `UNION ALL`.
  - **Domain 1: Database Design**: Înțelegerea integrității referențiale și a relațiilor `1:N` în interogări analitice.

### Întrebări Esențiale:
1. Care este diferența matematică și practică dintre `INNER JOIN` și `LEFT OUTER JOIN` atunci când interogăm clienții și comenzile lor?
2. De ce este cuvântul cheie `ON` obligatoriu la clauzele `INNER JOIN` și `LEFT JOIN`, dar complet absent la `CROSS JOIN`?
3. Cum folosim o interogare de tip `LEFT JOIN` combinată cu `WHERE right_table.PK IS NULL` pentru a identifica clienții inactivi (fără comenzi înregistrate)?
4. Ce este un `SELF JOIN` și cum permite utilizarea a două aliasuri diferite (`e` și `m`) pe același tabel `Employees` reprezentarea ierarhiei angajat-manager?
5. Care sunt cele 3 cerințe obligatorii de compatibilitate pentru ca operatorul `UNION` să funcționeze corect și de ce este `UNION ALL` mult mai rapid decât `UNION`?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație Oficială Microsoft T-SQL (FROM & JOIN)**: https://learn.microsoft.com/en-us/sql/t-sql/queries/from-transact-sql
- **Documentație Oficială Microsoft (Set Operators - UNION)**: https://learn.microsoft.com/en-us/sql/t-sql/language-elements/set-operators-union-transact-sql
- **Kahoot**: https://kahoot.com/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet și browsere deschise pe platforma [OneCompiler SQL Server](https://onecompiler.com/sqlserver).
- [ ] Scriptul DDL/DML demonstrativ de populare a bazei de date e-commerce (`Customers`, `Orders`, `Products`, `Employees`) pregătit pentru rulare instantanee.
- [ ] Quiz-ul Kahoot Certiport pregătit în tab separat (conform secțiunii 5).

### Materiale Didactice & Exemple Pregătite
- [ ] Diagramele relaționale tabelare desenate pe tablă pentru a vizualiza rândurile păstrate și valorile `NULL` la `LEFT JOIN` vs `INNER JOIN`.
- [ ] Tabel comparativ al operatorilor de mulțimi: `UNION` (eliminare duplicate + sortare implicită) vs `UNION ALL` (concatenare brută rapidă).

---

## 3. Planul de Desfășurare (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Deconstrucția Schemei Relaționale & Problema Izolării Datelor** | De ce separăm datele în tabele multiple (`Customers`, `Orders`). Recapitularea relației `PRIMARY KEY` -> `FOREIGN KEY`. Lansarea scenariului: un raport de afaceri cere numele clientului și valoarea comenzii pe același rând. |
| **00:15 – 00:40** | **2. Tiparul de Bază JOIN & Comparația INNER vs LEFT JOIN** | Anatomia sintaxei `FROM TableA a JOIN TableB b ON a.PK = b.FK`. Rolul critic al aliasurilor. Demonstrație live: `INNER JOIN` (doar clienții cu comenzi) vs `LEFT JOIN` (toți clienții, chiar și cei fără comenzi). |
| **00:40 – 01:00** | **3. Capcana Certiport: Găsirea Rândurilor Orfane (IS NULL Pattern)** | Analiza cazului `RIGHT JOIN` și `FULL OUTER JOIN`. Tehnica oficială de examen: găsirea clienților care NU au cumpărat niciodată folosind `LEFT JOIN ... WHERE o.order_id IS NULL`. |
| **01:00 – 01:25** | **4. Structuri Speciale: CROSS JOIN & SELF JOIN** | Produsul cartezian `CROSS JOIN` (toate combinațiile posibile mărime x culoare fără clauză `ON`). Modelarea organigramei companiei printr-un singur tabel `Employees` folosind `SELF JOIN` (`e.manager_id = m.employee_id`). |
| **01:25 – 01:45** | **5. Operatori de Mulțimi: UNION vs UNION ALL** | Combinarea pe verticală a seturilor de date. Cele 3 reguli de compatibilitate structurală. De ce `UNION ALL` este optim pentru loguri și arhive, în timp ce `UNION` impune eliminarea duplicatelor. |
| **01:45 – 01:55** | **6. Laborator Sincron OneCompiler & Depanare Erori** | Elevii rulează interogările avansate pe platformă, identifică erori deliberate de ambiguitate (`column ambiguously defined`) și validează rapoartele cerute. |
| **01:55 – 02:00** | **7. Mini-Quiz Certiport ITS & Concluzii** | Evaluare de 10 întrebări de tip grilă axate pe capcanele reale ale examenului internațional Certiport ITS Databases. |

---

## 4. Ghid Didactic Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Deconstrucția Schemei Relaționale & Problema Izolării Datelor (15 min)
Profesorul deschide sesiunea explicând rațiunea pentru care bazele de date relaționale împart informația în entități separate:
*"În primele lecții am învățat că dacă am ține numele clientului, adresa lui, produsele cumpărate și prețul într-un singur tabel uriaș, am repeta numele clientului de 100 de ori dacă acesta plasează 100 de comenzi. Dacă își schimbă numărul de telefon, ar trebui să facem 100 de update-uri, riscând date corupte. De aceea normalizăm: clienții stau în `Customers`, iar comenzile în `Orders`, legate prin `customer_id`. Dar când directorul de vânzări cere un raport, el vrea să vadă numele clientului alături de data comenzii. Aici intervine puterea clauzei `JOIN`."*

Se proiectează scriptul de inițializare a mediului de lucru în OneCompiler:

```sql
-- Inițializare Schema de Lucru (OneCompiler T-SQL)
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO Customers (customer_id, customer_name, city) VALUES
(1, 'Alexei Moraru', 'Chisinau'),
(2, 'Elena Cebotari', 'Balti'),
(3, 'Dumitru Rosca', 'Ungheni'),
(4, 'Valeria Lungu', 'Chisinau');

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2026-03-01', 450.00),
(102, 1, '2026-03-05', 120.00),
(103, 2, '2026-03-07', 890.50),
(104, NULL, '2026-03-10', 310.00); -- Comandă fără client asociat
```

---

### Pasul 2: Tiparul de Bază JOIN & Comparația INNER vs LEFT JOIN (25 min)

#### Tiparul de Scriere (Syntax Pattern):
Profesorul scrie pe tablă formula invariabilă:
```sql
SELECT a.coloana1, b.coloana2
FROM TabelA a
[TIP_JOIN] TabelB b ON a.Cheie = b.Cheie;
```

**Reguli de Aur:**
1. **Prepoziția `ON` este OBLIGATORIE**: Orice `JOIN` (cu excepția `CROSS JOIN`) trebuie urmat de cuvântul cheie `ON`, care specifică puntea logică de egalitate dintre tabele.
2. **Aliasurile de Tabel sunt OBLIGATORII în Practică**: Folosim `Customers c` și `Orders o`. Dacă scriem `SELECT customer_id FROM Customers c INNER JOIN Orders o ...`, SQL Server va arunca o eroare critică de compilare: `Ambiguous column name 'customer_id'`, deoarece această coloană există în ambele tabele. Trebuie scris explicit `c.customer_id` sau `o.customer_id`.

#### 1. `INNER JOIN` (Intersecția Strictă):
Returnează exclusiv rândurile care au corespondență garantată în ambele tabele:
```sql
SELECT c.customer_name, o.order_id, o.total_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;
```
*Rezultat*: Apar doar Alexei Moraru (comenzile 101, 102) și Elena Cebotari (comanda 103). 
Dumitru Roșca și Valeria Lungu NU apar deloc (pentru că nu au comenzi). Comanda 104 NU apare (pentru că are `customer_id NULL`).

#### 2. `LEFT OUTER JOIN` (sau simplu `LEFT JOIN`):
Păstrează **TOATE** înregistrările din tabelul din stânga (`FROM Customers c`), indiferent dacă au sau nu comenzi în tabelul din dreapta (`Orders o`):
```sql
SELECT c.customer_name, o.order_id, o.total_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;
```
*Rezultat*: Dumitru Roșca și Valeria Lungu apar în raport, iar în dreptul coloanelor `order_id` și `total_amount` motorul SQL afișează automat **`NULL`**.

---

### Pasul 3: Capcana Certiport: Găsirea Rândurilor Orfane (IS NULL Pattern) (20 min)

La examenul Certiport ITS Databases, una dintre cele mai frecvente întrebări este:
*"Scrieți interogarea care returnează exclusiv clienții care nu au plasat nicio comandă."*

Profesorul arată cum elevii neatenți greșesc încercând să scrie `WHERE o.total_amount = 0` (greșit, pentru că totalul nu este zero, ci inexistent / `NULL`) sau `WHERE c.customer_id NOT IN (...)` (care poate eșua dacă există valori `NULL` în subinterogare).

**Tiparul Corect Certiport:**
```sql
SELECT c.customer_id, c.customer_name, c.city
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL; -- Filtrare pe Cheia Primară a tabelului din dreapta!
```
*Explicație*: Clauza `LEFT JOIN` aduce toți clienții; clauza `WHERE o.order_id IS NULL` elimină toți clienții care au generat comenzi valide, păstrându-i strict pe cei inactivi (Dumitru Roșca și Valeria Lungu).

#### `RIGHT JOIN` și `FULL OUTER JOIN`:
- `RIGHT JOIN`: Funcționează identic cu `LEFT JOIN`, dar păstrează toate rândurile din tabelul din dreapta (`Orders o`). Comanda 104 (cu `customer_id NULL`) va fi afișată, având `customer_name NULL`.
- `FULL OUTER JOIN`: Păstrează toate rândurile din ambele tabele: clienții fără comenzi, comenzile fără client și perechile corelate.

---

### Pasul 4: Structuri Speciale: CROSS JOIN & SELF JOIN (25 min)

#### 1. `CROSS JOIN` (Produsul Cartezian):
Combină fiecare rând din primul tabel cu fiecare rând din al doilea tabel.
```sql
-- Exemplu: Generarea tuturor combinațiilor posibile de Tricouri x Mărimi
CREATE TABLE Products (product_name VARCHAR(20));
CREATE TABLE Sizes (size_code VARCHAR(5));

INSERT INTO Products VALUES ('T-Shirt'), ('Hoodie');
INSERT INTO Sizes VALUES ('S'), ('M'), ('L');

SELECT p.product_name, s.size_code
FROM Products p
CROSS JOIN Sizes s;
```
*Regulă Certiport*: `CROSS JOIN` nu are niciodată clauză `ON`. Dacă primul tabel are 2 rânduri, iar al doilea 3 rânduri, interogarea va produce exact 2 x 3 = 6 rânduri.

#### 2. `SELF JOIN` (Relații Ierarhice în Același Tabel):
Când un tabel conține o Cheie Străină care referențiază propria sa Cheie Primară (de exemplu, un angajat și managerul său direct):
```sql
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    manager_id INT NULL
);

INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1, 'Director General Ion', NULL),
(2, 'Manager Andrei', 1),
(3, 'Programator Mihai', 2),
(4, 'Tester Cristina', 2);

-- SELF JOIN: Tabelul Employees este apelat de două ori cu aliasuri diferite
SELECT 
    e.employee_name AS Employee,
    ISNULL(m.employee_name, 'No Manager (Top Level)') AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id;
```
*Explicație*: Aliasul `e` reprezintă angajatul de pe rândul curent, iar aliasul `m` reprezintă managerul său asociat prin condiția `e.manager_id = m.employee_id`. Folosim `LEFT JOIN` pentru ca Directorul General (care are `manager_id NULL`) să nu dispară din listă.

---

### Pasul 5: Operatori de Mulțimi: UNION vs UNION ALL (20 min)

Spre deosebire de `JOIN` (care lipește tabelele pe **orizontală**, adăugând coloane noi), operatorii de mulțimi lipesc rezultatele pe **verticală**, adăugând rânduri noi unele sub altele.

#### Cele 3 Reguli Obligatorii ale lui `UNION`:
1. Fiecare interogare `SELECT` componentă trebuie să aibă **același număr de coloane**.
2. Coloanele de pe poziții corespondente trebuie să aibă **tipuri de date compatibile** (de exemplu, coloana 1 `INT` cu `INT`, coloana 2 `VARCHAR` cu `VARCHAR`).
3. Clauza `ORDER BY` se plasează **exclusiv o singură dată, la finalul ultimei interogări**, sortând întregul set combinat.

#### Comparație: `UNION` vs `UNION ALL`:

| Criteriu | `UNION` | `UNION ALL` |
| :--- | :--- | :--- |
| **Tratarea Duplicatelor** | **Elimină duplicatele** (păstrează doar rânduri unice) | **Păstrează toate duplicatele** |
| **Performanță & Viteză** | Mai lent (execută o sortare internă `DISTINCT`) | **Ultra-rapid** (concatenare directă a datelor) |
| **Caz Tipic de Utilizare** | Raport de entități unice din două surse | Consolidarea logurilor zilnice sau a arhivelor istorice |

```sql
-- Exemplu Practic UNION vs UNION ALL
SELECT city FROM Customers -- Returnează: Chisinau, Balti, Ungheni, Chisinau
UNION
SELECT 'Balti' AS city; -- Elimină duplicatul 'Chisinau' și duplicatul 'Balti' (4 rânduri unice)

SELECT city FROM Customers
UNION ALL
SELECT 'Balti' AS city; -- Păstrează toate duplicatele (5 rânduri)
```

---

### Pasul 6: Laborator Sincron OneCompiler & Depanare Erori (15 min)
Elevii deschid [OneCompiler SQL Server](https://onecompiler.com/sqlserver) și rezolvă individual 3 provocări practice:
1. *Task 1*: Scrieți o interogare care afișează fiecare comandă alături de orașul clientului (`c.city`). Comenzile fără client asociat trebuie să apară în raport cu orașul `Unknown` (folosind `RIGHT JOIN` sau `LEFT JOIN` inversat).
2. *Task 2*: Identificați toți clienții din `Chisinau` care nu au plasat nicio comandă.
3. *Task 3*: Creați o listă unificată a tuturor numelor de persoane din companie (clienți și angajați) sortată alfabetic, folosind `UNION`.

---

## 5. Mini-Quiz Certiport ITS (8 Întrebări Oficiale de Examen)

### Întrebarea 1: Care este rezultatul returnat de o clauză INNER JOIN între două tabele?
- A) Toate rândurile stânga
- B) Doar rândurile potrivite *(Corect)*
- C) Toate rândurile dreapta
- D) Produsul cartezian total
> **Explicație**: `INNER JOIN` returnează exclusiv rândurile care satisfac condiția de egalitate din clauza `ON` în ambele tabele.

---

### Întrebarea 2: Ce valoare este afișată pentru coloanele tabelului din dreapta la un LEFT JOIN dacă nu există potrivire?
- A) Valoarea zero
- B) Textul Empty
- C) Valoarea NULL *(Corect)*
- D) Eroare de compilare
> **Explicație**: `LEFT JOIN` păstrează toate rândurile din stânga, completând cu `NULL` coloanele din dreapta unde nu există corespondență.

---

### Întrebarea 3: Cum identificăm clienții care NU au nicio comandă folosind o interogare de tip JOIN?
- A) WHERE total_amount = 0
- B) WHERE order_id IS NULL *(Corect)*
- C) WHERE order_id = 0
- D) WHERE customer_id = NULL
> **Explicație**: Clauza `LEFT JOIN Orders o ... WHERE o.order_id IS NULL` filtrează exact rândurile care nu au găsit nicio comandă asociată.

---

### Întrebarea 4: Ce clauză este obligatorie la INNER JOIN și LEFT JOIN, dar complet interzisă la CROSS JOIN?
- A) Clauza FROM
- B) Clauza WHERE
- C) Clauza ON *(Corect)*
- D) Clauza GROUP BY
> **Explicație**: Clauza `ON` specifică condiția de corelare a cheilor; `CROSS JOIN` produce direct produsul cartezian fără nicio condiție `ON`.

---

### Întrebarea 5: Dacă tabelul A are 4 rânduri, iar tabelul B are 5 rânduri, câte rânduri returnează SELECT * FROM A CROSS JOIN B?
- A) 9 rânduri
- B) 1 rând
- C) 20 rânduri *(Corect)*
- D) 0 rânduri
> **Explicație**: Produsul cartezian combină fiecare rând din A cu fiecare rând din B, rezultând 4 x 5 = 20 rânduri.

---

### Întrebarea 6: Ce tehnică de interogare folosește două aliasuri diferite pe același tabel pentru a arăta relația angajat-manager?
- A) FULL OUTER JOIN
- B) CROSS JOIN
- C) SELF JOIN *(Corect)*
- D) MERGE JOIN
> **Explicație**: Un `SELF JOIN` constă în alăturarea unui tabel cu el însuși, folosind aliasuri distincte (ex: `Employees e` și `Employees m`).

---

### Întrebarea 7: Care este diferența principală dintre operatorii UNION și UNION ALL?
- A) UNION cere WHERE
- B) UNION elimină duplicatele *(Corect)*
- C) UNION este mai rapid
- D) UNION ignoră tipurile
> **Explicație**: `UNION` execută o operație internă de eliminare a duplicatelor (similar cu `DISTINCT`), în timp ce `UNION ALL` păstrează toate rândurile.

---

### Întrebarea 8: Unde se plasează clauza ORDER BY într-o interogare compusă cu operatorul UNION?
- A) După fiecare SELECT
- B) Doar la început
- C) Exclusiv la final *(Corect)*
- D) Nu este permisă
> **Explicație**: În T-SQL, clauza `ORDER BY` poate apărea o singură dată într-o interogare cu `UNION`, fiind plasată strict după ultima instrucțiune `SELECT`.
