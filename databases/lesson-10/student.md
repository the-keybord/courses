# Fișă de Sinteză: Normalizarea Bazelor de Date (1NF & 3NF) [DB1.10]

---

## 1. Regulile Oficiale de Normalizare (De Memorat pentru Certiport)

```text
1NF - Regula 1: Valori unice per celulă (Fără liste separate prin virgulă).
1NF - Regula 2: Fără grupuri repetitive de coloane (Interzis grade_1, grade_2, grade_3).
1NF - Regula 3: Cheie Primară obligatorie (Fiecare rând este unic, fără duplicate).
1NF - Regula 4: Tip de date consistent pe fiecare coloană (Fără amestec de text și date).

3NF - Regula:   Toate coloanele non-cheie depind EXCLUSIV de Cheia Primară.
                Interzise dependențele tranzitive (Coloana A -> Coloana B).
```

---

## 2. Diagnoza Rapidă a Încălcărilor

| Ce vezi în tabel? | Ce regulă este încălcată? | Cum o repari în T-SQL? |
| :--- | :--- | :--- |
| Celulă cu `'10, 8, 9, 5'` | ❌ **1NF - Regula 1 (Valori Atomice)** | Tabel separat copil (`Grades`) cu 1 rând per notă |
| Coloane `phone_1, phone_2` | ❌ **1NF - Regula 2 (Grupuri Repetitive)** | Tabel separat de telefoane (`ReaderPhones`) |
| Rânduri identice fără ID | ❌ **1NF - Regula 3 (Primary Key)** | Adaugi `student_id INT IDENTITY PRIMARY KEY` |
| Coloană dată cu text `'12 mai'` | ❌ **1NF - Regula 4 (Tip Consistent)** | Setezi tipul strict `DATE` în format `YYYY-MM-DD` |
| `class -> profile, diriginte` | ❌ **3NF (Dependență Tranzitivă)** | Tabel separat părinte (`Classes`) legat prin FK |

---

## 3. Schema Curată Normalizată (Modelul de Referință)

```sql
-- 1. Tabel Parinte (Rezolva 3NF)
CREATE TABLE Classes (
    class_id INT IDENTITY PRIMARY KEY,
    class_name VARCHAR(10) UNIQUE NOT NULL,
    profile VARCHAR(20) NOT NULL,
    diriginte VARCHAR(50) NOT NULL
);

-- 2. Tabel Principal (Rezolva 1NF Regula 3 si 4)
CREATE TABLE Students (
    student_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    class_id INT NOT NULL FOREIGN KEY REFERENCES Classes(class_id)
);

-- 3. Tabel Copil (Rezolva 1NF Regula 1 si 2)
CREATE TABLE Grades (
    grade_id INT IDENTITY PRIMARY KEY,
    student_id INT NOT NULL FOREIGN KEY REFERENCES Students(student_id),
    grade INT NOT NULL CHECK (grade BETWEEN 1 AND 10)
);
```

---

## 4. Cele 3 Anomalii Relaționale (Încălcarea 3NF)

1. **Update Anomaly**: Dacă dirigintele clasei 10-A se schimbă, trebuie să modifici zeci de rânduri de elevi. Dacă uiți unul, baza devine coruptă.
2. **Insert Anomaly**: Nu poți adăuga în sistem o clasă nouă dacă nu ai încă niciun elev înscris în ea.
3. **Delete Anomaly**: Dacă ștergi ultimul elev dintr-o clasă, pierzi complet datele despre acea clasă și dirigintele ei.
