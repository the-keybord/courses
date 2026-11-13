# Fișă Recapitulativă: Lecția 09 [DB1.9]
## Relații Multi-Tabel în T-SQL (JOIN-uri, SELF JOIN) & Operatori de Mulțimi (UNION / UNION ALL)

---

### 📌 1. Ce am învățat astăzi (Quick Review)

- **1) De ce unim tabelele (`JOIN ... ON ...`)**: Împărțim datele în tabele normalizate (`Customers`, `Orders`) pentru a elimina redundanța, dar le unim la interogare prin condiția de egalitate dintre Cheia Primară și Cheia Străină: `ON c.customer_id = o.customer_id`.
- **2) `INNER JOIN` (Intersecția Matematică)**: Returnează exclusiv rândurile care au corespondență garantată în ambele tabele (doar clienții care au comenzi).
- **3) `LEFT OUTER JOIN` (sau `LEFT JOIN`)**: Păstrează **TOATE** rândurile din tabelul din stânga (`FROM`); pentru cele fără comenzi, coloanele din dreapta primesc valoarea **`NULL`**.
- **4) Capcana Numărul 1 Certiport (Găsirea Rândurilor Fără Pereche)**: Pentru a găsi clienții inactivi (fără nicio comandă), scriem: `LEFT JOIN Orders o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL`.
- **5) `CROSS JOIN` (Produsul Cartezian)**: Combină fiecare rând din A cu fiecare rând din B (N x M rânduri) și **NU are niciodată clauză `ON`**.
- **6) `SELF JOIN` (Ierarhii în Același Tabel)**: Alăturarea unui tabel cu el însuși folosind aliasuri diferite (`Employees e` pentru angajat și `Employees m` pentru managerul său).
- **7) `UNION` vs `UNION ALL`**: Combină rezultatele pe verticală. `UNION` elimină duplicatele (mai lent din cauza sortării `DISTINCT`), în timp ce `UNION ALL` păstrează toate rândurile (ultra-rapid). `ORDER BY` se plasează strict la sfârșitul ultimei interogări.

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic (EN) | Semnificație Didactică | Context Practic în T-SQL |
| :--- | :--- | :--- |
| **Inner Join** | Intersecție strictă între două tabele | `FROM A INNER JOIN B ON A.id = B.id` |
| **Left Outer Join** | Păstrarea completă a tabelului din stânga | `FROM Customers c LEFT JOIN Orders o ON ...` |
| **Full Outer Join** | Păstrarea tuturor rândurilor din ambele tabele | Afișarea tuturor clienților și a tuturor comenzilor orfane |
| **Cross Join** | Produs cartezian total (toate combinațiile) | `FROM Products CROSS JOIN Sizes` (fără `ON`) |
| **Self Join** | Relație ierarhică în interiorul aceluiași tabel | `FROM Employees e LEFT JOIN Employees m ON e.mgr_id = m.emp_id` |
| **Ambiguous Column** | Eroare de compilare când o coloană există în ambele tabele | Se rezolvă prefixând mereu cu aliasul tabelului: `c.id` |
| **Set Operator (UNION)** | Concatenarea verticală a două seturi de date | `SELECT city FROM A UNION SELECT city FROM B` |

---

### ⚖️ 3. Comparații Cheie: Taxonomia JOIN & UNION

| Tip Clauză | Ce Rânduri Păstrează? | Are clauză `ON`? | Cum arată rândurile necorelate? |
| :--- | :--- | :---: | :--- |
| **`INNER JOIN`** | Doar potrivirile din ambele tabele | **DA** | Sunt complet excluse din rezultat |
| **`LEFT JOIN`** | Toate din stânga + potrivirile din dreapta | **DA** | Coloanele din dreapta afișează `NULL` |
| **`RIGHT JOIN`** | Toate din dreapta + potrivirile din stânga | **DA** | Coloanele din stânga afișează `NULL` |
| **`FULL JOIN`** | Toate rândurile din ambele tabele | **DA** | Afișează `NULL` pe partea unde lipsește perechea |
| **`CROSS JOIN`** | Toate combinațiile posibile (N x M) | **NU** | Nu există noțiunea de lipsă de potrivire |

| Operator de Mulțime | Duplicate | Viteză / Resurse | Cerințe de Structură |
| :--- | :---: | :---: | :--- |
| **`UNION`** | **Eliminate** (doar rânduri unice) | Mai lent (sortare `DISTINCT`) | Același număr de coloane & tipuri compatibile |
| **`UNION ALL`** | **Păstrate** (toate aparițiile) | **Ultra-rapid** (concatenare brută) | Același număr de coloane & tipuri compatibile |

---

### 💻 4. Exemple Cheie de Cod T-SQL (OneCompiler)

```sql
-- 1. Identificarea clienților fără comenzi (Tipar Clasic Certiport)
SELECT c.customer_id, c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 2. Ierarhie Angajat -> Manager cu SELF JOIN
SELECT 
    e.employee_name AS Employee,
    ISNULL(m.employee_name, 'Top Level') AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id;

-- 3. Combinarea listelor de orașe fără duplicate (UNION)
SELECT city FROM Customers
UNION
SELECT city FROM Suppliers
ORDER BY city ASC; -- ORDER BY exclusiv la sfârșit!
```

---

### 🛡️ 5. Reguli de Aur & Capcane de Examen Certiport

1. **Prepoziția `ON` este OBLIGATORIE la `INNER` și `OUTER JOIN`**: Nu confundați `ON` cu `WHERE`. `ON` definește relația logică de legătură, în timp ce `WHERE` filtrează rezultatele după unire.
2. **Evitați eroarea `Ambiguous column name`**: Dacă o coloană (ex: `customer_id`) există în ambele tabele, este interzis să scrieți `SELECT customer_id`. Trebuie scris obligatoriu cu alias: `SELECT c.customer_id`.
3. **`CROSS JOIN` NU are niciodată `ON`**: Dacă vedeți într-o întrebare grilă `CROSS JOIN TableB ON ...`, opțiunea este 100% greșită sintactic.
4. **Regula celor 3 cerințe `UNION`**: (1) Număr egal de coloane, (2) Tipuri de date compatibile pe poziții similare, (3) Un singur `ORDER BY` la sfârșit.
