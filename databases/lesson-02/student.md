# Compendiu Elev: Lecția 02 [DB1.2] – Sublimbajele SQL (DDL, DML, DQL, DCL), Manipularea Schemelor & Modificarea Datelor

---

## 📌 1. Rezumatul Lecției (Core Notes)

Această lecție se concentrează pe taxonomia formală a comenzilor **SQL** cerute la examenul **Certiport Information Technology Specialist (ITS): Databases**, făcând distincția clară între comenzile care manipulează **structura (schema)** și cele care modifică **datele (rândurile)**.

### Idei Cheie de Reținut:
1. **Taxonomia celor 4 Sublimbaje SQL**:
   - **DDL (Data Definition Language)**: Lucrează la nivel structural/arhitectural. Creează, modifică sau distruge containerele de date (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`). Nu manipulează valori individuale din celule.
   - **DML (Data Manipulation Language)**: Operează direct pe înregistrări (rânduri). Adaugă, modifică sau șterge rânduri (`INSERT`, `UPDATE`, `DELETE`).
   - **DQL (Data Query Language)**: Extrage și proiectează date din tabele fără a altera starea bazei de date (`SELECT`). *Notă: La Certiport, `SELECT` este adesea inclus în DML în clasificări simplificate.*
   - **DCL (Data Control Language)**: Gestionează securitatea, rolurile și drepturile de acces ale utilizatorilor (`GRANT`, `REVOKE`, `DENY`).
2. **Modificarea Schemelor cu `ALTER TABLE` (DDL)**:
   - Permite evoluția structurii unui tabel existent fără pierderea datelor deja stocate:
     - `ADD`: adaugă una sau mai multe coloane noi.
     - `DROP COLUMN`: elimină definitiv o coloană și toate valorile din ea.
     - `ALTER COLUMN`: modifică tipul de date sau lungimea unei coloane existente (ex. extindere de la `VARCHAR(10)` la `VARCHAR(50)`).
     - `ADD / DROP CONSTRAINT`: aplică sau revocă reguli de validare a integrității (ex. `CHECK`).
3. **Cele 3 Tehnici Fundamentale de Inserare a Datelor**:
   - `INSERT INTO ... VALUES`: inserare manuală de rânduri noi.
   - `INSERT INTO ... SELECT`: copiază rânduri dintr-o interogare într-un tabel **existent în prealabil**.
   - `SELECT ... INTO`: creează automat un tabel **nou** pe baza rezultatului interogării și îl populează instantaneu.
4. **Modificarea Datelor cu `UPDATE` (DML)**:
   - Sintaxa: `UPDATE NumeTabel SET coloana = valoare WHERE conditie;`.
   - **Atenție Majoră**: Omiterea clauzei `WHERE` actualizează **toate rândurile din tabel** fără avertisment!
5. **Diferența Critică: `DELETE` vs `TRUNCATE TABLE`**:
   - `DELETE FROM`: Instrucțiune **DML**. Șterge rând cu rând, permite filtrare prin `WHERE`, înregistrează fiecare ștergere în *Transaction Log*, este mai lentă și **nu resetează** contorul `IDENTITY`.
   - `TRUNCATE TABLE`: Instrucțiune **DDL**. Golește instantaneu tabelul prin dezalocarea directă a paginilor de memorie, nu acceptă `WHERE`, are consum minim de resurse, nu declanșează *triggere* și **resetează** contorul `IDENTITY` la valoarea inițială.

---

## 📚 2. Dicționar de Termeni Tehnici (New Words Learned)

| Termen Tehnic | Categorie | Definiție & Semnificație | Exemplu / Context |
| :--- | :--- | :--- | :--- |
| **DDL** | Taxonomie | *Data Definition Language* – Instrucțiuni ce definesc sau modifică schema și structura obiectelor din baza de date. | `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`, `TRUNCATE TABLE`. |
| **DML** | Taxonomie | *Data Manipulation Language* – Instrucțiuni ce manipulează direct înregistrările (rândurile) din tabele. | `INSERT INTO`, `UPDATE`, `DELETE FROM`. |
| **DQL** | Taxonomie | *Data Query Language* – Instrucțiuni de interogare utilizate pentru citirea și extragerea informațiilor. | `SELECT ... FROM ... WHERE`. |
| **DCL** | Taxonomie | *Data Control Language* – Instrucțiuni administrative folosite pentru gestionarea securității și drepturilor de acces. | `GRANT SELECT ON Customers TO User1;`. |
| **Schema (Schemă)** | Structură | Definiția formală a structurii unei baze de date (tabele, tipuri de date, coloane, relații și constrângeri). | Adăugarea unei coloane noi modifică schema tabelului. |
| **ALTER TABLE** | DDL | Instrucțiune utilizată pentru a modifica structura unui tabel existent (adăugare/ștergere coloane, schimbare tipuri de date). | `ALTER TABLE Customers ADD email VARCHAR(100);`. |
| **DROP TABLE** | DDL | Instrucțiune distructivă care șterge definitiv atât datele, cât și definiția structurală a tabelului din catalogul SQL. | `DROP TABLE OldOrders;`. |
| **TRUNCATE TABLE** | DDL | Instrucțiune de mare viteză care golește toate rândurile dintr-un tabel prin dezalocarea paginilor de date. | `TRUNCATE TABLE TempLogs;`. |
| **Constraint (Constrângere)**| Integritate | Regulă impusă la nivelul unei coloane sau tabel pentru a valida corectitudinea datelor permise. | `CHECK (id > 0)` împiedică ID-urile negative. |
| **Transaction Log** | Arhitectură | Jurnal de tranzacții în care SQL Server înregistrează fiecare operațiune atomică pentru asigurarea refacerii datelor (*recovery*). | `DELETE` scrie fiecare rând în log; `TRUNCATE` loghează doar dezalocarea paginilor. |
| **Identity Column** | Schemă | O coloană numerică a cărei valoare este generată și incrementată automat de server la fiecare inserare. | `INT IDENTITY(1,1)`. |
| **Pattern Matching** | Interogare | Căutare bazată pe șabloane textuale folosind operatorul `LIKE` și caractere speciale (*wildcards*). | `WHERE firstname LIKE 'M%'`. |

---

## 💻 3. Ghid Sintactic & Exemple Practice T-SQL

Toate exemplele de mai jos sunt optimizate pentru rulare directă în [OneCompiler SQL Server](https://onecompiler.com/sqlserver).

### A. Încălzire: 5 Tehnici de Filtrare Esențiale (`WHERE`)

```sql
-- Crearea si popularea tabelului de test
CREATE TABLE Customers (
    id INT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    phonenumber VARCHAR(20),
    extension VARCHAR(10)
);

INSERT INTO Customers (id, firstname, lastname, phonenumber, extension)
VALUES 
    (1, 'Minnie', 'Mouse', '022-123456', '101'),
    (2, 'Mickey', 'Mouse', '022-654321', NULL),
    (3, 'Donald', 'Duck', '022-789012', '102'),
    (4, 'Minnie', 'Driver', '022-998877', NULL),
    (5, 'Hope', 'Sanders', '022-445566', '105');

-- 1. Verificarea campurilor completate (IS NOT NULL)
SELECT * FROM Customers WHERE extension IS NOT NULL;

-- 2. Filtrare exacta dupa valoare (=)
SELECT * FROM Customers WHERE firstname = 'Minnie';

-- 3. Disjunctie logica (OR)
SELECT * FROM Customers WHERE firstname = 'Minnie' OR firstname = 'Mickey';

-- 4. Cautare dupa sablon: incepe cu litera 'M' (LIKE 'M%')
SELECT * FROM Customers WHERE firstname LIKE 'M%';

-- 5. Apartenenta la o lista discreta de valori (IN)
SELECT * FROM Customers WHERE firstname IN ('Minnie', 'Mickey', 'Hope');
```

---

### B. Operațiuni Structurale DDL (`ALTER TABLE`)

```sql
-- 1. Adaugarea a doua coloane noi simultan
ALTER TABLE Customers
ADD birthday DATE, new_client BIT;

-- 2. Eliminarea unei coloane din structura
ALTER TABLE Customers
DROP COLUMN new_client;

-- 3. Modificarea tipului/dimensiunii unei coloane existente
ALTER TABLE Customers
ALTER COLUMN firstname VARCHAR(60);

-- 4. Adaugarea unei constrangeri CHECK cu nume explicit
ALTER TABLE Customers
ADD CONSTRAINT chk_customer_id CHECK (id > 0);

-- 5. Eliminarea constrangerii dupa nume
ALTER TABLE Customers
DROP CONSTRAINT chk_customer_id;
```

---

### C. Cele 3 Metode de Inserare a Datelor

```sql
-- Metoda 1: INSERT INTO ... VALUES (cu lista explicita de coloane)
INSERT INTO Customers (id, firstname, lastname)
VALUES 
    (10, 'Michael', 'Jackson'),
    (11, 'George', 'Enescu');

-- Metoda 2: INSERT INTO ... SELECT (tabelul destinatie trebuie sa EXISTE deja)
CREATE TABLE ArchivedCustomers (
    id INT,
    firstname VARCHAR(60),
    lastname VARCHAR(50)
);

INSERT INTO ArchivedCustomers (id, firstname, lastname)
SELECT id, firstname, lastname FROM Customers;

-- Metoda 3: SELECT ... INTO (creeaza automat tabelul NOU NewCustomers)
SELECT * INTO NewCustomers
FROM Customers;

-- Verificarea rezultatului
SELECT * FROM NewCustomers;
```

---

### D. Modificarea Datelor (`UPDATE`) & Capcana Lipsei `WHERE`

```sql
-- Exemplu 1: Modificare sigura, tintita printr-o conditie exacta
UPDATE Customers
SET firstname = 'Mihai'
WHERE lastname = 'Mouse' AND id = 2;

-- Exemplu 2: Modificare bazata pe sablon
UPDATE Customers
SET lastname = 'VIP'
WHERE firstname LIKE 'M%';

-- PERICOL CERTIPORT: UPDATE fara WHERE suprascrie TOT tabelul!
-- UPDATE Customers SET firstname = 'Necunoscut'; -- (Va afecta toate randurile!)
```

---

### E. `DELETE` vs `TRUNCATE TABLE` în Acțiune

```sql
-- Stergerea unui rand individual pe baza unei conditii (DML)
DELETE FROM Customers
WHERE id = 1;

-- Stergerea tuturor randurilor rand-cu-rand (DML)
DELETE FROM Customers;

-- Golirea instanta a tabelului prin dezalocarea paginilor (DDL)
TRUNCATE TABLE Customers;

-- Stergerea definitiva a tabelului si a structurii din baza de date (DDL)
DROP TABLE Customers;
```

---

## 🧠 4. Explicații Aprofundate: Cum Funcționează „Sub Capotă”

### De ce este `TRUNCATE TABLE` mult mai rapid decât `DELETE FROM`?
- **`DELETE FROM`** funcționează iterativ: parcurge fiecare rând, scrie fiecare ștergere în fișierul jurnal (*Transaction Log*) și generează blocaje de linie (*row-level locks*). Pentru 1 milion de rânduri, vor exista 1 milion de înregistrări individuale în jurnal.
- **`TRUNCATE TABLE`** este o operațiune la nivel de sistem de fișiere/pagină: SQL Server nu citește rândurile, ci pur și simplu marchează ca **dezalocate** paginile întregi de disc atribuite tabelului. Scrie doar câteva linii în jurnal (*extent deallocations*), ceea ce face operațiunea practic instantanee, indiferent de mărimea datelor.

### De ce este `TRUNCATE` considerat DDL și nu DML?
- Deși efectul vizibil este golirea datelor, `TRUNCATE` operează direct asupra pointerilor de stocare din structura bazei de date (metadata și pagini de alocare), fără a procesa rândurile individual. În plus, resetează metadatele asociate tabelului (cum ar fi seed-ul contorului `IDENTITY`).

---

## 🎯 5. Întrebări Frecvente & Capcane la Examenul Certiport

### ❓ Întrebarea 1: Ce comandă folosim dacă vrem să adăugăm o coloană `email` într-un tabel existent: `UPDATE` sau `ALTER TABLE`?
> **Răspuns**: **`ALTER TABLE`**. Elevii confundă frecvent „a modifica tabelul” cu `UPDATE`. Rețineți: `UPDATE` modifică **datele/valorile** din celule (DML), în timp ce `ALTER TABLE` modifică **schema/structura** (DDL).

### ❓ Întrebarea 2: Putem folosi clauza `WHERE` împreună cu `TRUNCATE TABLE`?
> **Răspuns**: **STRICT INTERZIS!** Sintaxa `TRUNCATE TABLE NumeTabel WHERE id = 5;` este invalidă și va returna eroare de sintaxă. `TRUNCATE` poate doar să golească un tabel în întregime. Dacă doriți ștergere condiționată, singura opțiune este `DELETE FROM ... WHERE`.

### ❓ Întrebarea 3: Care este diferența dintre `INSERT INTO ... SELECT` și `SELECT ... INTO`?
> **Răspuns**: 
> - La `INSERT INTO ... SELECT`, tabelul țintă **trebuie să fie creat anterior**.
> - La `SELECT ... INTO`, tabelul țintă **nu trebuie să existe**; instrucțiunea îl creează automat la momentul execuției.

---

## 🛠️ 6. Mini-Exerciții Autonome de Consolidare (Self-Study)

Testează-ți cunoștințele rulând acest exercițiu în [OneCompiler](https://onecompiler.com/sqlserver):

### Scenariul: Administrarea Catalogului de Produse
1. Creează un tabel numit `Inventory` cu coloanele: `item_id (INT)`, `item_name (VARCHAR(30))`, `cost (DECIMAL(8,2))`.
2. Inserează 3 articole folosind `INSERT INTO ... VALUES`.
3. Folosește `ALTER TABLE` pentru a adăuga coloana `quantity INT`.
4. Actualizează cantitatea (`quantity`) la `50` pentru toate produsele cu costul mai mic de 100.
5. Creează o copie de siguranță automată a întregului tabel numită `Inventory_Backup` folosind comanda `SELECT ... INTO`.
6. Golește complet tabelul original `Inventory` folosind cea mai rapidă metodă DDL.

<details>
<summary>👉 Vezi Soluția de Verificare</summary>

```sql
-- 1. Creare
CREATE TABLE Inventory (
    item_id INT,
    item_name VARCHAR(30),
    cost DECIMAL(8,2)
);

-- 2. Inserare
INSERT INTO Inventory (item_id, item_name, cost)
VALUES 
    (1, 'Mouse USB', 25.50),
    (2, 'Tastatura Mecanica', 85.00),
    (3, 'Monitor 27 inch', 250.00);

-- 3. Adaugare coloana
ALTER TABLE Inventory
ADD quantity INT;

-- 4. Actualizare date
UPDATE Inventory
SET quantity = 50
WHERE cost < 100.00;

-- 5. Copiere automata intr-un tabel nou
SELECT * INTO Inventory_Backup
FROM Inventory;

-- 6. Golire rapida
TRUNCATE TABLE Inventory;

-- Verificare
SELECT * FROM Inventory;        -- (Gol)
SELECT * FROM Inventory_Backup; -- (Contine toate datele si noua coloana)
```
</details>
