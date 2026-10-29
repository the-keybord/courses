# Fișă Recapitulativă: Lecția 08 [DB1.8]
## Reguli de Bază pentru Temele Studiate (DML, DDL, DQL, Agregare, DCL) & Examenul Certiport ITS

---

### 📌 1. Ce am învățat astăzi (Quick Review — Toate Tiparele de Sintaxă)

- **1) `DML — INSERT, UPDATE, DELETE` (Manipularea Datelor — 12% din Examen)**:
  - **Cele 3 Metode de `INSERT`**:
    1. `INSERT INTO ... VALUES ...` *(inserare valori noi)*
    2. `INSERT INTO ... SELECT ... FROM ...` *(copiere într-un tabel care există deja)*
    3. `SELECT ... INTO ... FROM ...` *(creează automat un tabel nou și copiază datele în el)*
  - **`UPDATE`**: Respectă mereu ordinea în 3 pași: `UPDATE ...` -> `SET ...` -> `WHERE ...`
  - **`DELETE`**: Respectă mereu ordinea: `DELETE FROM ...` -> `WHERE ...` *(fără `*` sau nume de coloane între `DELETE` și `FROM`!)*
- **2) `DDL — CREATE, ALTER, DROP` (Gestionarea Obiectelor — 25% din Examen)**:
  - Orice comandă DDL se compune din **3 poziții obligatorii (`1 -> 2 -> 3`)**:
    - **Poziția 1 (Verbul)**: `CREATE` / `ALTER` / `DROP` / `TRUNCATE`
    - **Poziția 2 (Tipul Obiectului)**: `DATABASE` / `TABLE` / `PROCEDURE` / `VIEW` / `FUNCTION` / `LOGIN` / `USER` / `INDEX` / `COLUMN`
    - **Poziția 3 (Denumirea)**: `Student` / `Customer` / `School` / `Employee` etc.
- **3) `DQL — SELECT` (Interogarea Datelor — 25% din Examen)**:
  - Ordinea strictă a celor **5 clauze**:
    1. `SELECT TOP/DISTINCT ... FROM ...`
    2. `JOIN ... ON ... JOIN ... ON ...`
    3. `WHERE ... AND ... OR ...`
    4. `GROUP BY ... HAVING ... AND ... OR ...`
    5. `ORDER BY ... ASC/DESC`
- **4) `Funcțiile de Agregare` (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)**:
  - Pentru `SELECT c1, F(c2), F(c3), c4 FROM table GROUP BY c1, c4`:
    - **Coloane agregate (`aggregated columns`)**: `F(c2)`, `F(c3)`
    - **Coloane neagregate (`non-aggregated columns`)**: `c1`, `c4`
  - **Regula de Aur**: *„All and only non-aggregated columns must be in the GROUP BY”* (Toate și numai coloanele neagregate trebuie să fie în `GROUP BY`: `GROUP BY c1, c4`).
- **5) `DCL — GRANT, REVOKE, DENY` (Controlul Permisiunilor)**:
  - `GRANT ... ON ... TO ...` (ex: `GRANT INSERT ON dbo.products TO user_alexei`)
  - `REVOKE ... ON ... FROM ...` (ex: `REVOKE DELETE ON dbo.stock FROM user_adelina`)
  - `DENY ... ON ... TO ...` (ex: `DENY SELECT ON dbo.orders TO user_andrian`)

---

### 📚 2. Harta Sintactică Completă (Dicționarul Tiparelor)

| Sublimbaj | Comandă | Șablon Sintactic Exact | Capcană Frecventă de Evitat |
| :--- | :--- | :--- | :--- |
| **DML** | `INSERT` (1) | `INSERT INTO Tabel VALUES (...)` | Omiterea cuvântului `INTO` sau `VALUES` |
| **DML** | `INSERT` (2) | `INSERT INTO Tabel SELECT ... FROM ...` | Combinarea greșită a `VALUES` cu `SELECT` |
| **DML** | `INSERT` (3) | `SELECT ... INTO TabelNou FROM ...` | Plasarea lui `INTO` după `FROM` |
| **DML** | `UPDATE` | `UPDATE Tabel SET col = val WHERE ...` | Scrierea `UPDATE FROM` sau `WHERE` înainte de `SET` |
| **DML** | `DELETE` | `DELETE FROM Tabel WHERE ...` | Scrierea `DELETE * FROM` (invalid în T-SQL) |
| **DDL** | `1 -> 2 -> 3` | `<CREATE/ALTER/DROP/TRUNCATE> <TIP> <Nume>` | Omiterea tipului de obiect (ex: `DROP Customer`) |
| **DQL** | `SELECT` (1–5) | `SELECT..FROM` -> `JOIN..ON` -> `WHERE` -> `GROUP BY..HAVING` -> `ORDER BY` | Plasarea `WHERE` după `GROUP BY` sau `ORDER BY` la mijloc |
| **DCL** | `GRANT/DENY/REVOKE` | `GRANT/DENY ... ON ... TO` vs `REVOKE ... ON ... FROM` | Confundarea prepoziției `TO` cu `FROM` la `REVOKE` |

---

### ⚖️ 3. Ponderea Oficială a Subiectelor în Examenul Certiport ITS Databases

| Nr. | Domeniu Evaluat la Examen | Pondere (%) | Ce Trebuie Stăpânit Perfect |
| :---: | :--- | :---: | :--- |
| **1)** | **Database design (teorie)** | **25%** | Chei (`Primary Key`, `Foreign Key`), normalizare (`1NF`, `2NF`, `3NF`), tipuri de date. |
| **2)** | **Database Object Management (DDL)** | **25%** | Formula `1 -> 2 -> 3` (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`), constrângeri și DCL. |
| **3)** | **Data Retrieval (DQL / SELECT)** | **25%** | Ordinea celor 5 clauze în `SELECT`, `JOIN ... ON`, `HAVING` și regula `GROUP BY c1, c4`. |
| **4)** | **Data Manipulation (DML)** | **12%** | Cele 3 metode de `INSERT`, `UPDATE ... SET ... WHERE`, `DELETE FROM ... WHERE`. |
| **5)** | **Troubleshooting (erori)** | **13%** | Depistarea erorilor de sintaxă, constrângeri încălcate, `GROUP BY` incomplet, Backup/Restore. |

---

### 💻 4. Exemple Cheie de Cod T-SQL (Toate Tiparele pe o Singură Pagină)

```sql
-- 1. DML: Cele 3 tipuri de INSERT, UPDATE si DELETE
INSERT INTO Products VALUES (1, 'Laptop', 1500.00);
INSERT INTO ArchiveProducts SELECT * FROM Products WHERE price > 1000.00;
SELECT * INTO ProductsBackup FROM Products;

UPDATE Products SET price = 1400.00 WHERE product_id = 1;
DELETE FROM Products WHERE product_id = 1;

-- 2. DDL (Formula 1 -> 2 -> 3: Actiune + Tip Obiect + Denumire)
CREATE TABLE Customer (customer_id INT PRIMARY KEY, full_name VARCHAR(50));
ALTER TABLE Customer ADD email VARCHAR(100);
TRUNCATE TABLE Customer;

-- 3. DQL (Ordinea 1-5) & Regula Functiilor de Agregare (c1, F(c2), F(c3), c4)
SELECT TOP 5 c1, COUNT(c2), SUM(c3), c4
FROM SalesTable s
INNER JOIN Stores st ON s.store_id = st.store_id
WHERE s.active = 1
GROUP BY c1, c4
HAVING SUM(c3) > 500
ORDER BY c1 ASC;

-- 4. DCL: GRANT, REVOKE, DENY
GRANT INSERT ON dbo.products TO user_alexei;
REVOKE DELETE ON dbo.stock FROM user_adelina;
DENY SELECT ON dbo.orders TO user_andrian;
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Verificarea în 3 secunde la `GROUP BY`**: Încercuiește în `SELECT` toate coloanele care **NU** au în fața lor `COUNT`, `SUM`, `AVG`, `MIN` sau `MAX`. Lista din `GROUP BY` trebuie să fie **100% identică** cu acele coloane!
- **`TOP` și `DISTINCT` stau doar lângă `SELECT`**: Niciodată la sfârșitul interogării și niciodată în `WHERE`.
- **`HAVING` stă doar lângă `GROUP BY`**: Se folosește atunci când condiția de filtrare conține o funcție de agregare (ex: `HAVING COUNT(id) > 3`).
- **`ORDER BY` este mereu ultima linie**: Orice interogare în care `ORDER BY` apare înainte de `WHERE`, `GROUP BY` sau `HAVING` este garantat greșită!

