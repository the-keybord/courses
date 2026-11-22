# Lecția 10 [DB1.10]: Normalizarea Practică a Bazelor de Date (1NF & 3NF) – Focus Strict pe Reguli & Diagnoză

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.10
- **Modul**: Modelarea Datelor, Normalizare & Arhitecturi Relaționale
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Examen Certiport ITS Databases & BAC)
- **Durată Totală**: 120 minute (2 ore)
- **Mediu de Lucru Practic**: **OneCompiler** (T-SQL / Microsoft SQL Server)
- **Aliniere Certiport ITS Databases**:
  - Obiectivul 1.2: Înțelegerea conceptelor de normalizare (First Normal Form - 1NF, Third Normal Form - 3NF).
  - Obiectivul 1.3: Eliminarea redundanței și prevenirea anomaliilor de inserare (*Insert*), actualizare (*Update*) și ștergere (*Delete*).
  - Obiectivul 2.1: Proiectarea tabelelor relaționate prin `PRIMARY KEY` și `FOREIGN KEY`.
- **Format Didactic**: 100% Practică și Diagnoză Tehnică. Teorie minimă: menționarea celor 5+ forme normale, definirea strictă a celor 4 reguli 1NF și a regulii 3NF, urmată de analiza unui tabel didactic brut și refactorizarea lui în OneCompiler. În partea a doua, elevii diagnostichează și rezolvă 4 tabele defectuoase din scenarii reale.

### Întrebări Esențiale:
1. Care sunt cele 4 reguli stricte ale Formei Normale 1 (1NF)?
2. Ce regulă este încălcată dacă stocăm notele sub forma `'10, 8, 9, 5'` într-o singură celulă?
3. De ce crearea coloanelor seriale `grade_1, grade_2, grade_3` încalcă regula grupurilor repetitive din 1NF?
4. Cum identificăm o dependență tranzitivă ce încalcă Forma Normală 3 (3NF)?
5. Cum elimină crearea unui tabel părinte `Classes` anomaliile de actualizare pe diriginți?

### 🔗 Resurse & Linkuri Utile
- **Compilator Online T-SQL (OneCompiler)**: https://onecompiler.com/sqlserver
- **Fișa de Sinteză a Elevului**: [`student.md`](student.md)
- **Test Kahoot Import**: [`quiz.xlsx`](quiz.xlsx)

---

## 2. Pregătirea Lecției (Checklist Profesor)

- [ ] Mediul OneCompiler verificat (motorul T-SQL / SQL Server activat).
- [ ] Scriptul inițial `StudentsRaw` pregătit pentru proiectare la tablă.
- [ ] Fișierul `student.md` partajat cu elevii pentru consultarea rapidă a definițiilor.
- [ ] Foaia de calcul `quiz.xlsx` importată în contul Kahoot pentru evaluarea finală.

---

## 3. Planul de Desfășurare (Timeline 120 min)

| Interval | Etapă | Activitate Principală |
| :---: | :--- | :--- |
| **00:00 – 00:15** | **1. Enunțarea Regulilor Formale (1NF & 3NF)** | Menționarea celor 5+ forme normale (fără teorii abstracte). Formularea strictă a celor 4 reguli 1NF și a regulii 3NF. |
| **00:15 – 00:45** | **2. Diagnoza Tabelului Brut `StudentsRaw` & Refactorizare** | Prezentarea tabelului cu elevi. Identificarea punctuală a fiecărei reguli încălcate. Scrierea schemei corectate în T-SQL (`Classes`, `Students`, `Grades`). |
| **00:45 – 01:45** | **3. Atelier Practic: 4 Scenarii Reale de Diagnoză** | Elevii primesc 4 tabele brute (Clinică, E-Commerce, Bibliotecă, Flotă Auto). Identifică exact regulile încălcate și scriu scriptul T-SQL normalizat. |
| **01:45 – 02:00** | **4. Mini-Quiz Certiport ITS & Verificare** | Rularea testului de 10 întrebări din Secțiunea 5 și analiza capcanelor de examen. |

---

## 4. Ghid Didactic Pas cu Pas (Teacher's Master Guide)

### Pasul 1: Enunțarea Regulilor Formale (15 min)

Profesorul deschide sesiunea menționând succint:
*"În informatică există peste 5 forme normale (1NF, 2NF, 3NF, BCNF, 4NF, 5NF, 6NF). În practica industrială și la examenul Certiport ITS Databases, dacă stăpâniți **1NF** și **3NF**, baza de date este curată și protejată. Iată regulile de bază:"*

```text
======================= REGULILE OFICIALE DE NORMALIZARE =======================
1NF - Regula 1: Fiecare celulă conține O SINGURĂ VALOARE (interzis liste separate prin virgulă).
1NF - Regula 2: Fără GRUPURI REPETITIVE de coloane (interzis grade_1, grade_2, grade_3).
1NF - Regula 3: Fiecare rând este UNIC IDENTIFICABIL printr-o Cheie Primară (fără duplicate).
1NF - Regula 4: O coloană are UN SINGUR TIP DE DATE în același format uniform.

3NF - Regula:   Toate coloanele non-cheie depind EXCLUSIV de Cheia Primară.
                Interzise dependențele tranzitive (A -> B între coloane non-cheie).
================================================================================
```

---

### Pasul 2: Diagnoza Tabelului Brut `StudentsRaw` & Refactorizare (30 min)

Se proiectează următorul tabel brut:

```sql
-- TABEL BRUT NE-NORMALIZAT
CREATE TABLE StudentsRaw (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date VARCHAR(50),
    class VARCHAR(10),
    profile VARCHAR(20),
    diriginte VARCHAR(50),
    grades VARCHAR(100)
);

INSERT INTO StudentsRaw VALUES 
('Ion', 'Popescu', '15.05.2007', '10-A', 'Real', 'Moraru', '10, 8, 9, 5'),
('Ion', 'Popescu', '15.05.2007', '10-A', 'Real', 'Moraru', '10, 8, 9, 5'), -- RAND DUPLICAT
('Elena', 'Radu', '2007-11-20', '10-A', 'Real', 'Moraru', '9, 10'),
('Dan', 'Vasile', '12 mai 2006', '11-B', 'Uman', 'Ceban', '7, 8, 6');
```

#### Lista Strictă a Încălcărilor:
- ❌ **Încălcare 1NF - Regula 1 (Valori Atomice)**: Coloana `grades` conține `'10, 8, 9, 5'` în aceeași celulă. Funcția `AVG()` eșuează.
- ❌ **Încălcare 1NF - Regula 2 (Grupuri Repetitive)**: Dacă am crea coloane `grade_1, grade_2, grade_3`, încălcăm regula grupurilor repetitive (risipă de `NULL`-uri când un elev are 2 note și altul 15).
- ❌ **Încălcare 1NF - Regula 3 (Cheie Primară)**: Rândul lui Ion Popescu este duplicat 100%. Nu există o cheie primară (`PRIMARY KEY`).
- ❌ **Încălcare 1NF - Regula 4 (Format / Tip de Date)**: Coloana `birth_date` amestecă text liber (`'12 mai 2006'`), format cu puncte (`'15.05.2007'`) și format ISO (`'2007-11-20'`).
- ❌ **Încălcare 3NF (Dependență Tranzitivă)**: `class -> profile, diriginte`. Schimbarea dirigintelui clasei 10-A impune modificarea a zeci de rânduri (Update Anomaly). Nu putem adăuga o clasă fără elevi (Insert Anomaly). Ștergerea ultimului elev din 11-B șterge și clasa (Delete Anomaly).

#### Soluția T-SQL Minimală (Schema Normalizată 1NF + 3NF):

```sql
-- 1. Eliminare dependenta tranzitiva (Rezolva 3NF)
CREATE TABLE Classes (
    class_id INT IDENTITY PRIMARY KEY,
    class_name VARCHAR(10) UNIQUE NOT NULL,
    profile VARCHAR(20) NOT NULL,
    diriginte VARCHAR(50) NOT NULL
);

-- 2. Entitatea de baza (Rezolva 1NF Regula 3 si 4)
CREATE TABLE Students (
    student_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    class_id INT NOT NULL FOREIGN KEY REFERENCES Classes(class_id)
);

-- 3. Entitatea copil pentru note (Rezolva 1NF Regula 1 si 2)
CREATE TABLE Grades (
    grade_id INT IDENTITY PRIMARY KEY,
    student_id INT NOT NULL FOREIGN KEY REFERENCES Students(student_id),
    grade INT NOT NULL CHECK (grade BETWEEN 1 AND 10)
);

-- Inserare date curate
INSERT INTO Classes VALUES ('10-A', 'Real', 'Moraru'), ('11-B', 'Uman', 'Ceban');
INSERT INTO Students VALUES ('Ion', 'Popescu', '2007-05-15', 1), ('Elena', 'Radu', '2007-11-20', 1), ('Dan', 'Vasile', '2006-05-12', 2);
INSERT INTO Grades VALUES (1, 10), (1, 8), (1, 9), (1, 5), (2, 9), (2, 10), (3, 7), (3, 8), (3, 6);
```

---

### Pasul 3: Atelier Practic – 4 Scenarii Reale de Diagnoză (60 min)

Elevii analizează cele 4 tabele brute de mai jos, notează exact ce reguli sunt încălcate și scriu scriptul T-SQL corectat.

---

#### Scenariul 1: Clinica Medicală (`AppointmentsRaw`)

**Tabelul Brut:**

| patient_name | birth_date | doctor | specialty | cabinet | medicines |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Ion Crețu | 14.02.1985 | Dr. Rusu | Cardiologie | 204 | Aspirina, Betaloc |
| Ion Crețu | 14.02.1985 | Dr. Rusu | Cardiologie | 204 | Aspirina, Betaloc |
| Maria Albu | 1992-06-10 | Dr. Rusu | Cardiologie | 204 | Nospa |
| Radu Sirbu | 5 iulie 1978 | Dr. Cojocaru | Neurologie | 108 | Magne B6 |

**Diagnoza Încălcărilor:**
- ❌ `1NF - Regula 1`: Coloana `medicines` conține valori multiple comasate cu virgulă.
- ❌ `1NF - Regula 3`: Rândul lui Ion Crețu este duplicat. Lipsă `PRIMARY KEY`.
- ❌ `1NF - Regula 4`: `birth_date` are formate mixte (text, punct, ISO).
- ❌ `3NF`: Dependență tranzitivă `doctor -> specialty, cabinet`.

**Soluția T-SQL Corectată:**
```sql
CREATE TABLE Doctors (
    doctor_id INT IDENTITY PRIMARY KEY,
    doctor_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(50) NOT NULL,
    cabinet INT NOT NULL
);

CREATE TABLE Patients (
    patient_id INT IDENTITY PRIMARY KEY,
    patient_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE Appointments (
    appointment_id INT IDENTITY PRIMARY KEY,
    patient_id INT NOT NULL FOREIGN KEY REFERENCES Patients(patient_id),
    doctor_id INT NOT NULL FOREIGN KEY REFERENCES Doctors(doctor_id),
    appointment_date DATE NOT NULL
);

CREATE TABLE Prescriptions (
    prescription_id INT IDENTITY PRIMARY KEY,
    appointment_id INT NOT NULL FOREIGN KEY REFERENCES Appointments(appointment_id),
    medicine_name VARCHAR(50) NOT NULL
);
```

---

#### Scenariul 2: Comenzi Magazin Online (`OrdersRaw`)

**Tabelul Brut:**

| customer | city | order_date | products | supplier | supplier_phone |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Tech SRL | Chișinău | 2026-03-01 | Mouse, Tastatură | IT Distro | 022112233 |
| Tech SRL | Chișinău | 2026-03-01 | Mouse, Tastatură | IT Distro | 022112233 |
| Agro Vest | Bălți | 05.03.2026 | Monitor | ProDisplay | 023144556 |
| Auto Start | Cahul | 12 martie | Imprimantă, Toner | IT Distro | 022112233 |

**Diagnoza Încălcărilor:**
- ❌ `1NF - Regula 1`: Coloana `products` conține produse comasate cu virgulă.
- ❌ `1NF - Regula 3`: Lipsă `PRIMARY KEY`, rândul Tech SRL apare duplicat.
- ❌ `1NF - Regula 4`: `order_date` conține text `'12 martie'` și formate invalide.
- ❌ `3NF`: Dependență tranzitivă `supplier -> supplier_phone`.

**Soluția T-SQL Corectată:**
```sql
CREATE TABLE Suppliers (
    supplier_id INT IDENTITY PRIMARY KEY,
    supplier_name VARCHAR(50) NOT NULL,
    supplier_phone VARCHAR(20) NOT NULL
);

CREATE TABLE Products (
    product_id INT IDENTITY PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    supplier_id INT NOT NULL FOREIGN KEY REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Customers (
    customer_id INT IDENTITY PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE Orders (
    order_id INT IDENTITY PRIMARY KEY,
    customer_id INT NOT NULL FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE NOT NULL
);

CREATE TABLE OrderItems (
    order_item_id INT IDENTITY PRIMARY KEY,
    order_id INT NOT NULL FOREIGN KEY REFERENCES Orders(order_id),
    product_id INT NOT NULL FOREIGN KEY REFERENCES Products(product_id)
);
```

---

#### Scenariul 3: Biblioteca Municipală (`BookLoansRaw`)

**Tabelul Brut:**

| reader | phone_1 | phone_2 | book_title | author | author_country | loan_date |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Ana Morari | 069111222 | 079333444 | Poezii | Eminescu | România | 2026-02-10 |
| Ana Morari | 069111222 | 079333444 | Poezii | Eminescu | România | 2026-02-10 |
| Dan Lupu | 068555666 | NULL | Amintiri | Creangă | România | 2026-02-11 |
| Vlad Cazacu | NULL | NULL | Moromeții | Preda | România | 2026-02-15 |

**Diagnoza Încălcărilor:**
- ❌ `1NF - Regula 2`: Coloanele `phone_1, phone_2` reprezintă un grup repetitiv artificial.
- ❌ `1NF - Regula 3`: Lipsă `PRIMARY KEY`, duplicate prezente.
- ❌ `3NF`: Dependență tranzitivă `author -> author_country`.

**Soluția T-SQL Corectată:**
```sql
CREATE TABLE Authors (
    author_id INT IDENTITY PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL,
    author_country VARCHAR(50) NOT NULL
);

CREATE TABLE Books (
    book_id INT IDENTITY PRIMARY KEY,
    book_title VARCHAR(100) NOT NULL,
    author_id INT NOT NULL FOREIGN KEY REFERENCES Authors(author_id)
);

CREATE TABLE Readers (
    reader_id INT IDENTITY PRIMARY KEY,
    reader_name VARCHAR(100) NOT NULL
);

CREATE TABLE ReaderPhones (
    phone_id INT IDENTITY PRIMARY KEY,
    reader_id INT NOT NULL FOREIGN KEY REFERENCES Readers(reader_id),
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE BookLoans (
    loan_id INT IDENTITY PRIMARY KEY,
    reader_id INT NOT NULL FOREIGN KEY REFERENCES Readers(reader_id),
    book_id INT NOT NULL FOREIGN KEY REFERENCES Books(book_id),
    loan_date DATE NOT NULL
);
```

---

#### Scenariul 4: Flotă Auto & Transport (`TripsRaw`)

**Tabelul Brut:**

| driver | trip_date | car_plate | car_model | manufacturer | country | cargo |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Vasile Grosu | 2026-01-10 | C-AA-101 | Sprinter | Mercedes | Germania | 150kg, 200kg |
| Vasile Grosu | 2026-01-10 | C-AA-101 | Sprinter | Mercedes | Germania | 150kg, 200kg |
| Igor Sandu | 2026-01-11 | B-XX-555 | Transit | Ford | SUA | 500kg |
| Mihai Rotaru | 2026-01-12 | C-AA-101 | Sprinter | Mercedes | Germania | 80kg, 120kg |

**Diagnoza Încălcărilor:**
- ❌ `1NF - Regula 1`: Coloana `cargo` conține pachete multiple comasate.
- ❌ `1NF - Regula 3`: Lipsă `PRIMARY KEY`, rânduri duplicate.
- ❌ `3NF`: Dependență tranzitivă în lanț `car_plate -> car_model -> manufacturer -> country`.

**Soluția T-SQL Corectată:**
```sql
CREATE TABLE Manufacturers (
    manufacturer_id INT IDENTITY PRIMARY KEY,
    manufacturer_name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL
);

CREATE TABLE Vehicles (
    vehicle_id INT IDENTITY PRIMARY KEY,
    car_plate VARCHAR(20) UNIQUE NOT NULL,
    car_model VARCHAR(50) NOT NULL,
    manufacturer_id INT NOT NULL FOREIGN KEY REFERENCES Manufacturers(manufacturer_id)
);

CREATE TABLE Drivers (
    driver_id INT IDENTITY PRIMARY KEY,
    driver_name VARCHAR(100) NOT NULL
);

CREATE TABLE Trips (
    trip_id INT IDENTITY PRIMARY KEY,
    driver_id INT NOT NULL FOREIGN KEY REFERENCES Drivers(driver_id),
    vehicle_id INT NOT NULL FOREIGN KEY REFERENCES Vehicles(vehicle_id),
    trip_date DATE NOT NULL
);

CREATE TABLE CargoItems (
    cargo_id INT IDENTITY PRIMARY KEY,
    trip_id INT NOT NULL FOREIGN KEY REFERENCES Trips(trip_id),
    cargo_weight_kg INT NOT NULL
);
```

---

### Pasul 4: Mini-Quiz Certiport ITS (15 min)

---

## 5. Mini-Quiz Certiport ITS (10 Întrebări de Certificare)

### Întrebarea 1
Câte forme normale există recunoscute în teoria generală a bazelor de date relaționale?
- A) Peste 5 forme *(Corect)*
- B) Exact o formă
- C) Doar 2 forme
- D) Niciuna definită
> **Explicație**: Teoria definește peste 5 forme normale (1NF, 2NF, 3NF, BCNF, 4NF, 5NF, 6NF), însă în practica industrială 1NF și 3NF sunt cele fundamentale.

---

### Întrebarea 2
Ce regulă din 1NF este încălcată când stocăm '10, 8, 9, 5' într-o singură căsuță?
- A) Regula valorilor atomice *(Corect)*
- B) Regula cheii străine
- C) Regula ordonării crescătoare
- D) Regula literelor mari
> **Explicație**: Regula 1 din 1NF impune ca fiecare celulă să conțină o singură valoare atomică scalară, fără liste separate prin virgulă.

---

### Întrebarea 3
De ce adăugarea coloanelor seriale grade_1, grade_2, grade_3 încalcă 1NF?
- A) Creează grupuri repetitive *(Corect)*
- B) Ocupă puțin spațiu
- C) Permite sortare rapidă
- D) Previne valorile nule
> **Explicație**: Regula 2 din 1NF interzice grupurile repetitive de coloane (*repeating groups*); notele trebuie stocate ca rânduri într-un tabel dedicat.

---

### Întrebarea 4
Ce element este strict obligatoriu pentru ca un tabel să respecte Regula 3 a 1NF?
- A) Cheie primară unică *(Corect)*
- B) Două chei străine
- C) Procedură stocată activă
- D) Minim zece coloane
> **Explicație**: Regula 3 cere ca fiecare rând să fie unic identificabil prin intermediul unei chei primare (`PRIMARY KEY`), fără rânduri duplicate.

---

### Întrebarea 5
Ce încălcare apare dacă o coloană birth_date stochează '15.05.2007' și '12 mai 2006'?
- A) Tipuri date inconsistente *(Corect)*
- B) Tabelul se blochează
- C) Cheia primară dispare
- D) Se șterg înregistrările
> **Explicație**: Regula 4 din 1NF impune un format și un tip de date consistent pe întreaga coloană.

---

### Întrebarea 6
Ce reprezintă o dependență tranzitivă care încalcă Forma Normală 3 (3NF)?
- A) Dependență între non-chei *(Corect)*
- B) Legătură prin cablu
- C) Interogare fără clauză
- D) Cădere de tensiune
> **Explicație**: În 3NF, o coloană non-cheie nu are voie să depindă de o altă coloană non-cheie (cum este `class -> profile, diriginte`).

---

### Întrebarea 7
Ce este o anomalie de actualizare (Update Anomaly)?
- A) Modificare redundantă multiplă *(Corect)*
- B) Ștergerea întregii baze
- C) Schimbarea parolei server
- D) Oprirea conexiunii rețea
> **Explicație**: Modificarea unui diriginte pe 35 de rânduri poate crea date contradictorii dacă un singur rând este omis.

---

### Întrebarea 8
Ce problemă descrie o anomalie de inserare (Insert Anomaly)?
- A) Imposibilitate adăugare entitate *(Corect)*
- B) Viteza crește dublu
- C) Se generează erori
- D) Baza devine read-only
> **Explicație**: Nu putem introduce o clasă nouă dacă nu avem încă niciun elev înscris în ea.

---

### Întrebarea 9
Cum se rezolvă încălcarea 3NF generată de coloanele clasei și dirigintelui?
- A) Tabel separat Classes *(Corect)*
- B) Ștergerea tuturor claselor
- C) Adăugare coloane text
- D) Unirea prin virgulă
> **Explicație**: Datele clasei se mută într-un tabel părinte `Classes`, iar în `Students` se păstrează doar cheia `class_id`.

---

### Întrebarea 10
De ce este obligatoriu să aducem un tabel în 1NF înainte de a rezolva 3NF?
- A) 3NF cere 1NF *(Corect)*
- B) Se blochează serverul
- C) Dispare cheia primară
- D) Nu permite T-SQL
> **Explicație**: Formele normale sunt ierarhice: nu poți atinge 3NF dacă tabelul conține încă liste ne-atomice sau grupuri repetitive din 1NF.
