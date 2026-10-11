# Compendiu Elev: Lecția 03 [DB1.3] – Interogarea Datelor cu SELECT, Operatori de Comparare, Predicate Avansate & Logica Booleană (AND, OR, NOT)

---

## 📌 1. Rezumatul Lecției (Core Notes)

Această lecție explorează în profunzime nucleul limbajului de interogare **DQL (Data Query Language)** în **T-SQL**, conform cerințelor de examinare **Certiport Information Technology Specialist (ITS): Databases**. Accentul cade pe proiecția corectă a coloanelor, filtrarea avansată a rândurilor prin clauza `WHERE` și stăpânirea absolută a **logicii booleene** și a **precedenței operatorilor**.

### Idei Cheie de Reținut:
1. **Anatomia `SELECT` & Proiecția Datelor**:
   - `SELECT` determină **coloanele** dorite (proiecția), iar `FROM` indică tabelul sursă.
   - Caracterul asterisc `*` (`SELECT *`) returnează toate coloanele definite în schemă.
   - În aplicații profesionale și la examenul Certiport, este recomandat să listăm explicit coloanele necesare (`SELECT firstname, lastname`) pentru a minimiza traficul de rețea și consumul de memorie.
2. **Operatorii de Comparare & Standardul ANSI**:
   - T-SQL suportă: `=`, `<>`, `<`, `>`, `<=`, `>=`.
   - **Important pentru Certiport**: Deși `!=` este recunoscut de SQL Server, operatorul standard oficial ANSI SQL pentru „diferit de / inegalitate” este **`<>`**.
3. **Predicatul `BETWEEN` (Interval Închis)**:
   - Sintaxa: `WHERE coloana BETWEEN min AND max`.
   - Regula critică: În SQL, **limitele sunt incluzive** (ambele capete fac parte din rezultat). Expresia este echivalentă strict cu: `coloana >= min AND coloana <= max`.
4. **Logica Tri-Valentă și Tratarea Valorilor `NULL`**:
   - În bazele de date relaționale, `NULL` reprezintă absența informației (stare necunoscută), nu numărul `0` și nu textul gol `''`.
   - Compararea directă `coloana = NULL` produce starea logică **`UNKNOWN`** și nu va returna niciodată rânduri!
   - Pentru testarea valorilor absente se folosesc exclusiv operatorii dedicați: **`IS NULL`** și **`IS NOT NULL`**.
5. **Căutarea după Șabloane: Operatorul `LIKE`**:
   - `%` (Percent): înlocuiește **zero, unul sau oricâte caractere**.
   - `_` (Underscore): înlocuiește **exact un singur caracter** (o singură poziție).
6. **Ierarhia Strictă de Precedență a Operatorilor Logici**:
   - În absența parantezelor, motorul relațional evaluează expresiile în următoarea ordine strictă:
     1. **`NOT`** (cea mai mare prioritate)
     2. **`AND`** (prioritate medie – se evaluează întotdeauna înaintea lui `OR`)
     3. **`OR`** (cea mai mică prioritate)
   - **Regula de Aur**: Folosiți întotdeauna **paranteze rotunde `()`** pentru a grupa condițiile `OR` atunci când sunt combinate cu `AND`.

---

## 📚 2. Dicționar de Termeni Tehnici (New Words Learned)

| Termen Tehnic | Categorie | Definiție & Semnificație | Exemplu / Context |
| :--- | :--- | :--- | :--- |
| **Projection (Proiecție)** | DQL | Operațiunea de selectare a unui subset specific de coloane dintr-un tabel. | `SELECT firstname, lastname` proiectează doar două coloane. |
| **Predicate (Predicat)** | Filtrare | O expresie logică ce se evaluează la `TRUE`, `FALSE` sau `UNKNOWN` pentru fiecare rând în clauza `WHERE`. | `salary > 5000`, `fur_color LIKE 'G%'`. |
| **NULL** | Valoare | Marcator special ce indică lipsa unei valori sau o valoare necunoscută/necompletată. | `salary NULL` înseamnă că salariul nu a fost încă înregistrat. |
| **Three-Valued Logic** | Teorie | Logica tri-valentă a bazelor de date relaționale, unde o expresie poate avea 3 stări: `TRUE`, `FALSE` sau `UNKNOWN`. | Comparațiile cu `NULL` produc starea `UNKNOWN`. |
| **Wildcard (Metacaracter)** | Căutare | Simbol special utilizat în predicatul `LIKE` pentru a substitui caractere într-un șablon text. | `%` pentru lungime variabilă, `_` pentru un singur caracter. |
| **Conjunction (`AND`)** | Logică | Operator logic ce returnează `TRUE` doar dacă ambele condiții legate sunt adevărate. | `eye_color = 'Green' AND fur_color = 'Gray'`. |
| **Disjunction (`OR`)** | Logică | Operator logic ce returnează `TRUE` dacă cel puțin una dintre condiții este adevărată. | `city = 'Chișinău' OR city = 'Bălți'`. |
| **Negation (`NOT`)** | Logică | Operator logic unar ce inversează valoarea de adevăr a unei condiții. | `WHERE NOT (status = 'Inactive')`. |
| **Operator Precedence** | Arhitectură | Ordinea fixată de standardul SQL prin care operatorii logici sunt evaluați în expresii compuse (`NOT` > `AND` > `OR`). | Fără paranteze, `A OR B AND C` devine `A OR (B AND C)`. |
| **Self-Exclusion Trap** | Capcană Logică | Greșeala de a cere printr-un `AND` două valori scalare diferite pe aceeași coloană scalară, producând mereu set vid. | `fur_color = 'Gray' AND fur_color = 'Black'` returnează 0 rânduri. |

---

## 💻 3. Ghid Sintactic & Exemple Practice T-SQL

Toate exemplele de mai jos sunt testate și gata de rulare în [OneCompiler SQL Server](https://onecompiler.com/sqlserver).

### A. Tabelul `Contacts`: Operatori de Comparare, `BETWEEN`, `NULL` și `LIKE`

```sql
-- 1. Crearea si popularea tabelului Contacts
CREATE TABLE Contacts (
    id INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NULL
);

INSERT INTO Contacts (id, firstname, lastname, salary)
VALUES 
    (1, 'Alexandru', 'Popescu', 8500.00),
    (2, 'Elena', 'Radu', 12000.50),
    (3, 'Mihai', 'Ionescu', 4500.00),
    (4, 'Ana', 'Popa', NULL),
    (5, 'Cristian', 'Dumitrescu', 15000.00);

-- Operatori de comparare standard
SELECT * FROM Contacts WHERE salary >= 10000;      -- Salarii mari sau egale cu 10000
SELECT * FROM Contacts WHERE firstname <> 'Ana';     -- Toti in afara de Ana (<> standard ANSI)

-- Predicatul BETWEEN (limite incluzive)
SELECT * FROM Contacts WHERE salary BETWEEN 5000 AND 13000;
SELECT * FROM Contacts WHERE salary NOT BETWEEN 5000 AND 13000;

-- Verificarea campurilor goale (IS NULL / IS NOT NULL)
SELECT * FROM Contacts WHERE salary IS NULL;         -- Returneaza Ana Popa
SELECT * FROM Contacts WHERE salary IS NOT NULL;     -- Returneaza cei cu salariu definit

-- Potrivirea pe baza de tipare (LIKE)
SELECT * FROM Contacts WHERE lastname LIKE 'P%';     -- Incepe cu 'P' (Popescu, Popa)
SELECT * FROM Contacts WHERE firstname LIKE '%a%';   -- Contine litera 'a'
SELECT * FROM Contacts WHERE lastname LIKE 'P__a';   -- Exact 4 litere: P + doua litere + a (Popa)
SELECT * FROM Contacts WHERE lastname LIKE '_o%';    -- A doua litera este 'o' (Popescu, Popa)

-- Apartenenta la o lista (IN / NOT IN)
SELECT * FROM Contacts WHERE id IN (1, 3, 5);
SELECT * FROM Contacts WHERE firstname NOT IN ('Alexandru', 'Elena');
```

---

### B. Tabelul `Cats`: Stăpânirea Logicii Booleene (`AND`, `OR`, `NOT`)

```sql
-- 1. Crearea si popularea tabelului Cats cu atribute discrete
CREATE TABLE Cats (
    cat_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    eye_color VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL
);

INSERT INTO Cats (cat_id, name, eye_color, fur_color)
VALUES 
    (1, 'Luna', 'Green', 'Gray'),
    (2, 'Milo', 'Blue', 'White'),
    (3, 'Oliver', 'Green', 'Black'),
    (4, 'Leo', 'Amber', 'Orange'),
    (5, 'Bella', 'Green', 'White'),
    (6, 'Simba', 'Amber', 'Gray'),
    (7, 'Loki', 'Blue', 'Black'),
    (8, 'Cleo', 'Green', 'Orange');

-- Caz 1: Conjunctie simpla (AND)
SELECT * FROM Cats 
WHERE eye_color = 'Green' AND fur_color = 'Gray';
-- Returneaza: cat_id 1 (Luna)

-- Caz 2: CAPCANA AUTO-EXCLUDERII (AND intre doua valori ale aceleiasi coloane)
SELECT * FROM Cats 
WHERE fur_color = 'Gray' AND fur_color = 'Black';
-- Returneaza: 0 RANDURI! O pisica nu poate avea ambele culori ca valoare scalar unica.

-- Caz 3: Corectarea cu OR
SELECT * FROM Cats 
WHERE fur_color = 'Gray' OR fur_color = 'Black';
-- Returneaza: Luna (1), Oliver (3), Simba (6), Loki (7)
```

---

### C. Puterea Parantezelor: Precedența `AND` > `OR`

Comparați cele două interogări de mai jos – diferența este crucială:

```sql
-- VARIANTA A: Cu Paranteze explicite
SELECT * FROM Cats
WHERE eye_color = 'Green' AND (fur_color = 'Gray' OR fur_color = 'Black');
-- Pas 1: Evalueaza paranteza (fur_color = 'Gray' OR 'Black') -> pisicile 1, 3, 6, 7
-- Pas 2: Filtreaza dintre ele doar pe cele cu eye_color = 'Green'
-- REZULTAT: 2 randuri -> Luna (1), Oliver (3)

-- VARIANTA B: Fara Paranteze (Precedenta implicita AND > OR)
SELECT * FROM Cats
WHERE eye_color = 'Green' AND fur_color = 'Gray' OR fur_color = 'Black';
-- SQL evalueaza ca: (eye_color = 'Green' AND fur_color = 'Gray') OR (fur_color = 'Black')
-- REZULTAT: 3 randuri -> Luna (1), Oliver (3) SI Loki (7)!
-- (Loki are ochii albastri, dar a fost inclus pentru ca are blana neagra si indeplineste clauza OR de la final!)
```

---

### D. Combinații Avansate cu `NOT` și `IN`

```sql
SELECT * FROM Cats
WHERE eye_color IN ('Green', 'Amber') 
  AND NOT (fur_color = 'Orange' OR fur_color = 'White');
-- 1. Ochii sunt Verzi sau Galbeni (1, 3, 4, 5, 6, 8)
-- 2. NOT exclude orice pisica cu blana Portocalie sau Alba
-- REZULTAT: Luna (1), Oliver (3), Simba (6)
```

---

## 🧠 4. Explicații Aprofundate: Cum Funcționează „Sub Capotă”

### De ce `WHERE coloana = NULL` nu returnează nimic?
- În matematică și logica binară clasică, o propoziție este fie `TRUE`, fie `FALSE`.
- Bazele de date relaționale utilizează **logica tri-valentă (Three-Valued Logic)** cu stările: `TRUE`, `FALSE`, `UNKNOWN`.
- Când comparați orice valoare cu `NULL` (`x = NULL` sau `x <> NULL`), rezultatul operației nu este `TRUE` și nici `FALSE`, ci **`UNKNOWN`** (nu putem ști dacă o valoare necunoscută este egală cu o altă valoare necunoscută).
- Clauza `WHERE` include în setul final **exclusiv rândurile a căror condiție se evaluează strict la `TRUE`**. Deoarece `UNKNOWN` nu este `TRUE`, rândul este filtrat și ignorat.
- Operatorul `IS NULL` testează direct starea de alocare a celulei în memorie, returnând `TRUE` dacă celula nu conține date.

### De ce are `AND` prioritate mai mare decât `OR`?
- Această ierarhie provine direct din algebra booleană matematică:
  - `AND` este echivalentul **înmulțirii logice** ($\cdot$).
  - `OR` este echivalentul **adunării logice** ($+$).
  - La fel cum în expresia $2 + 3 \cdot 4$ facem mai întâi înmulțirea $3 \cdot 4$, în SQL expresia `A OR B AND C` va evalua mai întâi `B AND C`, apoi va aplica disjuncția cu `A`.

---

## 🎯 5. Întrebări Frecvente & Capcane la Examenul Certiport

### ❓ Întrebarea 1: Dacă o coloană are valoarea `100`, este selectată de `WHERE valoare BETWEEN 100 AND 200`?
> **Răspuns**: **DA.** Limitele predicatului `BETWEEN` sunt întotdeauna **incluzive**. Atât capătul inferior (`100`), cât și cel superior (`200`) fac parte din rezultat.

### ❓ Întrebarea 2: Care este diferența dintre `LIKE '%A'` și `LIKE '_A'`?
> **Răspuns**: 
> - `LIKE '%A'` acceptă orice text care se termină cu litera 'A', indiferent de câte litere sunt înainte (chiar și doar litera `'A'`).
> - `LIKE '_A'` acceptă strict un text format din **exact două caractere**, dintre care al doilea caracter este 'A' (ex. `'BA'`, `'MA'`, `'1A'`).

### ❓ Întrebarea 3: Ce returnează `WHERE Status = 'Open' AND Status = 'Closed'`?
> **Răspuns**: **Niciun rând (Set vid).** Fiecare rând are o singură valoare pe coloana `Status`. Este imposibil ca aceeași celulă să fie simultan egală cu `'Open'` și `'Closed'`. Condiția corectă ar fi `WHERE Status = 'Open' OR Status = 'Closed'` sau `WHERE Status IN ('Open', 'Closed')`.

---

## 🛠️ 6. Mini-Exerciții Autonome de Consolidare (Self-Study)

Exersează direct în [OneCompiler](https://onecompiler.com/sqlserver) pe tabelele `Contacts` și `Cats`:

### Exercițiul 1: Filtrarea Angajaților
Scrie o interogare pe tabelul `Contacts` care:
1. Returnează toți angajații care au salariul specificat (`IS NOT NULL`).
2. Salariul este cuprins între `4000` și `10000`.
3. Numele de familie (`lastname`) începe cu litera `'P'` sau prenumele (`firstname`) conține litera `'e'`.
4. Exclude angajatul cu `id = 3`.

<details>
<summary>👉 Vezi Soluția de Verificare</summary>

```sql
SELECT * FROM Contacts
WHERE salary IS NOT NULL
  AND salary BETWEEN 4000 AND 10000
  AND (lastname LIKE 'P%' OR firstname LIKE '%e%')
  AND id <> 3;
```
</details>

---

### Exercițiul 2: Filtrarea Pisicilor cu Logică Booleană
Scrie o interogare pe tabelul `Cats` care selectează toate pisicile care:
1. Au ochii albaștri (`Blue`) **SAU** chihlimbarii (`Amber`).
2. **ȘI** nu au blana portocalie (`fur_color <> 'Orange'`).
3. **ȘI** numele lor are mai mult de 3 litere (folosește `name NOT LIKE '___'`).

<details>
<summary>👉 Vezi Soluția de Verificare</summary>

```sql
SELECT * FROM Cats
WHERE (eye_color = 'Blue' OR eye_color = 'Amber')
  AND fur_color <> 'Orange'
  AND name NOT LIKE '___';
```
</details>
