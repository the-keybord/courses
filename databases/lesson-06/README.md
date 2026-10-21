# Lecția 06 [DB1.6]: Instrumente de Reutilizare a Codului în T-SQL (Views, Stored Procedures & User-Defined Functions)

---

## 1. Informații Generale & Obiective Certiport

- **Cod Lecție**: DB1.6
- **Modul**: Obiecte Programabile & Reutilizarea Codului în T-SQL (DDL & Programabilitate)
- **Vârsta Țintă**: 15 – 18 ani (Liceu / Pregătire Certificare Certiport ITS)
- **Durată Totală**: 120 minute (2 ore)
- **Format**: Sesiune tehnică ghidată de profesor, sincronă în OneCompiler: investigarea obiectelor virtuale și programabile din Microsoft SQL Server pentru eliminarea redundanței și securizarea accesului la date. Explorarea vederilor (**Views**) prin trei cazuri fundamentale (securitate și filtrare pe roluri în tabelul `Staff`, simplificarea `JOIN`-urilor complexe în orarul școlar, respectiv izolarea coloanelor calculate fără încălcarea dependențelor tranzitive pe tabelul `Sales`). Trecerea la logica procedurală prin **Stored Procedures** pe exemplul transferurilor bancare atomice în tabelul `Accounts`, urmată de dezvoltarea și testarea **Funcțiilor Definite de Utilizator** (`Scalar Functions`). Sesiunea se încheie cu mini-quizul de certificare Certiport ITS.
- **Mediu de Lucru Practic**: [OneCompiler - SQL Server (T-SQL)](https://onecompiler.com/sqlserver)
- **Aliniere Certiport ITS Databases**:
  - Obiectiv 1.3: Înțelegerea conceptului de **View** (vederi virtuale, ascunderea complexității, securitatea la nivel de coloană și rând, persistența definiției vs datelor).
  - Obiectiv 1.4: Înțelegerea și utilizarea procedurilor stocate (**Stored Procedures** - sintaxa `CREATE PROCEDURE`, parametri de intrare, execuția cu `EXEC`, modularizare și securitate).
  - Obiectiv 1.5: Înțelegerea și utilizarea funcțiilor definite de utilizator (**User-Defined Functions** - sintaxa `CREATE FUNCTION`, diferența structurală și funcțională dintre o Funcție și o Procedură Stocată, utilizarea în clauza `SELECT`).

### Întrebări Esențiale:
1. De ce un `View` este definit drept un „tabel virtual” și unde anume sunt stocate fizic datele afișate de acesta?
2. Cum permite un `View` restricționarea accesului utilizatorilor la coloane confidențiale (parole, salarii) fără duplicarea tabelelor fizice?
3. De ce adăugarea unei coloane fizice calculate (precum `total_price`) într-un tabel încalcă regulile de normalizare (dependențele tranzitive) și cum rezolvă un `View` această problemă?
4. Care este diferența critică de utilizare dintre o Procedură Stocată (`Stored Procedure`) și o Funcție Scalară (`Function`) în interogările T-SQL?
5. De ce o Procedură Stocată se execută prin comanda `EXEC`, în timp ce o Funcție poate fi apelată direct în clauzele `SELECT` sau `WHERE`?

### 🔗 Resurse & Linkuri Utile
- **Mediu de Execuție T-SQL**: https://onecompiler.com/sqlserver
- **Documentație T-SQL CREATE VIEW**: https://learn.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql
- **Documentație T-SQL CREATE PROCEDURE**: https://learn.microsoft.com/en-us/sql/t-sql/statements/create-procedure-transact-sql
- **Documentație T-SQL CREATE FUNCTION**: https://learn.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql

---

## 2. Pregătirea Lecției (Checklist Profesor)

### Software & Mediu Online
- [ ] Conexiune stabilă la internet pe toate computerele elevilor.
- [ ] Tab-ul [OneCompiler SQL Server](https://onecompiler.com/sqlserver) deschis și verificat pentru execuție T-SQL curată.
- [ ] Proiectorul / ecranul partajat configurat pentru demonstrarea live a codului T-SQL și izolării permisiunilor.

### Materiale Didactice & Exemple Pregătite
- [ ] Scriptul DDL/DML pentru tabelul `Staff` (3 rânduri: Vasile, Anton, Igor cu salarii și parole).
- [ ] Schema scenariului orarului școlar cu 4 tabele relaționale (`Teachers`, `Students`, `Courses`, `Classrooms`) pentru ilustrarea `JOIN`-urilor repetitive.
- [ ] Scriptul tabelului `Sales` (Laptop, Phone, Tablet, Monitor, Keyboard cu prețuri, cantități și discounturi) pentru dezbaterea formulei corecte de calcul.
- [ ] Scriptul tranzacțional al tabelului `Accounts` (Andrian, Dan, Maria, Ion) pentru simularea operațiunilor financiare manuale și conversia lor în procedură stocată.
- [ ] Cele 3 specificații tehnice pentru funcțiile scalare T-SQL (`fn_CalculateFinalPrice`, `fn_GetAccountTier`, `fn_CalculateDiscountAmount`).
- [ ] Setul de 8 întrebări tip Certiport ITS pregătit pentru verificarea cunoștințelor.

---

## 3. Desfășurarea Lecției (Minute-by-Minute Timeline)

| Interval | Etapă | Activitate Principală |
| :---: | :---: | :--- |
| **00:00 – 00:25** | **1. Ce este un View? Securitatea & Mascarea Coloanelor Sensibile** | Crearea tabelului `Staff` cu parole și salarii. Dilema rolurilor de acces (Director, Contabil, Administrator, Paznic). De ce nu clonăm tabelele? Definirea vederii `vw_Staff_SecurityGuard`. Testarea sincronizării automate la modificarea tabelului sursă. |
| **00:25 – 00:45** | **2. Simplificarea Interogărilor Complexe (JOIN-uri Multiple)** | Problema interogărilor analitice gigantice: scenariul orarului școlar cu 4 tabele relaționate. Scrierea interogării complete cu `INNER JOIN`. Încapsularea logicii în vederea `vw_FullSchoolSchedule` și interogarea simplificată. |
| **00:45 – 01:05** | **3. Coloane Calculate & Dependențe Tranzitive în Tabele** | Tabelul `Sales`: dezbatere interactivă privind prețul total al comenzii 1 (1800, 1900, 2000, 0?). Normalizarea datelor: de ce NU stocăm coloane calculate în tabele fizice (dependențe tranzitive / 3NF). Crearea vederii `vw_SalesSummary` cu formulă unică standardizată. |
| **01:05 – 01:25** | **4. Proceduri Stocate (`Stored Procedures`) în T-SQL** | Tabelul bancar `Accounts`. Misiunea 1: transferul manual de 50 MDL de la Maria la Dan (`SELECT` -> `UPDATE` -> `UPDATE` -> `SELECT`). Misiunea 2: transferul de 25 MDL de la Andrian la Ion. Refactorizarea logicii într-o procedură parametrizată `sp_TransferFunds` și apelul cu `EXEC`. |
| **01:25 – 01:50** | **5. Funcții Definite de Utilizator (`User-Defined Functions`)** | Diferența conceptuală dintre Funcții și Proceduri Stocate (valori returnate, utilizare în `SELECT`). Implementarea și testarea a 3 funcții scalare în T-SQL: calculul prețului cu TVA/discount, clasificarea soldului bancar și formatarea datelor. |
| **01:50 – 02:00** | **6. Mini-Quiz Certiport ITS & Concluzii** | Evaluare grilă de 8 întrebări axate pe definiția vederilor, diferența `VIEW` vs `TABLE`, parametri în `STORED PROCEDURE` și apelarea `FUNCTION` în clauza `SELECT`. |

---

## 4. Ghid Detaliat Pas cu Pas (Teacher's Master Guide)

### Etapa 1: Ce este un View? Securitatea & Mascarea Coloanelor Sensibile (00:00 – 00:25)

Profesorul deschide discuția punând o problemă critică de securitate din lumea reală a ingineriei software:
*"Când proiectăm o bază de date pentru o companie, avem utilizatori cu responsabilități complet diferite. Directorul trebuie să vadă tot. Contabilul are nevoie de salarii, dar nu de parole sau telefoane personale. Administratorul de sistem verifică infrastructura, dar nu are voie să vadă salariile colegilor. Iar paznicul de la intrare are nevoie doar de nume și legitimație pentru a permite accesul în clădire. Cum rezolvăm această problemă în SQL? Creăm 4 sau 5 tabele fizice separate pentru fiecare departament?"*

Profesorul lasă elevii să răspundă, apoi analizează de ce clonarea tabelelor ar fi un dezastru arhitectural:
- Dacă avem tabele separate (`Staff_Director`, `Staff_Accounting`, `Staff_Guard`), la fiecare angajat nou sau la fiecare modificare de număr de telefon ar trebui să facem `INSERT` sau `UPDATE` în 5 locuri simultan!
- Datele se vor desincroniza instantaneu, spațiul pe disc va fi irosit, iar riscul de corupere a datelor este imens.

Soluția arhitecturală este un **View (Vedere)**.

#### 1. Definirea Conceptului de View
- Un **View** este un **tabel virtual** bazat pe rezultatul unei interogări `SELECT`.
- Un View **NU stochează date fizice pe disc** (cu excepția vederilor indexate avansate). El stochează doar **definiția interogării** (codul SQL).
- Pentru utilizator și pentru aplicație, View-ul se comportă exact ca un tabel obișnuit: se poate interoga cu `SELECT * FROM NumeView`, se pot pune clauze `WHERE`, `ORDER BY` etc.
- De fiecare dată când interogăm un View, motorul SQL Server extrage datele proaspete din tabelul de bază subiacent.

#### 2. Șablonul Sintactic T-SQL pentru `CREATE VIEW`
Profesorul scrie tiparul structural pe tablă:

```sql
CREATE VIEW nume_view AS
SELECT coloana1, coloana2
FROM nume_tabel
WHERE conditie;
```

#### 3. Practică Live în OneCompiler: Tabelul `Staff` și Crearea Vederii pentru Paznic

Elevii scriu și execută scriptul de bază în OneCompiler:

```sql
-- Crearea tabelului fizic Staff
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Inserarea inregistrarilor confidentiale
INSERT INTO Staff (staff_id, name, salary, phone, password)
VALUES 
    (1, 'Vasile', 12000.00, '068783343', 'ador_kebab'),
    (2, 'Anton', 34000.00, '023434234', 'iepurash222'),
    (3, 'Igor', 22000.00, '042342323', 'igariok1990');

-- Verificarea tabelului complet (accesibil doar Directorului / DBA)
SELECT * FROM Staff;
```

Acum creăm View-ul dedicat postului de pază, expunând strict coloanele publice (`staff_id` și `name`):

```sql
-- Crearea vederii pentru paznic (fara salariu, telefon sau parola)
CREATE VIEW vw_Staff_SecurityGuard AS
SELECT staff_id, name
FROM Staff;
```

Profesorul solicită elevilor să interogheze vederea:

```sql
-- Paznicul interogheaza doar vederea sa
SELECT * FROM vw_Staff_SecurityGuard;
```

#### 4. Demonstrarea Securității & a Sincronizării Automate
Profesorul solicită clasei să testeze două lucruri esențiale:

**Testul A (Securitate)**: Ce se întâmplă dacă cineva încearcă să acceseze salariul prin View-ul paznicului?
```sql
-- Incercare de acces neautorizat
SELECT staff_id, name, salary 
FROM vw_Staff_SecurityGuard;
```
> **Rezultat în SQL Server**: `Invalid column name 'salary'.` Motorul SQL respinge categoric interogarea, deoarece coloana `salary` pur și simplu nu există în schema vederii!

**Testul B (Sincronizare în Timp Real)**: Modificăm numele lui Vasile în tabelul de bază și adăugăm un angajat nou:
```sql
-- Actualizare in tabelul original Staff
UPDATE Staff 
SET name = 'Vasile Cel Mare' 
WHERE staff_id = 1;

INSERT INTO Staff (staff_id, name, salary, phone, password)
VALUES (4, 'Elena', 28000.00, '079112233', 'parola_secreta');

-- Re-interogarea vederii
SELECT * FROM vw_Staff_SecurityGuard;
```
> **Observație critică**: În `vw_Staff_SecurityGuard`, Vasile apare instantaneu redenumit, iar Elena apare automat în listă, deși nu am atins View-ul! Deoarece datele nu sunt duplicate, orice modificare în tabelul fizic se reflectă imediat în View.

**Concluzie 1**: Un View funcționează ca un filtru de securitate, permițând administratorului să acorde permisiuni doar pe View (`GRANT SELECT ON vw_Staff_SecurityGuard TO GuardUser`), ascunzând coloanele critice.

---

### Etapa 2: Simplificarea Interogărilor Complexe (JOIN-uri Multiple) (00:25 – 00:45)

Profesorul introduce al doilea mare rol al vederilor: **simplificarea interogărilor analitice complexe**.

*"Gândiți-vă la sistemul de gestiune al unei școli sau universități. Pentru a afișa catalogul complet al unei lecții, trebuie să corelăm 4 sau 5 tabele diferite: elevii, profesorii, materiile predate, sălile de clasă și notele acordate. Fiecare raport ar necesita o interogare de 15 linii plină de `INNER JOIN`-uri."*

#### 1. Construirea Scheletului Relațional Școlar în OneCompiler

Elevii execută următorul script pentru a pregăti tabelele relaționate:

```sql
-- Tabelele de baza ale sistemului scolar
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL
);

CREATE TABLE Classrooms (
    classroom_id INT PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL
);

CREATE TABLE Schedule (
    schedule_id INT PRIMARY KEY,
    teacher_id INT NOT NULL,
    course_id INT NOT NULL,
    classroom_id INT NOT NULL,
    day_of_week VARCHAR(15) NOT NULL,
    start_time VARCHAR(10) NOT NULL
);

-- Popularea cu date relationate
INSERT INTO Teachers VALUES (1, 'Prof. Dumitru Popescu'), (2, 'Prof. Maria Ionescu');
INSERT INTO Courses VALUES (101, 'Baze de Date T-SQL'), (102, 'Programare Web');
INSERT INTO Classrooms VALUES (201, 'Lab 304'), (202, 'Amfiteatru 1');

INSERT INTO Schedule VALUES 
    (1, 1, 101, 201, 'Luni', '09:00'),
    (2, 2, 102, 202, 'Marti', '11:00');
```

#### 2. Problema Interogării Repetitive cu JOIN
Pentru a genera orarul inteligibil pentru elevi și secretariat, profesorul scrie pe tablă interogarea complexă:

```sql
SELECT 
    s.schedule_id,
    c.course_name,
    t.teacher_name,
    cr.room_number,
    s.day_of_week,
    s.start_time
FROM Schedule s
INNER JOIN Teachers t ON s.teacher_id = t.teacher_id
INNER JOIN Courses c ON s.course_id = c.course_id
INNER JOIN Classrooms cr ON s.classroom_id = cr.classroom_id;
```

*"Dacă secretariatul are nevoie de acest raport în fiecare dimineață, la fiecare căutare de sală sau la fiecare orar al unui profesor, vor trebui dezvoltatorii să rescrie de fiecare dată acest bloc masiv de `JOIN`-uri? Răspunsul este categoric NU."*

#### 3. Salvarea în View-ul `full_school_schedule`

```sql
CREATE VIEW full_school_schedule AS
SELECT 
    s.schedule_id,
    c.course_name,
    t.teacher_name,
    cr.room_number,
    s.day_of_week,
    s.start_time
FROM Schedule s
INNER JOIN Teachers t ON s.teacher_id = t.teacher_id
INNER JOIN Courses c ON s.course_id = c.course_id
INNER JOIN Classrooms cr ON s.classroom_id = cr.classroom_id;
```

Acum, oricine are nevoie de orar folosește o interogare elegantă și simplă:

```sql
-- Afisarea intregului orar
SELECT * FROM full_school_schedule;

-- Cautarea orelor predate doar in 'Lab 304'
SELECT course_name, teacher_name, start_time 
FROM full_school_schedule 
WHERE room_number = 'Lab 304';
```

**Concluzie 2**: Un View încapsulează logica complicată a `JOIN`-urilor multiple, oferind dezvoltatorilor și utilizatorilor finali o interfață curată, gata filtrată și ușor de citit.

---

### Etapa 3: Standardizarea Formulelor de Calcul & Dependențele Tranzitive (00:45 – 01:05)

Profesorul trece la al treilea caz esențial al utilizării vederilor: **calcularea valorilor derivate și respectarea normalizării datelor**.

#### 1. Crearea Tabelului `Sales` în OneCompiler

Elevii introduc următorul set de vânzări:

```sql
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    discount DECIMAL(10, 2) NOT NULL
);

INSERT INTO Sales (sale_id, product, price, quantity, discount)
VALUES 
    (1, 'Laptop', 1000.00, 2, 100.00),
    (2, 'Phone', 500.00, 3, 50.00),
    (3, 'Tablet', 300.00, 5, 0.00),
    (4, 'Monitor', 250.00, 4, 25.00),
    (5, 'Keyboard', 80.00, 10, 40.00);

SELECT * FROM Sales;
```

#### 2. Dezbaterea Interactivă: Cât este Totalul la Comanda 1?
Profesorul oprește scrierea de cod și întreabă clasa:
*"Priviți Comanda 1: Produs = Laptop, Preț = 1000.00, Cantitate = 2, Discount = 100.00. Care a fost suma totală achitată de client? Fiecare să calculeze și să-și susțină varianta!"*

Profesorul colectează variantele pe tablă:
- **Varianta 1 (1900.00)**: `(Price * Quantity) - Discount` = `(1000 * 2) - 100 = 1900`. Reducerea de 100 lei este aplicată pe întreaga comandă.
- **Varianta 2 (1800.00)**: `(Price - Discount) * Quantity` = `(1000 - 100) * 2 = 1800`. Reducerea de 100 lei este considerată per bucată.
- **Varianta 3 (0.00 sau gratuit)**: Unii ar putea interpreta coloana `discount` ca fiind 100%, adică produs oferit gratuit.
- **Varianta 4 (2000.00)**: Discountul este ignorat sau considerat un voucher separat pentru comanda viitoare.

*"Vedeți ce s-a întâmplat chiar acum în clasă? Dacă avem 4 dezvoltatori în echipă și fiecare scrie propria interogare `SELECT` în aplicația web sau mobilă, fiecare va calcula o cifră de afaceri diferită! Unul va raporta 1900, altul 1800. Contabilitatea va intra în haos."*

#### 3. De Ce NU Adăugăm o Coloană Fizică `total` în Tabelul `Sales`?
Un elev va sugera firesc: *"De ce nu adăugăm o coloană fizică `total` direct în tabelul `Sales`?"*

Profesorul explică regula fundamentală a bazelor de date relaționale:
1. **Încălcarea Formei Normale 3 (Dependență Tranzitivă)**:
   - În forma normală 3 (3NF), fiecare coloană necheie trebuie să depindă **direct și exclusiv** de cheia primară (`sale_id`).
   - Valoarea lui `total` depinde de fapt de alte coloane necheie: `price`, `quantity` și `discount` (`total = f(price, quantity, discount)`).
2. **Riscul Desincronizării Datelor (Data Inconsistency)**:
   - Dacă prețul sau discountul se modifică printr-un `UPDATE`, dar cineva uită să recalculeze coloana `total`, baza de date va conține date false și contradictorii!

#### 4. Soluția: View-ul cu Coloană Calculată `vw_SalesSummary`

Formula oficială de afaceri a companiei este stabilită o singură dată în baza de date prin intermediul unui View:

```sql
CREATE VIEW vw_SalesSummary AS
SELECT 
    sale_id,
    product,
    price,
    quantity,
    discount,
    (price * quantity) - discount AS total_amount
FROM Sales;
```

Elevii testează vederea:

```sql
SELECT * FROM vw_SalesSummary;
```

**Concluzie 3**: Un View oferă o locație centralizată și unică pentru regulile de afaceri și formulele de calcul. Dacă mâine formula de calcul se schimbă (de exemplu, adăugăm TVA), modificăm doar View-ul, fără a altera structura tabelului fizic și fără a rescrie cod în zeci de aplicații externe.

---

### Etapa 4: Proceduri Stocate (`Stored Procedures`) în T-SQL (01:05 – 01:25)

Profesorul face tranziția către logica executabilă:
*"Până acum am văzut cum putem citi datele prin tabele și vederi (DQL). Dar ce facem când avem de executat **acțiuni complexe**, care implică modificări (`INSERT`, `UPDATE`, `DELETE`) în mai mulți pași logici consecutivi?"*

#### 1. Crearea Tabelului Bancar `Accounts`

Elevii introduc conturile bancare:

```sql
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    owner_name VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL
);

INSERT INTO Accounts (account_id, owner_name, balance)
VALUES 
    (1, 'Andrian', 100.00),
    (2, 'Dan', 50.00),
    (3, 'Maria', 250.00),
    (4, 'Ion', 75.50);

SELECT * FROM Accounts;
```

#### 2. Misiunea 1: Transferul Manual a 50 MDL de la Maria la Dan
Profesorul provoacă elevii: *"Scrieți pașii SQL prin care transferăm 50 de lei din contul Mariei (ID 3) în contul lui Dan (ID 2)."*

Clasa scrie împreună secvența completă de pași:

```sql
-- Pasul 1: Verificam soldurile initiale
SELECT * FROM Accounts WHERE account_id IN (2, 3);

-- Pasul 2: Scadem 50 MDL din contul Mariei
UPDATE Accounts 
SET balance = balance - 50.00 
WHERE account_id = 3;

-- Pasul 3: Adaugam 50 MDL in contul lui Dan
UPDATE Accounts 
SET balance = balance + 50.00 
WHERE account_id = 2;

-- Pasul 4: Verificam soldurile finale
SELECT * FROM Accounts WHERE account_id IN (2, 3);
```

#### 3. Misiunea 2: Transferul a 25 MDL de la Andrian la Ion
Profesorul spune: *"Excelent! Acum efectuați un nou transfer: 25 MDL de la Andrian (ID 1) către Ion (ID 4)."*
Profesorul îi oprește însă înainte de a scrie din nou comenzile:
*"Observați problema? De fiecare dată când o aplicație bancară procesează o tranzacție, trebuie un om sau o aplicație să rescrie 4 instrucțiuni SQL diferite, cu ID-uri și sume diferite scrise de mână? Dacă trimitem sume negative? Dacă trimitem un ID greșit? Pentru a automatiza și proteja astfel de procese, creăm o **Procedură Stocată (Stored Procedure)**."*

#### 4. Ce este o Procedură Stocată?
- Un bloc de cod T-SQL compilat și salvat pe server sub un nume.
- Poate primi **parametri de intrare** (`@parametru TIP`).
- Poate conține instrucțiuni DML (`INSERT`, `UPDATE`, `DELETE`), structuri de control și tranzacții.
- Se execută explicit folosind comanda `EXEC` sau `EXECUTE`.

#### 5. Crearea Procedurii `sp_TransferFunds` în OneCompiler

```sql
CREATE PROCEDURE sp_TransferFunds
    @sender_id INT,
    @receiver_id INT,
    @amount DECIMAL(10, 2)
AS
BEGIN
    -- Scadem din contul expeditorului
    UPDATE Accounts
    SET balance = balance - @amount
    WHERE account_id = @sender_id;

    -- Adaugam in contul destinatarului
    UPDATE Accounts
    SET balance = balance + @amount
    WHERE account_id = @receiver_id;
END;
```

#### 6. Testarea Execuției Procedurii cu `EXEC`

Elevii testează transferul de 25 MDL de la Andrian la Ion apelând simplu procedura:

```sql
-- Executia procedurii cu parametri
EXEC sp_TransferFunds @sender_id = 1, @receiver_id = 4, @amount = 25.00;

-- Verificarea rezultatului final in tabel
SELECT * FROM Accounts;
```
> **Rezultat**: Soldul lui Andrian a scăzut de la 100.00 la 75.00 MDL, iar soldul lui Ion a crescut de la 75.50 la 100.50 MDL! O singură linie curată de cod a orchestrat întregul proces bancar.

---

### Etapa 5: Funcții Definite de Utilizator (`User-Defined Functions`) (01:25 – 01:50)

Profesorul introduce al treilea pilon al reutilizării codului: **Funcțiile (UDF)**.

#### 1. De Ce Avem Nevoie de Funcții în SQL?
*"Dacă avem deja Proceduri Stocate, de ce mai există și Funcții? Există o diferență structurală majoră între ele:"*

| Criteriu de Comparație | Procedură Stocată (`Stored Procedure`) | Funcție Definită de Utilizator (`Function`) |
| :--- | :--- | :--- |
| **Scop Principal** | Execută acțiuni de modificare (`UPDATE`, `INSERT`, `DELETE`) și procese de business. | Calculează și **returnează întotdeauna o valoare** (scalară sau tabel). |
| **Mod de Apelare** | Se apelează individual cu `EXEC` sau `EXECUTE`. | **Se apelează direct în interiorul clauzelor `SELECT`, `WHERE`, `ORDER BY`**. |
| **Modificarea Bazei** | Poate modifica starea bazei de date (execută `UPDATE`). | **NU are voie să modifice starea bazei** (nu poate rula `UPDATE`/`DELETE`). |

*"Gândiți-vă: Nu puteți scrie `SELECT sp_TransferFunds(...) FROM Accounts`. Dar puteți scrie `SELECT name, fn_CalculateDiscount(price) FROM Products`!"*

#### 2. Șablonul Sintactic T-SQL pentru o Funcție Scalară

```sql
CREATE FUNCTION dbo.fn_NumeFunctie (@parametru TIP)
RETURNS TIP_RETURNAT
AS
BEGIN
    DECLARE @rezultat TIP_RETURNAT;
    -- instructiuni de calcul
    RETURN @rezultat;
END;
```

#### 3. Cele 3 Sarcini Practice de Implementare & Testare

Profesorul ghidează elevii prin 3 scenarii practice aplicative:

##### Sarcina 1: Funcție Scalară pentru Calculul Prețului cu TVA inclus (`fn_CalculatePriceWithVAT`)
Creăm o funcție care primește un preț net și o cotă de TVA (ex: 20%) și returnează prețul final brut:

```sql
CREATE FUNCTION dbo.fn_CalculatePriceWithVAT 
(
    @net_price DECIMAL(10, 2),
    @vat_rate DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @final_price DECIMAL(10, 2);
    SET @final_price = @net_price + (@net_price * (@vat_rate / 100.00));
    RETURN @final_price;
END;
```

Elevii o testează direct pe tabelul `Sales`:
```sql
SELECT 
    product,
    price AS NetPrice,
    dbo.fn_CalculatePriceWithVAT(price, 20.00) AS GrossPriceWithVAT
FROM Sales;
```

##### Sarcina 2: Funcție Scalară de Clasificare a Soldului Clienților (`fn_GetAccountTier`)
Creăm o funcție de evaluare care primește un sold și returnează un calificativ (`'VIP'`, `'Standard'`, `'Low Balance'`):

```sql
CREATE FUNCTION dbo.fn_GetAccountTier
(
    @balance DECIMAL(10, 2)
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @tier VARCHAR(20);
    
    IF @balance >= 200.00
        SET @tier = 'VIP Tier';
    ELSE IF @balance >= 75.00
        SET @tier = 'Standard Tier';
    ELSE
        SET @tier = 'Low Balance';
        
    RETURN @tier;
END;
```

Elevii testează funcția integrată în tabelul `Accounts`:
```sql
SELECT 
    owner_name,
    balance,
    dbo.fn_GetAccountTier(balance) AS AccountStatus
FROM Accounts;
```

##### Sarcina 3: Funcție Scalară pentru Valoarea Reală a Discountului (`fn_CalculateDiscountAmount`)
Creăm o funcție care calculează valoarea economisită în funcție de cantitate și preț:

```sql
CREATE FUNCTION dbo.fn_CalculateDiscountAmount
(
    @price DECIMAL(10, 2),
    @quantity INT,
    @fixed_discount DECIMAL(10, 2)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @savings DECIMAL(10, 2);
    SET @savings = @fixed_discount;
    RETURN @savings;
END;
```

Elevii testează funcția și o combină cu filtrarea în clauza `WHERE`:
```sql
SELECT 
    product,
    price,
    quantity,
    discount,
    dbo.fn_CalculatePriceWithVAT(price, 20.0) AS TotalWithVAT
FROM Sales
WHERE dbo.fn_CalculatePriceWithVAT(price, 20.0) > 300.00;
```

---

### Etapa 6: Mini-Quiz Certiport ITS & Concluzii (01:50 – 02:00)

Profesorul recapitulează triada obiectelor de reutilizare a codului:
1. **View**: Tabel virtual compus dintr-un `SELECT`, folosit pentru securitate, simplificare `JOIN`-uri și coloane calculate.
2. **Stored Procedure**: Script parametrizat executabil prin `EXEC`, folosit pentru operațiuni de modificare complexe și procese automate.
3. **Function**: Rutină de calcul care returnează o valoare și se apelează direct în interogări (`SELECT`, `WHERE`).

---

## 5. Mini-Quiz Certiport ITS (8 Întrebări de Certificare)

#### Întrebarea 1:
Ce reprezintă un `View` în Microsoft SQL Server?
- [ ] A) Un fișier fizic duplicat pe hard disk care conține o copie de rezervă a tabelului.
- [x] B) Un tabel virtual a cărui compoziție este definită de o interogare `SELECT` și care nu stochează date fizice proprii.
- [ ] C) O procedură care modifică automat structura tabelelor la fiecare pornire a serverului.
- [ ] D) Un index utilizat exclusiv pentru accelerarea căutărilor în coloane de tip text.
> **Explicație**: Un View este un tabel virtual. El stochează doar instrucțiunea `SELECT` în catalogul bazei de date, extrăgând dinamic datele din tabelele de bază la fiecare interogare.

---

#### Întrebarea 2:
Care este principalul avantaj de securitate oferit de utilizarea unui `View` pe un tabel de personal?
- [ ] A) Blochează complet conexiunile de rețea neautorizate către serverul SQL.
- [ ] B) Criptează automat discul pe care este instalat sistemul de operare.
- [x] C) Permite utilizatorilor să vizualizeze doar anumite coloane și rânduri, mascând datele confidențiale precum parolele sau salariile.
- [ ] D) Împiedică executarea oricărei comenzi de tip `SELECT`.
> **Explicație**: Prin crearea unei vederi care include doar coloanele neconfidențiale (`staff_id`, `name`), utilizatorii primesc drepturi de acces doar pe acea vedere, fără a putea citi coloanele protejate din tabelul sursă.

---

#### Întrebarea 3:
Dacă modificați o valoare într-un tabel fizic de bază printr-o instrucțiune `UPDATE`, ce se întâmplă la următoarea interogare a unui `View` asociat?
- [ ] A) Vederea va continua să afișeze datele vechi până când este ștearsă și recreată cu `CREATE VIEW`.
- [ ] B) Vederea va genera o eroare de sincronizare a schemelor.
- [x] C) Vederea va reflecta instantaneu noua valoare, deoarece datele sunt citite în timp real din tabelul sursă.
- [ ] D) Datele din tabelul sursă vor fi anulate și readuse la starea inițială.
> **Explicație**: Deoarece un View standard nu stochează date fizice, orice interogare asupra vederii execută instrucțiunea sa `SELECT` pe datele curente din tabelele fizice.

---

#### Întrebarea 4:
De ce nu este recomandat să stocăm o coloană calculată precum `total_price` direct ca o coloană fizică în tabelul `Sales`?
- [ ] A) Motoarele SQL Server nu permit înmulțirea sau scăderea a două numere.
- [x] B) Încalcă regulile de normalizare (dependențele tranzitive) și creează riscul desincronizării dacă valorile de bază sunt modificate.
- [ ] C) Ocupă obligatoriu peste 1 GB de memorie RAM pe fiecare rând.
- [ ] D) Previne utilizarea cheilor primare în tabel.
> **Explicație**: O coloană a cărei valoare poate fi derivată matematic din alte coloane necheie (`price * quantity - discount`) creează dependențe tranzitive și redundanță. Cel mai eficient mod de a o expune este printr-un View.

---

#### Întrebarea 5:
Care dintre următoarele comenzi este utilizată pentru a rula o procedură stocată numită `sp_TransferFunds` în T-SQL?
- [ ] A) `RUN sp_TransferFunds;`
- [ ] B) `SELECT * FROM sp_TransferFunds;`
- [x] C) `EXEC sp_TransferFunds;`
- [ ] D) `CALL VIEW sp_TransferFunds;`
> **Explicație**: În T-SQL, procedurile stocate sunt invocate folosind cuvântul cheie `EXEC` sau `EXECUTE`.

---

#### Întrebarea 6:
Care este o diferență cheie între o Procedură Stocată (`Stored Procedure`) și o Funcție Scalară (`Function`) în T-SQL?
- [ ] A) Procedurile stocate nu pot primi niciodată parametri.
- [ ] B) Funcțiile pot executa comenzi `UPDATE` pe orice tabel, în timp ce procedurile nu pot.
- [x] C) Funcțiile returnează o valoare și pot fi apelate direct în clauza `SELECT`, în timp ce procedurile stocate nu pot fi încorporate direct într-un `SELECT`.
- [ ] D) Nu există nicio diferență; termenii sunt identici în T-SQL.
> **Explicație**: Funcțiile sunt proiectate pentru calcul și returnare de valori ce pot fi utilizate în expresii SQL (`SELECT`, `WHERE`), pe când procedurile stocate realizează acțiuni complexe și nu pot fi invocate direct în interiorul unei clauze `SELECT`.

---

#### Întrebarea 7:
Cum se definește un parametru de intrare pentru un identificator numeric în antetul unei proceduri stocate T-SQL?
- [ ] A) `PARAM id AS INT`
- [x] B) `@account_id INT`
- [ ] C) `VAR account_id : INT`
- [ ] D) `#account_id NUMBER`
> **Explicație**: În T-SQL, toate variabilele și parametrii încep obligatoriu cu caracterul `@`, urmat de numele parametrului și tipul de date (`@account_id INT`).

---

#### Întrebarea 8:
Care instrucțiune DDL este utilizată pentru a crea o vedere nouă în baza de date?
- [ ] A) `NEW VIEW nume_view`
- [ ] B) `MAKE VIEW nume_view`
- [x] C) `CREATE VIEW nume_view AS SELECT ...`
- [ ] D) `BUILD VIRTUAL TABLE nume_view`
> **Explicație**: Sintaxa standard DDL pentru definirea unui View în T-SQL este `CREATE VIEW nume_view AS SELECT ...`.
