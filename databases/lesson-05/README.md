# Lecția 05 [DB1.5]: Agregarea și Analiza Datelor în T-SQL (Funcții Agregate, GROUP BY, HAVING, ORDER BY & Aliasuri)

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.5
- **Modul**: Interogarea Avansată a Datelor & Analiză Relațională (DQL)
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, sincronă în OneCompiler: crearea tabelului de raportare `totalsales` (id, salesperson, region, sales, year), perspectiva decizională a unui antreprenor, aplicarea funcțiilor agregate (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), limitarea cu `DISTINCT`, agregarea grupată cu `GROUP BY` și regula strictă a coloanelor neagregate, filtrarea grupurilor prin `HAVING` (vs `WHERE`), sortarea multi-coloană cu `ORDER BY` (`ASC` / `DESC`), utilizarea aliasurilor de coloană (`AS`), urmată de exerciții aplicative și mini-quiz Certiport.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 3.7: Utilizarea funcțiilor agregate (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`) și gestionarea valorilor `NULL` în agregare.
  - Obiectiv 3.8: Gruparea înregistrărilor folosind clauza `GROUP BY`.
  - Obiectiv 3.9: Filtrarea rezultatelor agregate folosind clauza `HAVING` și diferențierea de `WHERE`.
  - Obiectiv 3.10: Sortarea datelor prin `ORDER BY` pe una sau mai multe coloane în ordine ascendentă (`ASC`) sau descendentă (`DESC`).
  - Obiectiv 3.11: Redenumirea expresiilor și coloanelor prin aliasuri (`AS`).

### Întrebări Esențiale:
1. Care este diferența esențială dintre `COUNT(*)` și `COUNT(sales)` atunci când o coloană conține valori `NULL`?
2. De ce filtrarea cu `WHERE` nu poate conține direct funcții de agregare (de exemplu `WHERE SUM(sales) > 100000`)?
3. Care este regula de aur a clauzei `GROUP BY` privind coloanele din `SELECT` care nu sunt învelite într-o funcție de agregare?
4. Cum diferă clauza `HAVING` de clauza `WHERE` din perspectiva ordinii logice de procesare a interogărilor?
5. De ce un alias definit în clauza `SELECT` poate fi utilizat în `ORDER BY`, dar provoacă eroare dacă este folosit în `WHERE` sau `HAVING`?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație T-SQL GROUP BY**: https://learn.microsoft.com/en-us/sql/t-sql/queries/select-group-by-transact-sql
- **Documentație T-SQL HAVING**: https://learn.microsoft.com/en-us/sql/t-sql/queries/select-having-transact-sql
- **Documentație Funcții Agregate**: https://learn.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate stațiile de lucru.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pe ecranele elevilor.
- [ ] Proiectorul / ecranul partajat configurat pentru demonstrarea interogărilor agregate.

### Materiale Didactice & Exemple Pregătite
- [ ] Schema DDL și setul oficial de 8 înregistrări pentru tabelul `totalsales` (inclusiv rândul 8 cu `sales = NULL`).
- [ ] Șablonul structural al instrucțiunii `SELECT` complete (`SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY`).
- [ ] Scenariul de eroare deliberată pentru regula coloanelor neagregate în `GROUP BY`.
- [ ] Setul de 5 exerciții aplicative de afaceri pentru consolidare.
- [ ] Setul de 8 întrebări tip Certiport ITS pregătit pentru testarea finală.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:20** | **1. Tabelul `totalsales` & Perspectiva Antreprenorului** | Crearea tabelului `totalsales` cu 8 rânduri de date în OneCompiler. Discuție: nevoia de indicatori sintetici în afaceri vs simpla citire rând cu rând. Structura completă a instrucțiunii `SELECT`. |
| **00:20 – 00:45** | **2. Funcțiile de Agregare (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`) & Limita `DISTINCT`** | Aplicarea celor 5 funcții agregate pe volumul de vânzări. Tratarea valorilor `NULL` (`COUNT(*)` vs `COUNT(sales)`). Utilizarea `DISTINCT` pentru identificarea agenților și apariția dilemei: cum calculăm automat totalul fiecărui agent? |
| **00:45 – 01:15** | **3. Gruparea Datelor: `GROUP BY` & Filtrarea Grupurilor cu `HAVING`** | Introducerea clauzei `GROUP BY`. Regula critică a coloanelor neagregate și analiza erorii din SQL Server. Gruparea multi-coloană (`salesperson, region`). Introducerea clauzei `HAVING` și comparația structurală `WHERE` vs `HAVING`. |
| **01:15 – 01:35** | **4. Ordonarea Datelor (`ORDER BY`) & Utilizarea Aliasurilor (`AS`)** | Sortarea rezultatelor agregate (`ASC` / `DESC`). Sortarea ierarhică multi-coloană. Definirea aliasurilor cu `AS` sau fără `AS`. Regula de aur a vizibilității aliasurilor în logica T-SQL. |
| **01:35 – 01:50** | **5. Exerciții Practice de Consolidare (OneCompiler)** | Rezolvarea autonomă a 5 scenarii reale de afaceri pe baza tabelului `totalsales` (top vânzători, performanță regională, medii anuale). |
| **01:50 – 02:00** | **6. Mini-Quiz Certiport ITS & Concluzii** | Evaluare grilă de 8 întrebări Certiport axate pe clauza `GROUP BY`, comportamentul `COUNT` pe `NULL`, diferența `HAVING` vs `WHERE` și aliasuri. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Tabelul `totalsales` & Perspectiva Antreprenorului (00:00 – 00:20)

Profesorul deschide sesiunea stabilind contextul de afaceri:
*"Imaginați-vă că sunteți fondatorul unei companii internaționale. În baza voastră de date aveți mii sau milioane de tranzacții. Ca antreprenor, nu vă ajută să citiți 10.000 de rânduri unul câte unul. Vreți răspunsuri rapide la întrebări strategice: Care este venitul total? Cine este cel mai performant agent de vânzări? Ce regiune aduce cel mai mare profit? Pentru asta folosim funcțiile agregate și clauzele de analiză din T-SQL."*

#### 1. Structura Generală a Instrucțiunii `SELECT` Complete

Profesorul scrie pe tablă ierarhia clauzelor SQL în ordinea lor sintactică:

```text
SELECT   coloana1, coloana2, SUM(valoare) AS Total
FROM     NumeTabel
WHERE    conditie_filtrare_randuri
GROUP BY coloana1, coloana2
HAVING   conditie_filtrare_grupuri
ORDER BY Total DESC;
```

#### 2. Crearea și Popularea Tabelului `totalsales` în OneCompiler

Toți elevii execută scriptul inițial:

```sql
-- Crearea tabelului de vanzari
CREATE TABLE totalsales (
    totalsales_id INT PRIMARY KEY,
    salesperson VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    sales INT NULL,
    year VARCHAR(10) NOT NULL
);

-- Popularea tabelului cu 8 inregistrari de test
INSERT INTO totalsales (totalsales_id, salesperson, region, sales, year)
VALUES 
    (1, 'Anton', 'Europe', 200000, '2023'),
    (2, 'Anton', 'Europe', 150000, '2024'),
    (3, 'Anton', 'Europe', 330000, '2025'),
    (4, 'Eduard', 'Europe', 450000, '2024'),
    (5, 'Eduard', 'Europe', 400000, '2025'),
    (6, 'Anton', 'Africa', 100000, '2024'),
    (7, 'Anton', 'Africa', 80000, '2025'),
    (8, 'Eduard', 'Africa', NULL, '2026');

-- Afisarea datelor brute
SELECT * FROM totalsales;
```

> **Atenție pedagogică la Rândul 8**: Observați că Eduard are în anul 2026 o valoare `sales` egală cu `NULL` (tranzacție încă nefinalizată sau contract în negociere). Această valoare `NULL` va servi drept exemplu perfect pentru testarea comportamentului funcțiilor agregate!

---

### Etapa 2: Funcțiile de Agregare & Limita Clauzei DISTINCT (00:20 – 00:45)

Funcțiile agregate calculează un singur rezultat scalar rezumativ dintr-un set de valori.

#### 1. Cele 5 Funcții Agregate Cheie

| Funcție | Rol Didactic | Exemplu T-SQL |
| :--- | :--- | :--- |
| **`COUNT()`** | Numără rândurile sau valorile nenule | `SELECT COUNT(*) FROM totalsales;` |
| **`SUM()`** | Calculează suma totală a unei coloane numerice | `SELECT SUM(sales) FROM totalsales;` |
| **`AVG()`** | Calculează media aritmetică a valorilor | `SELECT AVG(sales) FROM totalsales;` |
| **`MIN()`** | Identifică valoarea minimă | `SELECT MIN(sales) FROM totalsales;` |
| **`MAX()`** | Identifică valoarea maximă | `SELECT MAX(sales) FROM totalsales;` |

#### 2. Rularea Exemplelor în OneCompiler

```sql
-- A. Numararea randurilor: COUNT(*) vs COUNT(coloana)
SELECT COUNT(*) FROM totalsales;       -- Returneaza 8 (toate randurile)
SELECT COUNT(sales) FROM totalsales;  -- Returneaza 7! (ignora valoarea NULL de la randul 8)

-- B. Filtrare cu WHERE inainte de agregare
SELECT COUNT(*) FROM totalsales WHERE region = 'Europe'; -- Returneaza 5

-- C. Suma totala a vanzarilor
SELECT SUM(sales) FROM totalsales; -- Returneaza 1710000

-- D. Suma vanzarilor per vanzator (metoda manuala repetitiva)
SELECT SUM(sales) FROM totalsales WHERE salesperson = 'Eduard'; -- 850000
SELECT SUM(sales) FROM totalsales WHERE salesperson = 'Anton';  -- 860000

-- E. Media, Minimul si Maximul vanzarilor
SELECT AVG(sales) FROM totalsales; -- 244285 (1710000 impartit la 7 vanzari valide, NU la 8!)
SELECT MIN(sales) FROM totalsales; -- 80000
SELECT MAX(sales) FROM totalsales; -- 450000
```

> **Capcană de Examen Certiport**: Funcțiile agregate `COUNT(col)`, `SUM(col)`, `AVG(col)`, `MIN(col)`, `MAX(col)` **ignoră automat valorile `NULL`**. Doar `COUNT(*)` numără toate rândurile, indiferent dacă au sau nu câmpuri `NULL`.

#### 3. Identificarea Valorilor Unice cu `DISTINCT`

Profesorul întreabă elevii:
*"Dacă vrem să știm care sunt toți vânzătorii noștri unici, cum procedăm?"*

```sql
-- Lista simpla (cu duplicate)
SELECT salesperson FROM totalsales;

-- Lista curata de valori distincte
SELECT DISTINCT salesperson FROM totalsales; -- Afiseaza doar 'Anton' si 'Eduard'

-- Combinatii distincte pe mai multe coloane
SELECT DISTINCT salesperson, region FROM totalsales;
```

**Dilema Antreprenorului**:
*"Dacă avem 100 de vânzători diferiți în companie, ar trebui oare să rulăm 100 de interogări cu `WHERE salesperson = '...'` pentru a afla cât a vândut fiecare? Ar fi ineficient și imposibil de menținut. Exact pentru această problemă a fost creată clauza `GROUP BY`!"*

---

### Etapa 3: Gruparea Datelor (`GROUP BY`) & Filtrarea Grupurilor cu `HAVING` (00:45 – 01:15)

### 1. Clauza `GROUP BY`
- **Rol**: Împarte rândurile din tabel în grupuri pe baza valorilor egale din coloanele specificate, apoi execută funcția de agregare **separat pentru fiecare grup**.

#### Exemplul de Bază:
```sql
-- Total vanzari calculate automat pentru fiecare vanzator
SELECT salesperson, SUM(sales)
FROM totalsales
GROUP BY salesperson;
```
*Rezultat returnat:*
- `Anton`: 860000
- `Eduard`: 850000

#### Gruparea pe Regiuni:
```sql
-- Total vanzari si numar de tranzactii per regiune
SELECT region, SUM(sales), COUNT(*)
FROM totalsales
GROUP BY region;
```

#### Gruparea pe Mai Multe Coloane:
```sql
-- Vanzari per vanzator in fiecare regiune
SELECT salesperson, region, SUM(sales)
FROM totalsales
GROUP BY salesperson, region;
```

---

### 2. Regula de Aur a Coloanelor Neagregate (The Non-Aggregated Column Rule)

Profesorul dictează intenționat un script greșit pentru a arăta eroarea clasică:

```sql
-- SCRIPT GRESIT: Omiterea coloanei neagregate din GROUP BY
SELECT salesperson, region, SUM(sales)
FROM totalsales
GROUP BY salesperson;
```

**Mesajul de eroare din SQL Server:**
```text
Column 'totalsales.region' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
```

**Explicația Didactică:**
- Dacă punem `salesperson` și `region` în `SELECT`, dar grupăm doar după `salesperson`, SQL Server nu știe ce valoare scalară din `region` să afișeze pe un singur rând de sinteză dacă vânzătorul a activat în mai multe regiuni!
- **Regula**: **Orice coloană care apare în `SELECT` și NU se află în interiorul unei funcții de agregare (`SUM`, `AVG`, etc.) TREBUIE OBLIGATORIU trecută în clauza `GROUP BY`!**

---

### 3. Filtrarea Grupurilor cu `HAVING` (vs. `WHERE`)

Profesorul explică:
*"Dorim să vedem doar vânzătorii care au încasat în total peste 855.000. Putem scrie `WHERE SUM(sales) > 855000`?"*

```sql
-- INCORRECT: Agregare in clauza WHERE
SELECT salesperson, SUM(sales)
FROM totalsales
WHERE SUM(sales) > 855000 -- EROARE! An aggregate may not appear in the WHERE clause.
GROUP BY salesperson;
```

De ce apare eroarea?
- Clauza `WHERE` filtrează **rândurile individuale ÎNAINTE** ca ele să fie grupate. În momentul în care `WHERE` rulează, grupurile și sumele nici măcar nu există încă!
- Pentru a filtra **grupurile DUPĂ agregare**, T-SQL pune la dispoziție clauza **`HAVING`**.

#### Sintaxa Corectă cu `HAVING`:
```sql
SELECT salesperson, SUM(sales)
FROM totalsales
GROUP BY salesperson
HAVING SUM(sales) > 855000; -- Returneaza doar Anton (860000)
```

#### Comparație Directă: `WHERE` vs `HAVING`

| Criteriu | `WHERE` | `HAVING` |
| :--- | :--- | :--- |
| **Moment de Execuție** | **Înainte** de grupare și agregare | **După** grupare și agregare |
| **Ce filtrează?** | Rânduri individuale | Grupuri de date |
| **Poate conține funcții agregate?** | **NU** (`WHERE SUM(...)` este interzis) | **DA** (`HAVING SUM(...) > 1000`) |
| **Exemplu în interogare combinată** | `WHERE region = 'Europe'` | `HAVING SUM(sales) > 300000` |

```sql
-- Exemplu combinat: Vanzari din Europa pentru agentii cu peste 500.000 total in Europa
SELECT salesperson, SUM(sales)
FROM totalsales
WHERE region = 'Europe'          -- Pas 1: Filtram randurile individuale din Europa
GROUP BY salesperson             -- Pas 2: Grupam pe vanzatori
HAVING SUM(sales) > 500000;      -- Pas 3: Pastram doar grupurile cu suma > 500000 (Eduard: 850000)
```

---

### Etapa 4: Ordonarea Datelor (`ORDER BY`) & Utilizarea Aliasurilor (`AS`) (01:15 – 01:35)

### 1. Sortarea cu `ORDER BY`
- În mod implicit, SQL nu garantează nicio ordine a rândurilor returnate. Pentru a le afișa ordonat, folosim clauza **`ORDER BY`** (plasată întotdeauna la finalul interogării).
- **Direcții de Sortare**:
  - **`ASC`** (Ascending): De la mic la mare / Alfabetic (A-Z). Este valoarea **implicită**.
  - **`DESC`** (Descending): De la mare la mic / Invers alfabetic (Z-A).

#### Exemple Practice:
```sql
-- Sortare simpla descrescatoare dupa vanzari
SELECT * FROM totalsales
ORDER BY sales DESC;

-- Sortare multi-coloana (dupa regiune alfabetic, apoi dupa vanzari descrescator)
SELECT * FROM totalsales
ORDER BY region ASC, sales DESC;

-- Ordonarea rezultatelor agregate
SELECT salesperson, SUM(sales)
FROM totalsales
GROUP BY salesperson
ORDER BY SUM(sales) DESC;
```

---

### 2. Aliasuri de Coloană (`AS`)
- **Ce este un Alias?** O denumire temporară atribuită unei coloane sau unei expresii calculate pentru a face rezultatul ușor de citit.
- **Tipare de Scriere**:
  - Cu cuvântul cheie `AS`: `SELECT SUM(sales) AS total_revenue`
  - Fără cuvântul cheie `AS`: `SELECT SUM(sales) total_revenue`
  - Cu spații (necesită paranteze drepte `[]` sau ghilimele): `SELECT SUM(sales) AS [Total Sales]`

```sql
SELECT 
    salesperson AS Agent,
    SUM(sales) AS TotalRevenue,
    AVG(sales) AS AverageSale,
    COUNT(*) AS TransactionsCount
FROM totalsales
GROUP BY salesperson
ORDER BY TotalRevenue DESC;
```

> **Regulă Critică Certiport ITS - Unde putem folosi Aliasul?**:
> - **Permis în `ORDER BY`**: `ORDER BY TotalRevenue DESC` este perfect valid, deoarece `ORDER BY` se execută la finalul interogării, după ce aliasul a fost creat în `SELECT`.
> - **INTERZIS în `WHERE` și `HAVING`**: Nu puteți scrie `WHERE TotalRevenue > 10000` sau `HAVING TotalRevenue > 10000`! Clauzele `WHERE` și `HAVING` sunt evaluate logic *înainte* de `SELECT`, moment în care aliasul `TotalRevenue` nu există încă în memorie!

---

### Etapa 5: Exerciții Practice de Consolidare (01:35 – 01:50)

Elevii rezolvă în mod autonom în OneCompiler următoarele cerințe de afaceri:

#### Exercițiul 1: Performanța Anuală
Afișați fiecare an (`year`) și valoarea totală a vânzărilor realizate în acel an, ordonate descrescător după vânzări.
```sql
SELECT year, SUM(sales) AS yearly_sales
FROM totalsales
GROUP BY year
ORDER BY yearly_sales DESC;
```

#### Exercițiul 2: Numărul Tranzacțiilor Valide
Afișați pentru fiecare agent de vânzări numărul total de tranzacții și numărul de tranzacții cu sumă validă (nenulă).
```sql
SELECT 
    salesperson,
    COUNT(*) AS total_records,
    COUNT(sales) AS valid_sales_records
FROM totalsales
GROUP BY salesperson;
```

#### Exercițiul 3: Raport Regional cu Filtru pe Medie
Calculați vânzările totale și media vânzărilor pentru fiecare regiune, afișând doar regiunile care au o medie a vânzărilor mai mare de 200.000.
```sql
SELECT 
    region,
    SUM(sales) AS total_regional_sales,
    AVG(sales) AS average_sale
FROM totalsales
GROUP BY region
HAVING AVG(sales) > 200000;
```

#### Exercițiul 4: Clasamentul Agenților în Anul 2024
Afișați suma vânzărilor realizate exclusiv în anul 2024 pentru fiecare agent, ordonată de la cel mai performant la cel mai slab.
```sql
SELECT salesperson, SUM(sales) AS sales_2024
FROM totalsales
WHERE year = '2024'
GROUP BY salesperson
ORDER BY sales_2024 DESC;
```

---

## 5. Mini-Quiz Certiport ITS (Evaluare & Consolidare)

#### Întrebarea 1:
Ce va returna interogarea `SELECT COUNT(sales) FROM totalsales;` dacă tabelul conține 8 rânduri, iar pe unul dintre rânduri coloana `sales` are valoarea `NULL`?
- [ ] A) 8
- [x] B) 7
- [ ] C) `NULL`
- [ ] D) Eroare de execuție din cauza valorii absente.
> **Explicație**: Funcția `COUNT(nume_coloana)` ignoră valorile `NULL` și numără doar înregistrările care conțin date reale (7 înregistrări). Numai `COUNT(*)` include toate rândurile (8).

---

#### Întrebarea 2:
Care este eroarea din următoarea interogare T-SQL?
```sql
SELECT region, year, SUM(sales)
FROM totalsales
GROUP BY region;
```
- [ ] A) Funcția `SUM(sales)` nu poate fi aplicată pe o coloană de tip `INT`.
- [ ] B) Clauza `GROUP BY` nu poate fi utilizată fără `WHERE`.
- [x] C) Coloana `year` apare în `SELECT`, dar lipsește din clauza `GROUP BY`.
- [ ] D) Sintaxa necesită obligatoriu clauza `HAVING`.
> **Explicație**: Regula coloanelor neagregate specifică faptul că orice coloană listată în clauza `SELECT` care nu este procesată printr-o funcție de agregare trebuie să apară obligatoriu în clauza `GROUP BY`.

---

#### Întrebarea 3:
Care este diferența dintre clauza `WHERE` și clauza `HAVING`?
- [ ] A) `WHERE` se folosește doar pentru numere, iar `HAVING` doar pentru text.
- [x] B) `WHERE` filtrează rândurile înainte de agregare, în timp ce `HAVING` filtrează grupurile după agregare.
- [ ] C) `HAVING` nu permite operatori de comparare precum `>`, `<` sau `=`.
- [ ] D) Nu există nicio diferență; cele două clauze sunt complet interschimbabile.
> **Explicație**: `WHERE` elimină rândurile la nivel individual înainte de generarea grupurilor. `HAVING` evaluează condiția pe rezultatele agregate ale fiecărui grup deja format.

---

#### Întrebarea 4:
Ce clauză este corectă pentru a afișa doar grupurile de agenți ale căror vânzări medii depășesc 250.000?
- [ ] A) `WHERE AVG(sales) > 250000`
- [x] B) `HAVING AVG(sales) > 250000`
- [ ] C) `ORDER BY AVG(sales) > 250000`
- [ ] D) `GROUP BY AVG(sales) > 250000`
> **Explicație**: Funcțiile agregate nu pot fi evaluate în clauza `WHERE`. Filtrarea pe baza rezultatului funcției `AVG(sales)` se realizează exclusiv în clauza `HAVING`.

---

#### Întrebarea 5:
Care este ordinea implicită de sortare a clauzei `ORDER BY` dacă nu se specifică niciun cuvânt cheie de direcție?
- [ ] A) `DESC` (descrescătoare)
- [x] B) `ASC` (crescătoare)
- [ ] C) Aleatorie (în ordinea din fișierul de date)
- [ ] D) Numerică strictă
> **Explicație**: În standardul SQL și T-SQL, ordinea implicită a clauzei `ORDER BY` este `ASC` (crescătoare / de la mic la mare / alfabetic).

---

#### Întrebarea 6:
Fie interogarea:
```sql
SELECT region, sales, salesperson
FROM totalsales
ORDER BY region ASC, sales DESC;
```
Cum vor fi afișate rezultatele?
- [ ] A) Sortate doar după `sales` descrescător, ignorând complet `region`.
- [ ] B) Sortate mai întâi după `sales`, iar în caz de egalitate după `region`.
- [x] C) Sortate mai întâi alfabetic după `region`, iar în cadrul aceleiași regiuni de la vânzarea cea mai mare la cea mai mică.
- [ ] D) Interogarea generează o eroare de sintaxă deoarece nu permite două direcții diferite.
> **Explicație**: În sortarea multi-coloană, motorul SQL ordonează mai întâi după primul criteriu (`region ASC`). Dacă există valori identice în regiune, ordonează acele rânduri specifice după al doilea criteriu (`sales DESC`).

---

#### Întrebarea 7:
De ce următoarea interogare returnează o eroare în SQL Server?
```sql
SELECT salesperson, SUM(sales) AS total_amount
FROM totalsales
WHERE total_amount > 200000
GROUP BY salesperson;
```
- [ ] A) Aliasul `total_amount` trebuie scris între paranteze pătrate.
- [ ] B) Funcția `SUM` nu acceptă aliasuri.
- [x] C) Aliasul `total_amount` nu poate fi utilizat în clauza `WHERE`, deoarece `WHERE` este evaluată înainte de `SELECT`.
- [ ] D) Tabelul `totalsales` nu acceptă clauza `GROUP BY`.
> **Explicație**: În ordinea logică de procesare a interogării, motorul SQL evaluează clauza `WHERE` înaintea clauzei `SELECT`. În momentul executării filtrării `WHERE`, aliasul `total_amount` nu a fost încă definit.

---

#### Întrebarea 8:
Care este sintaxa validă pentru atribuirea unui alias coloanei calculate a unei medii în T-SQL?
- [ ] A) `SELECT AVG(sales) = AveragePrice FROM totalsales;`
- [ ] B) `SELECT AVG(sales) TO AveragePrice FROM totalsales;`
- [x] C) `SELECT AVG(sales) AS AveragePrice FROM totalsales;`
- [ ] D) `SELECT AVG(sales) NAME AveragePrice FROM totalsales;`
> **Explicație**: Cuvântul cheie standard pentru definirea unui alias de coloană în T-SQL este `AS` (deși scrierea fără `AS` prin simplă juxtapunere `SELECT AVG(sales) AveragePrice` este de asemenea acceptată).
