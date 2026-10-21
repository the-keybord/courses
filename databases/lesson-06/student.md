# Fișă Recapitulativă: Lecția 06 [DB1.6]
## Instrumente de Reutilizare a Codului în T-SQL (Views, Stored Procedures & Functions)

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Ce este un View?**: Un **tabel virtual** a cărui compoziție este definită de o interogare `SELECT`. Nu stochează date fizice pe disc (stochează doar instrucțiunea SQL).
- **Securitate & Izolare (Exemplul `Staff`)**: În loc să duplicăm tabelele fizice pentru directori, contabili și paznici, creăm vederi care expun strict coloanele necesare fiecărui rol (`staff_id`, `name`), ascunzând datele confidențiale (`salary`, `password`).
- **Sincronizare în Timp Real**: Orice modificare (`INSERT`, `UPDATE`, `DELETE`) în tabelul fizic sursă este reflectată instantaneu în View la următoarea interogare.
- **Simplificarea Interogărilor Complexe (Exemplul `full_school_schedule`)**: În loc să scriem 3–4 clauze `INNER JOIN` de fiecare dată când dorim orarul școlar, salvăm interogarea într-un View și o interogăm simplu: `SELECT * FROM full_school_schedule`.
- **Coloane Calculate & Dependențe Tranzitive (Exemplul `Sales`)**: Nu adăugăm coloane derivate (`total_amount`) în tabele fizice, deoarece încalcă forma normală 3 (3NF) și creează risc de date contradictorii. Folosim un View pentru a centraliza formula oficială de calcul.
- **Proceduri Stocate (`Stored Procedures`)**: Blocuri de cod SQL salvate pe server, executate cu `EXEC`, capabile să primească parametri și să realizeze modificări de date atomice (ex: transferul de fonduri între conturi).
- **Funcții Definite de Utilizator (`User-Defined Functions`)**: Rutine de calcul care returnează întotdeauna o valoare (scalară sau tabel) și pot fi apelate direct în clauzele `SELECT`, `WHERE` sau `ORDER BY`.

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Sintaxă T-SQL Cheie |
| :--- | :--- | :--- |
| **View (Vedere)** | Tabel virtual definit pe baza unei interogări `SELECT` | `CREATE VIEW vw_Nume AS SELECT ...` |
| **Virtual Table** | Structură relațională fără date fizice proprii | `SELECT * FROM vw_Staff_SecurityGuard` |
| **Stored Procedure** | Bloc de cod T-SQL compilat și executabil | `CREATE PROCEDURE sp_Nume @p INT AS ...` |
| **Exec / Execute** | Comandă de invocare a unei proceduri stocate | `EXEC sp_TransferFunds @sender_id = 1, ...` |
| **User-Defined Function (UDF)** | Rutină care calculează și returnează o valoare | `CREATE FUNCTION dbo.fn_Nume (...) RETURNS ...` |
| **Parameter** | Variabilă de intrare definită cu prefixul `@` | `@account_id INT`, `@amount DECIMAL(10,2)` |
| **Transitive Dependency** | Coloană necheie dependentă de o altă coloană necheie | Încălcare 3NF rezolvată prin calcul în View |

---

### ⚖️ 3. Comparații Cheie: View vs Table & Procedure vs Function

| Criteriu | Tabel Fizic (`Table`) | Vedere Virtuală (`View`) |
| :--- | :--- | :--- |
| **Stocare Date** | Stochează date fizice pe hard disk | Nu stochează date fizice (doar codul `SELECT`) |
| **Sincronizare** | Necesită actualizare manuală (`INSERT`/`UPDATE`) | Se actualizează automat când tabelul de bază se schimbă |
| **Securitate** | Accesul acordat oferă vizibilitate pe tot tabelul | Permite acordarea de permisiuni doar pe coloane specifice |

| Criteriu | Procedură Stocată (`Stored Procedure`) | Funcție Scalară (`Function`) |
| :--- | :--- | :--- |
| **Cum se apelează?** | Separat, prin comanda `EXEC` | Direct în interiorul `SELECT`, `WHERE`, `ORDER BY` |
| **Valoare returnată** | Opțional (cod de stare sau seturi de date) | **Obligatoriu** returnează o valoare scalară sau tabel |
| **Modificări DML** | Permite `UPDATE`, `INSERT`, `DELETE` | **Strict interzis** să modifice starea bazei de date |

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- 1. Crearea unui View pentru securitate si coloane calculate
CREATE VIEW vw_SalesSummary AS
SELECT 
    sale_id,
    product,
    price,
    quantity,
    discount,
    (price * quantity) - discount AS total_amount
FROM Sales;

-- Interogarea vederii ca pe un tabel obisnuit
SELECT * FROM vw_SalesSummary WHERE total_amount > 500;

-- 2. Crearea si apelarea unei Proceduri Stocate
CREATE PROCEDURE sp_TransferFunds
    @sender_id INT,
    @receiver_id INT,
    @amount DECIMAL(10, 2)
AS
BEGIN
    UPDATE Accounts SET balance = balance - @amount WHERE account_id = @sender_id;
    UPDATE Accounts SET balance = balance + @amount WHERE account_id = @receiver_id;
END;

-- Invocarea procedurii
EXEC sp_TransferFunds @sender_id = 1, @receiver_id = 4, @amount = 25.00;

-- 3. Crearea si utilizarea unei Functii Scalare
CREATE FUNCTION dbo.fn_CalculatePriceWithVAT 
(
    @net_price DECIMAL(10, 2),
    @vat_rate DECIMAL(5, 2)
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    RETURN @net_price + (@net_price * (@vat_rate / 100.00));
END;

-- Apelarea functiei direct in SELECT
SELECT product, price, dbo.fn_CalculatePriceWithVAT(price, 20.00) AS PriceWithVAT
FROM Sales;
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Prefixul `@` Obligatoriu**: În T-SQL, toate variabilele și parametrii încep obligatoriu cu caracterul `@` (ex: `@sender_id`, `@amount`).
- **Numele de Schemă la Funcții (`dbo.`)**: Când apelați o funcție definită de utilizator în T-SQL, **trebuie să includeți schema `dbo.`** (ex: `dbo.fn_CalculatePriceWithVAT(...)`), altfel SQL Server nu va găsi funcția!
- **Nu rulați `UPDATE` în Funcții**: Funcțiile au un rol pur determinist/de calcul; orice încercare de a modifica date dintr-un tabel în interiorul unei funcții va genera eroare de compilare.
- **View-ul NU este o copie**: Dacă ștergeți un rând din tabelul fizic, el dispare automat și din View.
