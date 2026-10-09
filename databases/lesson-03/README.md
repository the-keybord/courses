# Lecția 03 [DB1.3]: Interogarea Datelor cu SELECT, Operatori de Comparare, Predicate Avansate & Logica Booleană (AND, OR, NOT)

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.3
- **Modul**: Extragerea & Filtrarea Datelor Relaționale (DQL)
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, sincronă în OneCompiler: construirea tabelului de contacte (`Contacts`), explorarea exhaustivă a instrucțiunii `SELECT` și a operatorilor de comparare (`=`, `<>`, `<`, `>`, `<=`, `>=`), a predicatelor de interval (`BETWEEN`), a verificării valorilor absente (`IS NULL`), a potrivirii de șabloane (`LIKE` cu `%` și `_`), urmată de analiza profundă a logicii booleene (`AND`, `OR`, `NOT`, precedența operatorilor) pe un tabel dedicat de pisici (`Cats`) cu valori discrete.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 3.1: Construirea interogărilor de bază folosind clauza `SELECT` și specificarea proiecției de coloane.
  - Obiectiv 3.2: Filtrarea înregistrărilor prin clauza `WHERE` utilizând operatori de comparare (`=`, `<>`, `!=`, `<`, `>`, `<=`, `>=`).
  - Obiectiv 3.3: Utilizarea predicatelor avansate: `BETWEEN ... AND ...`, `NOT BETWEEN`, `IN (...)`, `NOT IN (...)`.
  - Obiectiv 3.4: Gestionarea valorilor lipsă prin `IS NULL` și `IS NOT NULL`.
  - Obiectiv 3.5: Căutarea pe bază de șabloane textuale folosind `LIKE` cu metacaracterele `%` și `_`.
  - Obiectiv 3.6: Combinarea condițiilor logice complexe prin `AND`, `OR`, `NOT` și controlul precedenței prin paranteze `()`.

### Întrebări Esențiale:
1. Care este ordinea logică de procesare a unei interogări SQL și de ce clauza `WHERE` este evaluată înainte de `SELECT`?
2. De ce compararea directă `coloană = NULL` nu funcționează și suntem obligați să folosim `IS NULL` / `IS NOT NULL`?
3. Cum funcționează limitele predicatului `BETWEEN` în T-SQL (sunt incluzive sau exclusive) și ce impact au asupra tipurilor numerice și temporale?
4. Care este diferența dintre metacaracterul `%` (zero sau mai multe caractere) și `_` (exact un caracter) în predicatul `LIKE`?
5. Care este regula de precedență între operatorii logici `AND` și `OR`, și cum putem evita capcanele logice (de exemplu, contradicția `fur = 'Gray' AND fur = 'Black'`) prin utilizarea parantezelor?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație T-SQL SELECT**: https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql
- **Documentație T-SQL WHERE & Predicate**: https://learn.microsoft.com/en-us/sql/t-sql/queries/where-transact-sql
- **Documentație Operatori Logici T-SQL**: https://learn.microsoft.com/en-us/sql/t-sql/language-elements/logical-operators-transact-sql

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate computerele elevilor.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pe ecranele elevilor.
- [ ] Proiectorul / ecranul partajat configurat pentru demonstrația interogărilor T-SQL.

### Materiale Didactice & Exemple Pregătite
- [ ] Schema DDL și setul de date pentru tabelul `Contacts` (5 rânduri de test cu salarii și valori `NULL`).
- [ ] Schema DDL și domeniul restrâns de valori pentru tabelul `Cats` (`eye_color`: Green, Blue, Amber; `fur_color`: Gray, Black, White, Orange).
- [ ] Setul de exerciții de predicție logică (*Guess the Output*) pentru ilustrarea precedenței `AND` vs `OR`.
- [ ] Setul de 8 întrebări tip Certiport ITS pregătit pentru evaluarea din finalul lecției.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:20** | **1. Anatomia `SELECT` & Crearea Tabelului `Contacts`** | Introducere în DQL (Data Query Language), sintaxa `SELECT`, crearea tabelului `Contacts` (id, firstname, lastname, salary) cu 5 înregistrări de test și explorarea proiecției de coloane. |
| **00:20 – 00:45** | **2. Operatori de Comparare & Predicatul `BETWEEN`** | Aplicarea practică a operatorilor `=`, `<>`, `<`, `>`, `<=`, `>=` și a predicatelor de interval `BETWEEN ... AND ...` și `NOT BETWEEN`. Analiza limitelor incluzive. |
| **00:45 – 01:10** | **3. Predicate Avansate: `IS NULL`, `LIKE` (`%`, `_`) și `IN`** | Tratarea valorilor lipsă (`IS NULL` vs `IS NOT NULL`), potrivirea de șabloane cu `LIKE` (`_` și `%`), verificarea apartenenței cu `IN` și `NOT IN`. |
| **01:10 – 01:40** | **4. Logica Booleană pe Tabelul `Cats`: `AND`, `OR`, `NOT` & Precedență** | Crearea tabelului `Cats` cu set limitat de atribute discrete, popularea cu date propuse de elevi, simularea scenariilor complexe de logică booleană, analiza erorilor clasice și ghicirea rezultatelor interogărilor (*Guess the Output*). |
| **01:40 – 01:50** | **5. Sarcina Practică Individuală (OneCompiler)** | Provocare aplicativă: scrierea de interogări cu criterii combinate pe datele create, identificarea anomaliilor logice și optimizarea clauzelor `WHERE`. |
| **01:50 – 02:00** | **6. Mini-Quiz Certiport ITS & Concluzii** | Evaluare grilă de 8 întrebări Certiport axate pe precedența operatorilor, comportamentul `NULL`, `LIKE` și `BETWEEN`. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Anatomia `SELECT` & Crearea Tabelului `Contacts` (00:00 – 00:20)

Profesorul deschide sesiunea explicând rolul interogării în arhitectura bazelor de date:
*"Până acum am învățat cum să definim tabele (DDL) și cum să introducem sau să modificăm date (DML). În această lecție intrăm în nucleul activității unui inginer de date: extragerea și filtrarea precisă a informațiilor folosind instrucțiunea `SELECT` și clauza `WHERE`."*

#### 1. Sintaxa Generală și Proiecția de Coloane
Instrucțiunea `SELECT` permite specificarea coloanelor dorite (proiecție) și a tabelei sursă:
```sql
SELECT coloana1, coloana2, ...
FROM NumeTabel;
```
- Folosirea caracterului asterisc `*` (`SELECT *`) extrage toate coloanele din tabel în ordinea în care au fost definite în schemă.
- În mediile de producție și la examenul Certiport, specificarea explicită a coloanelor este recomandată pentru optimizarea transferului de date și a memoriei.

#### 2. Crearea și Popularea Tabelului `Contacts`

Profesorul dictează scriptul pe care toți elevii îl rulează în OneCompiler:

```sql
-- 1. Crearea tabelului Contacts
CREATE TABLE Contacts (
    id INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NULL
);

-- 2. Inserarea celor 5 randuri de test (inclusiv o valoare NULL pentru demonstratie)
INSERT INTO Contacts (id, firstname, lastname, salary)
VALUES 
    (1, 'Alexandru', 'Popescu', 8500.00),
    (2, 'Elena', 'Radu', 12000.50),
    (3, 'Mihai', 'Ionescu', 4500.00),
    (4, 'Ana', 'Popa', NULL),
    (5, 'Cristian', 'Dumitrescu', 15000.00);

-- 3. Vizualizarea intregului set de date
SELECT * FROM Contacts;
```

#### Rezultatul Tabelului `Contacts`:
| id | firstname | lastname | salary |
| :---: | :--- | :--- | :--- |
| 1 | Alexandru | Popescu | 8500.00 |
| 2 | Elena | Radu | 12000.50 |
| 3 | Mihai | Ionescu | 4500.00 |
| 4 | Ana | Popa | NULL |
| 5 | Cristian | Dumitrescu | 15000.00 |

---

### Etapa 2: Operatori de Comparare & Predicatul `BETWEEN` (00:20 – 00:45)

Filtrarea rândurilor se realizează prin clauza `WHERE`. Clauza `WHERE` evaluează o expresie logică pentru fiecare rând; dacă expresia se evaluează la `TRUE`, rândul este inclus în setul de rezultate.

#### 1. Operatorii de Comparare de Bază

Profesorul prezintă fiecare operator de comparare printr-un exemplu concret executat pe tabelul `Contacts`:

| Operator | Semnificație | Exemplu T-SQL | Rezultat Returnat |
| :---: | :--- | :--- | :--- |
| `=` | Egalitate | `SELECT * FROM Contacts WHERE id = 3;` | Rândul 3 (Mihai Ionescu) |
| `<>` sau `!=` | Diferit de (Inegalitate) | `SELECT * FROM Contacts WHERE firstname <> 'Alexandru';` | Rândurile 2, 3, 4, 5 |
| `<` | Strict mai mic | `SELECT * FROM Contacts WHERE salary < 10000;` | Rândurile 1 (8500), 3 (4500) |
| `>` | Strict mai mare | `SELECT * FROM Contacts WHERE salary > 10000;` | Rândurile 2 (12000.50), 5 (15000) |
| `<=` | Mai mic sau egal | `SELECT * FROM Contacts WHERE salary <= 8500;` | Rândurile 1 (8500), 3 (4500) |
| `>=` | Mai mare sau egal | `SELECT * FROM Contacts WHERE salary >= 12000.50;` | Rândurile 2 (12000.50), 5 (15000) |

> **Notă Certiport**: În standardul SQL și T-SQL, operatorul standard oficial pentru inegalitate este `<>`. Deși `!=` este acceptat de majoritatea sistemelor RDBMS (inclusiv SQL Server), la examenul Certiport se utilizează cu prioritate operatorul standard `<>`.

```sql
-- Exemplu 1: Selectarea persoanelor cu salariul strict mai mic de 10000
SELECT firstname, lastname, salary 
FROM Contacts 
WHERE salary < 10000;

-- Exemplu 2: Selectarea persoanelor diferite de id = 1
SELECT id, firstname, lastname 
FROM Contacts 
WHERE id <> 1;
```

#### 2. Predicatul de Interval: `BETWEEN` și `NOT BETWEEN`

Predicatul `BETWEEN` este utilizat pentru a verifica dacă o valoare se încadrează într-un interval închis (limitele sunt **incluzive**).

- Sintaxă: `expresie BETWEEN valoare_minima AND valoare_maxima`
- Echivalență logică: `expresie >= valoare_minima AND expresie <= valoare_maxima`

```sql
-- Exemplu 3: Selectarea contactelor cu salariul intre 5000 si 13000 (inclusiv)
SELECT firstname, lastname, salary 
FROM Contacts 
WHERE salary BETWEEN 5000 AND 13000;
-- Returneaza: Alexandru (8500.00) si Elena (12000.50)

-- Exemplu 4: Selectarea contactelor cu salariul in afara intervalului 5000 - 13000
SELECT firstname, lastname, salary 
FROM Contacts 
WHERE salary NOT BETWEEN 5000 AND 13000;
-- Returneaza: Mihai (4500.00) si Cristian (15000.00)
-- NOTA: Ana (care are salary NULL) nu este inclusa, deoarece campurile goale nu pot fi comparate direct cu numere.
```

---

### Etapa 3: Predicate Avansate: `IS NULL`, `LIKE` (`%`, `_`) și `IN` (00:45 – 01:10)

#### 1. Tratarea Valorilor Absente: `IS NULL` și `IS NOT NULL`

În bazele de date relaționale, valoarea `NULL` reprezintă un **câmp gol / lipsa unei valori**. `NULL` nu este egal cu zero (`0`) și nici cu un text vid (`''`).

##### Regula de Aur pentru `NULL`:
Deoarece `NULL` înseamnă „lipsă de informație”, nu putem folosi operatorii obișnuiți de egalitate (`=` sau `<>`). Dacă scriem `salary = NULL`, SQL nu poate compara un număr cu ceva inexistent, deci interogarea nu va returna niciun rând!

Pentru a verifica dacă un câmp este gol sau completat, folosim exclusiv operatorii dedicați:
- **`IS NULL`**: verifică dacă un câmp este gol (nu are nicio valoare).
- **`IS NOT NULL`**: verifică dacă un câmp conține o valoare.

```sql
-- GRESIT (Nu va returna niciun rand!):
SELECT * FROM Contacts WHERE salary = NULL;

-- CORECT:
-- Exemplu 5: Selectarea contactelor care NU au salariul completat
SELECT * FROM Contacts 
WHERE salary IS NULL;
-- Returneaza: Ana Popa (id 4)

-- Exemplu 6: Selectarea contactelor care au salariul completat
SELECT * FROM Contacts 
WHERE salary IS NOT NULL;
-- Returneaza contactele cu id 1, 2, 3, 5
```

#### 2. Căutarea pe Bază de Tipare: Operatorul `LIKE`

Operatorul `LIKE` permite filtrarea șirurilor de caractere pe baza unui șablon ce include caractere speciale (*wildcards*):
- `%` : Înlocuiește **zero, unul sau mai multe caractere**.
- `_` : Înlocuiește **exact un singur caracter** (o singură poziție).

```sql
-- Exemplu 7: Nume de familie care incep cu litera 'P' (% = orice urmeaza dupa)
SELECT * FROM Contacts 
WHERE lastname LIKE 'P%';
-- Returneaza: Alexandru Popescu, Ana Popa

-- Exemplu 8: Prenume care contin litera 'a' oriunde in interior (%a%)
SELECT * FROM Contacts 
WHERE firstname LIKE '%a%';
-- Returneaza: Alexandru, Elena, Mihai, Ana, Cristian

-- Exemplu 9: Nume de familie formate din exact 4 litere, incepand cu 'P' si terminand cu 'a'
SELECT * FROM Contacts 
WHERE lastname LIKE 'P__a';
-- Returneaza: Ana Popa (P + 2 caractere 'op' + a)

-- Exemplu 10: Nume de familie care au pe a doua pozitie litera 'o'
SELECT * FROM Contacts 
WHERE lastname LIKE '_o%';
-- Returneaza: Popescu, Popa (pe pozitia a 2-a este 'o')
```

#### 3. Predicatul de Apartenență: `IN` și `NOT IN`

Predicatul `IN` verifică dacă o valoare se regăsește într-o listă explicită de valori constante (sau într-o subinterogare).

- Sintaxă: `coloană IN (valoare1, valoare2, ...)`
- Echivalență logică: `coloană = valoare1 OR coloană = valoare2 OR ...`

```sql
-- Exemplu 11: Selectarea contactelor cu id 1, 3 sau 5
SELECT * FROM Contacts 
WHERE id IN (1, 3, 5);
-- Returneaza: Alexandru, Mihai, Cristian

-- Exemplu 12: Selectarea contactelor al caror prenume NU se afla in lista data
SELECT * FROM Contacts 
WHERE firstname NOT IN ('Alexandru', 'Mihai');
-- Returneaza: Elena, Ana, Cristian
```

---

### Etapa 4: Logica Booleană pe Tabelul `Cats`: `AND`, `OR`, `NOT` & Precedență (01:10 – 01:40)

Pentru a asimila impecabil combinarea condițiilor logice și capcanele de precedență, profesorul introduce tabelul **`Cats`**. Acest tabel utilizează atribute discrete cu un număr limitat de opțiuni (`eye_color` și `fur_color`), permițând elevilor să calculeze mental mulțimile rezultate.

#### 1. Crearea Tabelului `Cats` și Popularea cu Valori Discrete

Profesorul explică domeniile finite:
- **`eye_color`**: `'Green'`, `'Blue'`, `'Amber'`
- **`fur_color`**: `'Gray'`, `'Black'`, `'White'`, `'Orange'`

Elevii rulează următorul script de populare (care conține 8 pisici cu diverse combinații):

```sql
-- Crearea tabelului Cats
CREATE TABLE Cats (
    cat_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    eye_color VARCHAR(20) NOT NULL,
    fur_color VARCHAR(20) NOT NULL
);

-- Inserarea inregistrarilor cu valori discrete
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

-- Vizualizarea catalogului complet de pisici
SELECT * FROM Cats;
```

#### Structura Catalogului `Cats`:
| cat_id | name | eye_color | fur_color |
| :---: | :--- | :--- | :--- |
| 1 | Luna | **Green** | **Gray** |
| 2 | Milo | **Blue** | **White** |
| 3 | Oliver | **Green** | **Black** |
| 4 | Leo | **Amber** | **Orange** |
| 5 | Bella | **Green** | **White** |
| 6 | Simba | **Amber** | **Gray** |
| 7 | Loki | **Blue** | **Black** |
| 8 | Cleo | **Green** | **Orange** |

---

#### 2. Teoria Logicii Booleene & Precedența Operatorilor

Profesorul explică regulile fundamentale ale logicii matematice în SQL:
1. **Operatorul `AND`** (Conjuncție): Returnează `TRUE` doar dacă **ambele** condiții sunt adevărate.
2. **Operatorul `OR`** (Disjuncție): Returnează `TRUE` dacă **cel puțin una** dintre condiții este adevărată.
3. **Operatorul `NOT`** (Negație): Inversează valoarea de adevăr a expresiei.

##### Ierarhia de Precedență (Ordinea Execuției):
În absența parantezelor, SQL evaluează operatorii în următoarea ordine strictă:
1. `NOT` (cea mai mare prioritate)
2. `AND` (prioritate medie - se execută întotdeauna înaintea lui `OR`)
3. `OR` (cea mai mică prioritate)

> **Regulă de Aur**: Utilizați întotdeauna **paranteze `()`** pentru a grupa condițiile legate prin `OR` atunci când sunt combinate cu `AND`, pentru a garanta că motorul relațional execută logica dorită!

---

#### 3. Sesiunea Interactivă: „Ghicește Rezultatul Interogării” (*Guess the Output*)

Profesorul afișează pe rând interogările de mai jos și le cere elevilor să determine mintal ce `cat_id`-uri vor fi selectate **înainte** de a apăsa butonul de execuție:

---

##### Cazul 1: Conjuncție Simplă (`AND`)
```sql
SELECT * FROM Cats
WHERE eye_color = 'Green' AND fur_color = 'Gray';
```
- **Analiză Logică**: Căutăm pisici care au simultan ochii verzi ȘI blana gri.
- **Predicție / Rezultat**: `cat_id = 1` (**Luna**).

---

##### Cazul 2: Capcana Erorii Logice de Auto-Excludere (`fur = X AND fur = Y`)
```sql
SELECT * FROM Cats
WHERE fur_color = 'Gray' AND fur_color = 'Black';
```
- **Întrebare pentru elevi**: *„Câte pisici vor fi returnate?”*
- **Răspuns elev**: *„Cele gri și cele negre!”* (Greșeală clasică!).
- **Explicație Didactică**: Un singur rând nu poate avea simultan două valori diferite pe aceeași coloană (`fur_color` nu poate fi egal în același timp și cu 'Gray' și cu 'Black'). Condiția produce întotdeauna `FALSE`.
- **Predicție / Rezultat**: **0 rânduri (Set vid)**.
- **Corectare**: Dacă vrem pisici care sunt fie gri, fie negre, trebuie să folosim `OR`:
  ```sql
  SELECT * FROM Cats WHERE fur_color = 'Gray' OR fur_color = 'Black';
  -- Returneaza: 1 (Luna), 3 (Oliver), 6 (Simba), 7 (Loki)
  ```

---

##### Cazul 3: Precedența cu Paranteze vs Fără Paranteze

Profesorul compară două interogări aparent similare, dar cu rezultate complet diferite:

**Varianta A (Cu Paranteze)**:
```sql
SELECT * FROM Cats
WHERE eye_color = 'Green' AND (fur_color = 'Gray' OR fur_color = 'Black');
```
- **Analiză Logică**: Evaluăm mai întâi paranteza: `fur_color` este 'Gray' sau 'Black' (adică id-urile 1, 3, 6, 7). Dintre acestea, filtrăm doar pisicile cu `eye_color = 'Green'`.
- **Predicție / Rezultat**: 
  - `cat_id = 1` (Luna: Green, Gray)
  - `cat_id = 3` (Oliver: Green, Black)
- **Total**: **2 rânduri**.

**Varianta B (Fără Paranteze – Capcana Precedenței `AND` > `OR`)**:
```sql
SELECT * FROM Cats
WHERE eye_color = 'Green' AND fur_color = 'Gray' OR fur_color = 'Black';
```
- **Analiză Logică**: Deoarece `AND` are prioritate mai mare decât `OR`, expresia se evaluează ca:
  ` (eye_color = 'Green' AND fur_color = 'Gray') OR (fur_color = 'Black') `
  Adică: returnează orice pisică cu ochi verzi și blană gri (Luna), **PLUS** orice pisică cu blană neagră indiferent de culoarea ochilor (Oliver, Loki)!
- **Predicție / Rezultat**:
  - `cat_id = 1` (Luna: Green, Gray)
  - `cat_id = 3` (Oliver: Green, Black)
  - `cat_id = 7` (Loki: Blue, Black) -> *Selectat exclusiv datorită condiției `OR fur_color = 'Black'`!*
- **Total**: **3 rânduri**.

---

##### Cazul 4: Combinații cu Inegalități (`<>`) și `OR`
```sql
SELECT * FROM Cats
WHERE fur_color = 'White' OR eye_color <> 'Green';
```
- **Analiză Logică**: Returnează orice pisică care are blana albă (Milo, Bella) **SAU** orice pisică care NU are ochii verzi (Milo, Leo, Simba, Loki).
- **Predicție / Rezultat**:
  - `cat_id = 2` (Milo: White & Blue)
  - `cat_id = 4` (Leo: Orange & Amber)
  - `cat_id = 5` (Bella: White & Green -> respectă prima condiție!)
  - `cat_id = 6` (Simba: Gray & Amber)
  - `cat_id = 7` (Loki: Black & Blue)
- **Total**: **5 rânduri** (sunt excluse doar pisicile cu ochi verzi care NU sunt albe: Luna, Oliver, Cleo).

---

##### Cazul 5: Combinație Avansată cu `NOT`, `IN` și `AND`
```sql
SELECT * FROM Cats
WHERE eye_color IN ('Green', 'Amber') 
  AND NOT (fur_color = 'Orange' OR fur_color = 'White');
```
- **Analiză Logică**: 
  1. `eye_color` trebuie să fie 'Green' sau 'Amber' (id: 1, 3, 4, 5, 6, 8).
  2. Negația `NOT (...)`: excludem orice pisică care este portocalie sau albă.
  3. Rămân doar pisicile cu ochi verzi sau galbeni care sunt gri sau negre!
- **Predicție / Rezultat**:
  - `cat_id = 1` (Luna: Green, Gray)
  - `cat_id = 3` (Oliver: Green, Black)
  - `cat_id = 6` (Simba: Amber, Gray)
- **Total**: **3 rânduri**.

---

### Etapa 5: Sarcina Practică Individuală (OneCompiler) (01:40 – 01:50)

Elevii primesc o sarcină de lucru individuală de 10 minute pentru a consolida conceptele.

#### Cerințe:
Scrieți interogările T-SQL pe tabelele `Contacts` și `Cats` care rezolvă următoarele cerințe de afaceri:

1. **Interogarea 1**: Selectați din tabelul `Contacts` toți angajații care au salariul specificat (`IS NOT NULL`) și au un salariu cuprins între `8000` și `15000`, excluzându-l pe angajatul cu `id = 1`.
2. **Interogarea 2**: Selectați din tabelul `Cats` toate pisicile care au ochii albaștri sau chihlimbarii (`Amber`) ȘI care au numele format din exact 4 litere (`LIKE '____'`).
3. **Interogarea 3**: Selectați din tabelul `Cats` toate pisicile care NU sunt negre și au ochii verzi, sortate după nume (opțional: utilizați `ORDER BY name ASC`).

#### Soluțiile Așteptate (Ghid Profesor):

```sql
-- Rezolvare Cerinta 1:
SELECT * FROM Contacts
WHERE salary IS NOT NULL 
  AND salary BETWEEN 8000 AND 15000 
  AND id <> 1;

-- Rezolvare Cerinta 2:
SELECT * FROM Cats
WHERE eye_color IN ('Blue', 'Amber')
  AND name LIKE '____';
-- Returneaza: Milo (Blue, 4 litere), Leo (Amber, 3 litere - NU), Simba (Amber, 5 litere - NU), Loki (Blue, 4 litere), Cleo (Green - NU) -> Returneaza Milo si Loki.

-- Rezolvare Cerinta 3:
SELECT * FROM Cats
WHERE fur_color <> 'Black' 
  AND eye_color = 'Green';
-- Returneaza: Luna, Bella, Cleo.
```

---

### Etapa 6: Mini-Quiz Certiport ITS & Concluzii (01:50 – 02:00)

Profesorul proiectează setul de întrebări grilă pentru a valida asimilarea obiectivelor specifice examenului Certiport ITS.

---

## 5. Mini-Quiz Certiport ITS (Verificare Teoretică)

#### Întrebarea 1:
Care dintre următoarele instrucțiuni T-SQL va returna corect rândurile dintr-un tabel `Employees` în care coloana `Bonus` nu conține nicio valoare?
- [ ] A) `SELECT * FROM Employees WHERE Bonus = NULL;`
- [x] B) `SELECT * FROM Employees WHERE Bonus IS NULL;`
- [ ] C) `SELECT * FROM Employees WHERE Bonus = 0;`
- [ ] D) `SELECT * FROM Employees WHERE Bonus EQUALS NULL;`
> **Explicație**: În SQL standard, `NULL` reprezintă absența unei valori. Compararea directă cu operatorul `=` (`Bonus = NULL`) produce starea logică `UNKNOWN`. Clauza corectă pentru testarea valorilor nule este `IS NULL`.

---

#### Întrebarea 2:
Care este rezultatul evaluării predicatului `BETWEEN 100 AND 500` pentru valorile `100`, `350` și `500`?
- [ ] A) Doar `350` este inclus (limitele sunt exclusive).
- [ ] B) Sunt incluse valorile `100` și `350`, dar `500` este exclus.
- [x] C) Toate cele trei valori (`100`, `350`, `500`) sunt incluse.
- [ ] D) Niciuna dintre valori nu este inclusă dacă nu se specifică clauza `INCLUSIVE`.
> **Explicație**: În T-SQL, predicatul `BETWEEN ... AND ...` definește un interval închis, ceea ce înseamnă că atât valoarea minimă, cât și cea maximă sunt incluse (`>= min AND <= max`).

---

#### Întrebarea 3:
Ce rânduri vor fi returnate de interogarea: `SELECT * FROM Products WHERE ProductName LIKE '_a%e';`?
- [ ] A) Produse ale căror nume încep cu 'a' și se termină cu 'e'.
- [ ] B) Produse care au litera 'a' pe prima poziție și litera 'e' pe a doua poziție.
- [x] C) Produse care au exact un caracter înaintea literei 'a', urmate de orice număr de caractere, și se termină cu litera 'e'.
- [ ] D) Produse care conțin literele 'a' și 'e' în orice ordine.
> **Explicație**: Metacaracterul `_` specifică exact o singură poziție de caracter, iar `%` specifică zero sau mai multe caractere. Astfel, șablonul caută un cuvânt cu cel puțin 3 caractere, unde a doua literă este 'a' și ultima literă este 'e' (ex: `Cake`, `Table`, `Water`).

---

#### Întrebarea 4:
Fie interogarea T-SQL:
```sql
SELECT * FROM Customers 
WHERE City = 'Bucuresti' OR City = 'Cluj' AND Age > 30;
```
Cum este evaluată această clauză în absența parantezelor?
- [ ] A) `(City = 'Bucuresti' OR City = 'Cluj') AND Age > 30`
- [x] B) `City = 'Bucuresti' OR (City = 'Cluj' AND Age > 30)`
- [ ] C) De la stânga la dreapta strict: `((City = 'Bucuresti' OR City = 'Cluj') AND Age > 30)`
- [ ] D) Interogarea generează o eroare de sintaxă deoarece necesită paranteze obligatorii.
> **Explicație**: În ierarhia de precedență a operatorilor logici din SQL, `AND` are prioritate mai mare decât `OR`. Prin urmare, motorul relațional leagă mai întâi condiția `City = 'Cluj' AND Age > 30`, iar rezultatul este combinat prin `OR` cu `City = 'Bucuresti'`.

---

#### Întrebarea 5:
Ce va returna următoarea interogare executată pe un tabel de inventar:
```sql
SELECT * FROM Items 
WHERE Category = 'Hardware' AND Category = 'Software';
```
- [ ] A) Toate produsele din categoria Hardware și toate produsele din categoria Software.
- [ ] B) Doar produsele care au ambele categorii salvate ca șir text.
- [x] C) Niciun rând (set de rezultate vid).
- [ ] D) O eroare de compilare privind coloana duplicată.
> **Explicație**: Pentru fiecare rând evaluat, coloana `Category` conține o singură valoare scalară. Deoarece o valoare nu poate fi simultan egală cu două șiruri literale distincte, expresia logică este o contradicție și se evaluează la `FALSE` pentru toate înregistrările.

---

#### Întrebarea 6:
Care dintre următoarele expresii este echivalentă logic cu:
`WHERE Status IN ('Active', 'Pending', 'Review')`?
- [ ] A) `WHERE Status = 'Active' AND Status = 'Pending' AND Status = 'Review'`
- [x] B) `WHERE Status = 'Active' OR Status = 'Pending' OR Status = 'Review'`
- [ ] C) `WHERE Status LIKE 'Active%' AND Status LIKE 'Pending%'`
- [ ] D) `WHERE Status BETWEEN 'Active' AND 'Review'`
> **Explicație**: Operatorul `IN` reprezintă o formă condensată pentru o serie de comparații de egalitate legate prin operatorul disjunctiv `OR`.

---

#### Întrebarea 7:
Dacă o coloană `Discount` are valoarea `NULL`, de ce interogarea `SELECT * FROM Orders WHERE Discount = NULL;` nu va returna niciun rând?
- [ ] A) Deoarece coloana `Discount` trebuie să fie de tip text pentru a folosi `=`.
- [x] B) Deoarece `NULL` reprezintă un câmp gol și nu poate fi comparat cu `=`, necesitând operatorul `IS NULL`.
- [ ] C) Deoarece SQL convertește automat `NULL` în zero.
- [ ] D) Interogarea generează o eroare de compilare.
> **Explicație**: `NULL` semnifică absența unei valori. Din acest motiv, compararea cu `= NULL` este incorectă în SQL și nu returnează rezultate; verificarea corectă a valorilor lipsă se face exclusiv prin operatorul `IS NULL` (sau `IS NOT NULL`).

---

#### Întrebarea 8:
Care este operatorul standard ANSI SQL recomandat pentru verificarea inegalității a două valori?
- [ ] A) `!=`
- [ ] B) `!==`
- [x] C) `<>`
- [ ] D) `NOT =`
> **Explicație**: Deși `!=` este suportat de T-SQL, operatorul standard oficial ANSI SQL pentru inegalitate este `<>`. La examenul de certificare Certiport ITS, `<>` este sintaxa de referință.
