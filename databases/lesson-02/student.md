# Fișă Recapitulativă: Lecția 02 [DB1.2]
## Sublimbajele SQL (DDL, DML, DQL, DCL) & Manipularea Datelor

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Taxonomia SQL**:
  - **DDL (Data Definition Language)**: Creează și modifică **structura/schema** (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`). Construiește „dulapul”.
  - **DML (Data Manipulation Language)**: Lucrează cu **datele/rândurile** (`INSERT`, `UPDATE`, `DELETE`). Pune sau scoate „cărțile din dulap”.
  - **DQL (Data Query Language)**: Extrage date pentru vizualizare (`SELECT`).
  - **DCL (Data Control Language)**: Drepturi și permisiuni de acces (`GRANT`, `REVOKE`).
- **Modificarea structurii (`ALTER TABLE`)**: Adaugă coloane noi (`ADD`), elimină coloane (`DROP COLUMN`) sau modifică tipul de date (`ALTER COLUMN`), fără a șterge datele existente.
- **Inserarea datelor**:
  1. `INSERT INTO ... VALUES` (rânduri noi scrise manual).
  2. `INSERT INTO ... SELECT` (copiază într-un tabel care **există deja**).
  3. `SELECT ... INTO` (creează automat un tabel **nou** din rezultatul interogării).
- **Modificarea datelor (`UPDATE`)**: Schimbă valori în rânduri existente. **Necesită obligatoriu `WHERE`** pentru a nu modifica tot tabelul!
- **Ștergerea datelor**: `DELETE FROM` (rând cu rând, DML) vs `TRUNCATE TABLE` (dezalocare instantanee de pagini, DDL).

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Exemple / Comenzi |
| :--- | :--- | :--- |
| **DDL** | Limbaj de definire a structurii/schemelor | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| **DML** | Limbaj de manipulare a datelor (rândurilor) | `INSERT`, `UPDATE`, `DELETE` |
| **DQL** | Limbaj de interogare / citire | `SELECT` |
| **DCL** | Limbaj de control al accesului și securității | `GRANT`, `REVOKE` |
| **Schema** | Structura formală a bazei de date (coloane, tipuri, reguli) | Definiția tabelului `Customers` |
| **TRUNCATE** | Golirea ultra-rapidă a unui tabel la nivel de memorie | `TRUNCATE TABLE Customers;` |
| **Constraint** | Regulă de validare impusă pe o coloană | `CHECK (id > 0)` |

---

### ⚖️ 3. Comparație Rapidă: DELETE vs. TRUNCATE TABLE

| Criteriu | `DELETE FROM` | `TRUNCATE TABLE` |
| :--- | :--- | :--- |
| **Categorie SQL** | **DML** (manipulare date) | **DDL** (definire structură) |
| **Permite clauza `WHERE`?** | **DA** (ștergere țintită) | **NU** (golește întotdeauna tot) |
| **Viteză pe volum mare** | Mai lent (scrie fiecare rând în log) | **Ultra-rapid** (dezalocă paginile de disc) |
| **Resetare contor `IDENTITY`** | **NU** (continuă de la ultimul ID) | **DA** (resetează numărătoarea la 1) |

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- A. Modificari structurale (DDL)
ALTER TABLE Customers ADD email VARCHAR(100);       -- Adauga coloana
ALTER TABLE Customers DROP COLUMN email;            -- Sterge coloana
ALTER TABLE Customers ALTER COLUMN firstname VARCHAR(50); -- Modifica tipul

-- B. Inserare rapida si copiere (DML / DDL)
INSERT INTO Customers (id, firstname) VALUES (1, 'Minnie'); -- Direct
SELECT * INTO Customers_Backup FROM Customers;             -- Copie in tabel NOU

-- C. Modificare sigura a datelor (DML)
UPDATE Customers
SET firstname = 'Ion'
WHERE id = 1; -- ATENTIE: fara WHERE se modifica toate randurile!

-- D. Stergerea datelor
DELETE FROM Customers WHERE id = 1; -- Sterge un singur rand (DML)
TRUNCATE TABLE Customers;           -- Goleste complet tabelul (DDL)
DROP TABLE Customers;               -- Distruge tabelul cu totul (DDL)
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Capcana `UPDATE`**: Dacă uiți clauza `WHERE`, **toate rândurile** vor primi aceeași valoare.
- **`TRUNCATE` nu acceptă `WHERE`**: `TRUNCATE TABLE Customers WHERE id = 1;` produce eroare de sintaxă.
- **`ALTER TABLE` vs `UPDATE`**: `ALTER TABLE` schimbă coloanele din schemă (DDL). `UPDATE` schimbă conținutul din celule (DML).
