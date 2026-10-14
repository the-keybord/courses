# Fișă Recapitulativă: Lecția 05 [DB1.5]
## Agregarea și Analiza Datelor în T-SQL (GROUP BY, HAVING, ORDER BY & Aliasuri)

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Perspectiva de Afaceri**: Antreprenorii au nevoie de date sintetice (sume, medii, extreme), nu de citirea manuală a miilor de rânduri.
- **Funcții Agregate**: `COUNT()` (numără rânduri), `SUM()` (totalizează), `AVG()` (calculează media), `MIN()` (minim), `MAX()` (maxim).
- **Tratarea valorilor `NULL`**:
  - `COUNT(*)` numără **toate rândurile** (inclusiv cele cu `NULL`).
  - `COUNT(coloana)`, `SUM()`, `AVG()`, `MIN()`, `MAX()` **ignoră automat valorile `NULL`**.
- **`DISTINCT`**: Elimină duplicatele din rezultate (ex: lista unică de vânzători sau regiuni).
- **`GROUP BY`**: Grupează rândurile pe categorii și aplică funcțiile agregate pe fiecare grup.
- **Regula Coloanelor Neagregate**: Orice coloană din `SELECT` care nu este într-o funcție de agregare **trebuie obligatoriu inclusă în `GROUP BY`**.
- **`HAVING` vs `WHERE`**:
  - `WHERE` filtrează rândurile individuale **înainte** de agregare (nu acceptă funcții agregate!).
  - `HAVING` filtrează grupurile **după** agregare (acceptă condiții precum `HAVING SUM(sales) > 500000`).
- **`ORDER BY`**: Ordonează rezultatele (`ASC` = crescător/implicit, `DESC` = descrescător). Permite criterii multiple separate prin virgulă.
- **Aliasuri (`AS`)**: Redenumesc temporar coloanele (`AS TotalSales` sau direct `TotalSales`). Sunt permise în `ORDER BY`, dar **interzise în `WHERE` și `HAVING`**.

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Sintaxă T-SQL Cheie |
| :--- | :--- | :--- |
| **Aggregate Function** | Funcție care calculează o valoare scalară dintr-un set | `SUM(sales)`, `AVG(sales)` |
| **Group By** | Grupează datele pe categorii egale | `GROUP BY salesperson, region` |
| **Having** | Filtru aplicat pe grupuri agregate | `HAVING SUM(sales) > 500000` |
| **Order By** | Clauză de sortare a rezultatelor | `ORDER BY sales DESC` |
| **Alias** | Nume temporar atribuit unei coloane sau expresii | `SELECT SUM(sales) AS TotalSales` |
| **Distinct** | Clauză de eliminare a duplicatelor din afișare | `SELECT DISTINCT salesperson` |

---

### ⚖️ 3. Comparații Cheie: Filtrare & Numărare

| Criteriu | `WHERE` | `HAVING` |
| :--- | :--- | :--- |
| **Când rulează?** | Înainte de grupare | După agregare |
| **Ce filtrează?** | Rânduri individuale | Grupuri agregate |
| **Acceptă `SUM(...)`?** | **NU** (Eroare T-SQL!) | **DA** (`HAVING SUM(sales) > 1000`) |

| Funcție | Ce numără? | Tratare `NULL` |
| :--- | :--- | :--- |
| **`COUNT(*)`** | Toate rândurile tabelului | Numără și rândurile cu `NULL` |
| **`COUNT(sales)`** | Doar valorile prezente pe coloană | **Ignoră rândurile unde sales este `NULL`** |

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- 1. Agregare totala si pe vanzatori
SELECT COUNT(*) AS TotalRows, COUNT(sales) AS ValidSales, SUM(sales) AS TotalRevenue
FROM totalsales;

SELECT salesperson, SUM(sales) AS TotalSales
FROM totalsales
GROUP BY salesperson;

-- 2. Grup multi-coloana cu Having si Order By
SELECT 
    salesperson,
    region,
    SUM(sales) AS Revenue,
    COUNT(*) AS Transactions
FROM totalsales
WHERE year >= '2024'                    -- Filtru pe randuri individuale
GROUP BY salesperson, region            -- Ambele coloane din SELECT sunt in GROUP BY!
HAVING SUM(sales) >= 150000             -- Filtru pe suma grupului
ORDER BY Revenue DESC;                  -- Alias permis in ORDER BY!
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Ordinea Sintactică Obligatorie**: `SELECT` -> `FROM` -> `WHERE` -> `GROUP BY` -> `HAVING` -> `ORDER BY`.
- **Eroarea Coloanelor Neagregate**: Dacă ai o coloană în `SELECT` care nu e în `SUM/COUNT/AVG/etc.`, trebuie să o treci în `GROUP BY`.
- **Capcana Aliasurilor**: Nu folosi niciodată aliasul în clauza `WHERE` sau `HAVING` (scrii din nou `WHERE year = '2024'` sau `HAVING SUM(sales) > 100`, nu aliasul).
