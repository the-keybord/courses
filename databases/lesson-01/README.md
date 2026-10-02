# Lecția 01 [DB1.1]: Introducere în Baze de Date Relaționale, Tipuri de Date & Chei în T-SQL

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.1
- **Modul**: Fundamentele Bazelor de Date & Modelare Relațională
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Demonstrație ghidată de profesor cu scriere sincronă de cod T-SQL în OneCompiler, dezbateri pe anomalii de date și exerciții practice la tastatură.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Miza Academică & Certificarea Certiport**:
  - **Nota 10 din Oficiu la BAC la Informatică**: În conformitate cu regulamentele oficiale din Republica Moldova, obținerea a **3 certificate internaționale Certiport ITS** acordă elevului eliberarea automată cu **nota 10 (zece) din oficiu la examenul de Bacalaureat** la disciplina Informatică. Examenul **Certiport ITS: Databases** este unul dintre aceste trei certificate recunoscute.
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 1.1: Înțelegerea conceptelor fundamentale de baze de date (tabele, rânduri, coloane, RDBMS).
  - Obiectiv 1.2: Identificarea tipurilor de date standard T-SQL (`INT`, `DECIMAL`, `BIT`, `VARCHAR`, `DATE`, `DATETIME`, `TIME`).
  - Obiectiv 1.3: Înțelegerea cheilor primare (`Primary Key`) și a cheilor străine (`Foreign Key`).
  - Obiectiv 1.4: Recunoașterea redundanței și a dependențelor tranzitive (baza normalizării).

### Întrebări Esențiale:
1. Cum ne asigură stăpânirea bazelor de date și obținerea certificării Certiport ITS Databases succesul profesional și **nota 10 din oficiu la examenul de Bacalaureat**?
2. De ce fișierele Excel devin ineficiente pentru aplicații mari și cum rezolvă o **Bază de Date Relațională (RDBMS)** securitatea, viteza și integritatea datelor?
3. Cum alegem corect tipul de date (`Data Type`) pentru fiecare coloană și de ce este critic să cunoaștem termenii tehnici direct în limba engleză?
4. De ce este obligatoriu ca fiecare rând dintr-un tabel să aibă o cheie primară (**Primary Key**) unică (analogia IDNP) și de ce separăm datele în tabele legate prin chei străine (**Foreign Key**)?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație Oficială T-SQL**: https://learn.microsoft.com/en-us/sql/t-sql/

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune la internet verificată pe laptopurile elevilor.
- [ ] Link-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis pe fiecare ecran.
- [ ] Proiectorul / ecranul central pornit pentru demonstrația live de cod T-SQL.

### Materiale Didactice & Exemple Pregătite
- [ ] Prezentarea structurii examenului Certiport ITS și a criteriilor de echivalare a notei 10 la BAC.
- [ ] Exemplul tabelului `Students` cu duplicate pregătit pentru testul live.
- [ ] Exemplul anomaliei de actualizare (dirigintele schimbat) pregătit pentru demonstrarea dependenței tranzitive.
- [ ] Setul de întrebări pentru mini-quiz-ul final pregătit pentru afișare la tablă.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:15** | **1. Miza Cursului: Nota 10 la BAC, Certiport & Ce este un RDBMS?** | Prezentarea oportunității notei 10 din oficiu la BAC (regula celor 3 certificate Certiport), scopul certificării Databases, diferența dintre fișiere text/Excel și RDBMS, ce este limbajul SQL (Structured Query Language). |
| **00:15 – 00:35** | **2. Anatomia unui Tabel & Tipuri de Date T-SQL** | Tabele, rânduri (records), coloane (fields). Prezentarea tipurilor fundamentale: `INT`, `DECIMAL`, `BIT`, `VARCHAR`, `DATE`, `DATETIME`, `TIME`. |
| **00:35 – 00:55** | **3. Brainstorming & Crearea Tabelului `Students`** | Elevii propun coloane; simplificarea la 3 coloane (`first_name`, `last_name`, `birth_date`), scrierea comenzilor `CREATE TABLE` și `INSERT INTO` în OneCompiler. |
| **00:55 – 01:15** | **4. Dilema Duplicatelor, IDNP & Cheia Primară (PK)** | Inserarea a doi studenți cu același nume; dezbaterea unicității (analogia IDNP); adăugarea coloanei `student_id` ca identificator unic. |
| **01:15 – 01:40** | **5. Dependențe Tranzitive & Împărțirea în 2 Tabele (FK)** | Adăugarea coloanelor de clasă/diriginte; identificarea redundanței; separarea în tabelele `Students` și `Classes`; noțiunea de `Foreign Key`. |
| **01:40 – 02:00** | **6. Sarcina Individuală & Mini-Quiz Certiport** | Exercițiu practic individual în OneCompiler (modelul Bibliotecii: `Books` & `Authors`), urmat de mini-quiz-ul de verificare de 8 întrebări. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Miza Cursului: Nota 10 la BAC, Certiport & Ce este o Bază de Date? (00:00 – 00:15)

Profesorul deschide sesiunea explicând miza directă și beneficiile academice majore ale acestui curs:

#### 🎓 Miza Academică Directă: Nota 10 din Oficiu la Bacalaureat
*"Bine ați venit la cursul de Baze de Date și T-SQL! Dincolo de faptul că bazele de date reprezintă coloana vertebrală a oricărui sistem software din lume, acest curs are un obiectiv pragmatic și strategic pentru parcursul vostru academic:*
- *În Republica Moldova, elevii care dețin **3 certificate internaționale din suita Certiport Information Technology Specialist (ITS)** beneficiază de **echivalarea automată cu nota 10 (zece) din oficiu la proba de Informatică de la examenul de Bacalaureat**.*
- *Examenul **Certiport ITS: Databases** este unul dintre aceste trei examene acreditate. Finalizarea cu succes a acestui curs și susținerea examenului vă aduce cu un pas uriaș mai aproape de asigurarea notei maxime la BAC fără stresul probei scrise."*

#### De ce nu folosim un simplu fișier Excel?
- **Volumul de Date**: Excel încetinește la sute de mii de rânduri; o bază de date gestionează miliarde de înregistrări în fracțiuni de secundă.
- **Acces Simultan (Concurență)**: Dacă 1.000 de utilizatori încearcă să modifice un fișier Excel în aceeași secundă, fișierul se blochează sau se corupe. Un **RDBMS** (Relational Database Management System) gestionează mii de tranzacții simultane în deplină siguranță.
- **Securitate & Relații**: Bazele de date permit restricții stricte de acces și leagă informațiile între ele prin reguli matematice precise.

#### Ce este SQL și de ce T-SQL?
- **SQL** înseamnă **Structured Query Language** (Limbaj Structurat de Interogare). Este un limbaj declarativ standardizat: noi îi specificăm serverului *ce date vrem să obținem*, iar optimizatorul de interogări al serverului determină cel mai rapid plan de execuție.
- **T-SQL (Transact-SQL)** este dialectul dezvoltat de **Microsoft** pentru motorul **Microsoft SQL Server**. Include extensii procedurale avansate, funcții de procesare și reprezintă dialectul oficial testat în examenul Certiport ITS.

---

### Etapa 2: Anatomia unui Tabel & Tipuri de Date T-SQL (00:15 – 00:35)

Profesorul explică la tablă că o bază de date relațională este compusă din **Tabele (Tables)** interconectate.

#### Structura unui Tabel:
- **Tabel (Table / Entity)**: Colecția de date despre un anumit subiect (ex. tabelul `Students`, `Products`, `Orders`).
- **Rând (Row / Record / Tuple)**: O singură înregistrare completă (ex. datele despre elevul Ion Popescu).
- **Coloană (Column / Field / Attribute)**: O proprietate specifică a înregistrării (ex. `first_name`, `birth_date`).

Fiecare coloană dintr-un tabel este definită strict prin trei elemente:
1. **Column Name** (Numele coloanei – întotdeauna clar, în engleză, scris snake_case sau PascalCase).
2. **Data Type** (Tipul de date permis pe acea coloană).
3. **Constraints** (Reguli de validare – ex. nu poate fi lăsat gol).

#### Tipurile Fundamentale de Date în T-SQL:

| Tip de Date T-SQL | Semnificație | Exemplu de Valoare | Utilizare Tipică |
| :--- | :--- | :--- | :--- |
| **`INT`** | Număr întreg (4 bytes, de la -2 miliarde la +2 miliarde) | `1`, `42`, `1005` | ID-uri, număr de bucăți, vârstă |
| **`DECIMAL(p, s)`** | Număr zecimal cu precizie exactă (`p` = cifre totale, `s` = zecimale) | `9.75`, `149.99` | Note, prețuri, salarii, greutate |
| **`BIT`** | Valoare binară booleană (stochează `1` sau `0`) | `1` (True) sau `0` (False) | `is_active`, `has_scholarship` |
| **`VARCHAR(n)`** | Text de lungime variabilă (maxim `n` caractere) | `'Ion'`, `'popescu@gmail.com'` | Nume, prenume, adrese, email |
| **`DATE`** | Doar data calendaristică (`YYYY-MM-DD`) | `'2010-05-14'` | Data nașterii, data angajării |
| **`DATETIME`** | Dată calendaristică + Oră exactă | `'2026-10-02 14:30:00'` | Momentul plasării unei comenzi |
| **`TIME`** | Doar timpul (`hh:mm:ss`) | `'08:30:00'` | Ora începerii unei ore de curs |

> ⚠️ **Regulă de Aur**: În SQL, valorile de tip text (`VARCHAR`) și datele calendaristice (`DATE`) se scriu întotdeauna între ghilimele simple: `'Ion'`, `'2010-05-14'`, în timp ce numerele (`INT`, `DECIMAL`) se scriu direct: `25`, `9.50`.

---

### Etapa 3: Brainstorming & Crearea Tabelului `Students` în OneCompiler (00:35 – 00:55)

Profesorul deschide [OneCompiler SQL Server](https://onecompiler.com/sqlserver) pe proiector și cere elevilor să facă același lucru pe laptopurile lor.

#### Activitate de Brainstorming cu Clasa:
Profesorul întreabă: *"Dacă am vrea să creăm o bază de date pentru școala noastră, ce coloane am putea pune în tabelul `Students`?"*
Elevii încep să strige idei:
- *First Name, Last Name, Birth Date, Height, Eye Color, Class, Teacher, Phone, Address, Blood Type, Favorite Subject...*

Profesorul intervine: *"Excelent! În lumea reală am putea avea 30 de coloane. Dar în ingineria software, începem întotdeauna cu structura de bază esențială. Să păstrăm pentru început doar: `first_name`, `last_name` și `birth_date`."*

#### Scrierea Codului T-SQL Pas cu Pas în OneCompiler:

Fiecare elev tastează în OneCompiler comanda de creare a tabelului:

```sql
-- 1. Crearea tabelului initial de studenti
CREATE TABLE Students (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
);

-- 2. Inserarea primilor 3 studenti
INSERT INTO Students (first_name, last_name, birth_date)
VALUES 
    ('Ion', 'Popescu', '2010-04-12'),
    ('Elena', 'Ceban', '2011-09-23'),
    ('Mihai', 'Rusu', '2010-11-05');

-- 3. Afisarea datelor din tabel
SELECT * FROM Students;
```

Elevii apasă butonul verde **Run** și văd rezultatul tabelar afișat în consolă.

---

### Etapa 4: Dilema Duplicatelor, IDNP & Cheia Primară (Primary Key) (00:55 – 01:15)

Profesorul propune un experiment:
*"Să presupunem că la școala noastră se transferă un nou elev care are exact același nume și prenume."*

Se adaugă următoarea linie în cod:

```sql
-- Inseram un alt elev cu acelasi nume si prenume
INSERT INTO Students (first_name, last_name, birth_date)
VALUES ('Ion', 'Popescu', '2010-04-12');

SELECT * FROM Students;
```

#### Întrebare Provocatoare pentru Elevi:
*"Priviți tabelul! Avem doi elevi numiți `Ion Popescu`, ambii născuți pe `2010-04-12`. Dacă unul dintre ei primește o bursă de merit sau o absență, cum știe baza de date cărui elev trebuie să îi atribuim bursa?"*

Elevii răspund: *"Nu avem cum să știm! Se creează confuzie!"*

#### Analogia din Viața Reală: IDNP-ul
Profesorul explică:
*"În Republica Moldova există mii de oameni numiți Ion Popescu. Cum îi deosebește statul, banca sau spitalul? Printr-un număr unic din 13 cifre numit **IDNP** (sau SSN / CNP în alte țări). Niciun alt cetățean nu poate avea același IDNP."*

În bazele de date, acest identificator unic se numește **Primary Key (Cheie Primară)**.
- **Regulă**: O cheie primară trebuie să fie **unică** pentru fiecare rând și nu poate fi niciodată lăsată goală (`NOT NULL`).

#### Refacerea Tabelului cu Coloana `student_id`:

Elevii modifică codul în OneCompiler, adăugând coloana de identificare:

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
    (104, 'Ion', 'Popescu', '2010-04-12'); -- Acum este clar ca este elevul cu ID 104!

SELECT * FROM Students;
```

*(Notă pedagogică: În această primă lecție introducem conceptul logic de Primary Key ca identificator unic prin coloana `student_id`, fără a complica sintaxa cu constrângeri avansate `PRIMARY KEY CONSTRAINT`, pe care le vom aprofunda în lecțiile următoare).*

---

### Etapa 5: Dependențe Tranzitive & Împărțirea în 2 Tabele (Foreign Key) (01:15 – 01:40)

Profesorul complică structura tabelului:
*"Să adăugăm acum informații despre clasa elevului: denumirea clasei, profilul și dirigintele."*

```sql
CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    class_name VARCHAR(10),
    profile_name VARCHAR(30),
    class_master VARCHAR(50)
);

INSERT INTO Students (student_id, first_name, last_name, birth_date, class_name, profile_name, class_master)
VALUES 
    (101, 'Ion', 'Popescu', '2010-04-12', '10-A', 'Real', 'Prof. Vasile Lungu'),
    (102, 'Elena', 'Ceban', '2011-09-23', '10-A', 'Real', 'Prof. Vasile Lungu'),
    (103, 'Mihai', 'Rusu', '2010-11-05', '10-B', 'Uman', 'Prof. Maria Dabija'),
    (104, 'Ana', 'Sirbu', '2010-08-19', '10-A', 'Real', 'Prof. Vasile Lungu');

SELECT * FROM Students;
```

#### Ce Probleme Grave Apar în Acest Tabel? (Dezbatere Didactică)
Profesorul evidențiază 3 probleme majore:
1. **Redundanță Masivă (Risipă de Spațiu)**: Dacă clasa 10-A are 35 de elevi, scriem de 35 de ori `'10-A'`, `'Real'` și `'Prof. Vasile Lungu'`.
2. **Anomalia de Modificare (Update Anomaly)**: Dacă domnul profesor Vasile Lungu se pensionează și vine o altă dirigintă, trebuie să modificăm 35 de rânduri! Dacă uităm un rând, baza de date devine coruptă și contradictorie.
3. **Dependența Tranzitivă (Transitive Dependency)**:
   - `student_id` $\rightarrow$ determină elevul (`first_name`, `last_name`, `birth_date`).
   - Dar `profile_name` și `class_master` depind de **`class_name`**, nu direct de elev! Faptul că dirigintele clasei 10-A este Vasile Lungu este o proprietate a clasei, nu a elevului Ion Popescu.

#### Soluția Inginerească: Împărțirea în 2 Tabele Relaționate!

Profesorul explică cum rezolvăm problema: creăm un tabel separat pentru `Classes` și un tabel pentru `Students`, legate printr-o **Foreign Key (Cheie Străină)**.

```sql
-- 1. Cream tabelul Classes (Parinte)
CREATE TABLE Classes (
    class_id INT,
    class_name VARCHAR(10),
    profile_name VARCHAR(30),
    class_master VARCHAR(50)
);

-- 3. Inseram clasele o singura data!
INSERT INTO Classes (class_id, class_name, profile_name, class_master)
VALUES 
    (1, '10-A', 'Real', 'Prof. Vasile Lungu'),
    (2, '10-B', 'Uman', 'Prof. Maria Dabija');

-- 4. Cream tabelul Students (Copil) continand class_id ca Foreign Key
CREATE TABLE Students (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    class_id INT -- Aceasta este Cheia Straina (Foreign Key) catre tabelul Classes!
);

-- 5. Inseram elevii facand referire doar la class_id
INSERT INTO Students (student_id, first_name, last_name, birth_date, class_id)
VALUES 
    (101, 'Ion', 'Popescu', '2010-04-12', 1),
    (102, 'Elena', 'Ceban', '2011-09-23', 1),
    (103, 'Mihai', 'Rusu', '2010-11-05', 2),
    (104, 'Ana', 'Sirbu', '2010-08-19', 1);

-- 6. Afisam ambele tabele
SELECT * FROM Classes;
SELECT * FROM Students;
```

#### Concluzie Cheie:
- **`Classes.class_id`** este **Primary Key** în tabelul `Classes`.
- **`Students.class_id`** este **Foreign Key** în tabelul `Students`.
- Dacă dirigintele clasei 10-A se schimbă, modificăm **un singur rând** în tabelul `Classes`, iar toți elevii au automat datele corecte!

---

### Etapa 6: Sarcina Individuală & Mini-Quiz de Verificare (01:40 – 02:00)

#### Sarcina Practică Individuală (OneCompiler):
Fiecare elev are la dispoziție 10 minute pentru a modela o mini-bază de date pentru o librărie:
1. Creează tabelul `Authors` cu coloanele: `author_id (INT)`, `author_name (VARCHAR(50))`, `country (VARCHAR(30))`.
2. Creează tabelul `Books` cu coloanele: `book_id (INT)`, `title (VARCHAR(100))`, `price (DECIMAL(6,2))`, `author_id (INT)`.
3. Inserează 2 autori și 3 cărți legate de acei autori prin `author_id`.
4. Rulează comanda `SELECT *` pentru ambele tabele.

---

## 5. Mini-Quiz Certiport ITS Databases (Verificare Teoretică)

Profesorul proiectează întrebările pe ecran, iar elevii răspund individual pe caiete sau prin ridicare de mâini:

---

### Întrebarea 1
Ce reprezintă un rând (**Row / Record**) într-un tabel relațional?
- A) Numele unei coloane
- B) O singură instanță/înregistrare de date complete *(Corect)*
- C) O formulă matematică
- D) Tipul de date al tabelului
> **Explicație**: Un rând conține toate datele individuale despre o singură entitate (de exemplu, un singur elev).

---

### Întrebarea 2
Care dintre următoarele tipuri de date T-SQL este cel mai potrivit pentru stocarea prețului unui produs (ex. `149.99`)?
- A) `BIT`
- B) `VARCHAR(10)`
- C) `DECIMAL(10, 2)` *(Corect)*
- D) `INT`
> **Explicație**: `DECIMAL(p, s)` oferă precizie exactă pentru valori financiare și zecimale, unde `s` reprezintă numărul de zecimale.

---

### Întrebarea 3
Ce tip de date stochează exclusiv valori binare de tip `1` (True) sau `0` (False)?
- A) `INT`
- B) `BIT` *(Corect)*
- C) `TIME`
- D) `DATE`
> **Explicație**: Tipul `BIT` ocupă 1 bit și stochează valorile logice 1 sau 0 (adevărat sau fals).

---

### Întrebarea 4
Cum se scriu corect valorile de tip text (`VARCHAR`) și dată (`DATE`) în instrucțiunile T-SQL?
- A) Între paranteze rotunde `(Ion)`
- B) Între ghilimele simple `'Ion'` *(Corect)*
- C) Fără niciun semn `Ion`
- D) Între paranteze drepte `[Ion]`
> **Explicație**: În standardul SQL, șirurile de caractere și datele calendaristice sunt delimitate strict prin ghilimele simple `'...'`.

---

### Întrebarea 5
Care este rolul principal al unei chei primare (**Primary Key**)?
- A) Să coloreze tabelul
- B) Să identifice în mod unic fiecare rând *(Corect)*
- C) Să șteargă datele vechi
- D) Să mărească viteza internetului
> **Explicație**: Primary Key garantează că fiecare rând dintr-un tabel poate fi identificat unic și fără ambiguitate (ca IDNP-ul).

---

### Întrebarea 6
Ce este o cheie străină (**Foreign Key**)?
- A) O parolă de administrator
- B) O coloană care face referință la cheia primară a altui tabel *(Corect)*
- C) O cheie dintr-o altă țară
- D) Un tabel fără coloane
> **Explicație**: O Foreign Key creează relația dintre două tabele, indicând spre Primary Key-ul din tabelul părinte.

---

### Întrebarea 7
Ce problemă apare atunci când stocăm numele dirigintelui de 30 de ori în tabelul cu elevi?
- A) Baza de date devine mai rapidă
- B) Redundanță de date și risc de neconcordanță la modificare *(Corect)*
- C) Codul T-SQL dă eroare de compilare
- D) Se șterg automat elevii
> **Explicație**: Repetarea inutilă a datelor (redundanța) consumă spațiu și duce la anomalii de actualizare dacă datele se modifică într-un singur loc.

---

### Întrebarea 8
De ce separăm informațiile despre `Students` și `Classes` în două tabele distincte?
- A) Pentru a elimina dependențele tranzitive și redundanța *(Corect)*
- B) Pentru că SQL permite maxim 3 coloane per tabel
- C) Pentru a ascunde datele elevilor
- D) Pentru că OneCompiler nu suportă un singur tabel
> **Explicație**: Separarea entităților independente în tabele relaționate prin chei reprezintă fundamentul normalizării și al arhitecturii relaționale.
