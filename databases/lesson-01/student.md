# Fișă Recapitulativă: Lecția 01 [DB1.1]
## Introducere în Baze de Date Relaționale, Tipuri de Date & Chei în T-SQL

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **RDBMS vs. Excel**: Folosim baze de date relaționale când avem volum mare de date, utilizatori simultani (*concurență*) și nevoie strictă de securitate și integritate.
- **SQL & T-SQL**: SQL este limbajul standard declarativ; T-SQL (Transact-SQL) este dialectul Microsoft SQL Server cerut la examenul **Certiport ITS: Databases**.
- **Anatomia unui tabel**:
  - **Tabel (Table)** = colecție de date despre o entitate (ex. `Students`).
  - **Rând (Row / Tuple)** = o singură înregistrare completă.
  - **Coloană (Column / Field)** = o proprietate specifică (ex. `first_name`).
- **Primary Key (PK)**: Identificator unic obligatoriu pentru fiecare rând (analogia IDNP). Nu poate avea duplicate și nu poate fi lăsat gol (`NOT NULL`).
- **Foreign Key (FK)**: Coloană într-un tabel copil ce face referință la cheia primară a unui tabel părinte. Elimină redundanța și anomaliile de modificare.

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Exemplu practic |
| :--- | :--- | :--- |
| **RDBMS** | Sistem de gestiune a bazelor de date relaționale | Microsoft SQL Server |
| **Primary Key (PK)** | Identificator unic al fiecărui rând dintr-un tabel | `student_id` |
| **Foreign Key (FK)** | Coloană ce leagă tabelul copil de tabelul părinte | `Students.class_id` |
| **Data Type** | Tipul de valoare permis pe o coloană | `INT`, `VARCHAR(50)` |
| **Redundancy** | Repetarea inutilă a acelorași date în tabel | Numele dirigintelui scris de 30 de ori |
| **Tuple** | Denumirea formală / academică pentru un rând | Un rând de date despre un elev |

---

### 🔢 3. Tipurile Fundamentale de Date în T-SQL

- **`INT`**: Număr întreg fără zecimale (`1`, `105`, `-10`).
- **`DECIMAL(p, s)`**: Număr exact cu zecimale; `p` = total cifre, `s` = zecimale (`9.75`, `149.99`). Recomandat pentru note și prețuri.
- **`BIT`**: Valoare logică binară (`1` = True, `0` = False).
- **`VARCHAR(n)`**: Text de lungime variabilă, până la `n` caractere (`'Ion Popescu'`).
- **`DATE`**: Dată calendaristică în formatul standard `'YYYY-MM-DD'` (`'2010-04-12'`).
- **`DATETIME`**: Dată + oră precisă (`'2026-10-11 14:30:00'`).

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- 1. Crearea a doua tabele relationate (Parinte -> Copil)
CREATE TABLE Classes (
    class_id INT,
    class_name VARCHAR(10),
    class_master VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT,           -- Primary Key (logic)
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    class_id INT              -- Foreign Key (face legatura cu Classes)
);

-- 2. Inserarea datelor
INSERT INTO Classes (class_id, class_name, class_master)
VALUES (1, '10-A', 'Prof. Lungu');

INSERT INTO Students (student_id, first_name, last_name, birth_date, class_id)
VALUES (101, 'Ion', 'Popescu', '2010-04-12', 1);

-- 3. Vizualizarea datelor
SELECT * FROM Classes;
SELECT * FROM Students;
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Ghilimele simple obligatorii**: Textele (`VARCHAR`) și datele (`DATE`) se scriu întotdeauna între ghilimele simple: `'Ion'`, `'2010-04-12'`. Numerele se scriu direct: `100`, `9.50`.
- **PK vs. FK**: Cheia primară este **unică** în tabelul ei. Cheia străină **poate conține duplicate** (mai mulți elevi sunt în aceeași clasă).
- **Formatul datei**: Folosește întotdeauna formatul internațional ISO `'YYYY-MM-DD'` pentru a evita erorile de sistem.
