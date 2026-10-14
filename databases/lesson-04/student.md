# Fișă Recapitulativă: Lecția 04 [DB1.4]
## Constrângeri de Integritate în T-SQL (Constraints)

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Marele Test de Diagnostic `Persons`**: Consolidarea a 28 de tipare de interogare T-SQL folosind operatorii de comparare, predicatele de interval (`BETWEEN`), căutarea pe text (`LIKE`), listele (`IN`), valorile absente (`IS NULL`) și logica booleană (`AND`, `OR`, `NOT`).
- **Anatomia unei Coloane**: Fiecare coloană are 3 elemente: **Column Name** + **Data Type** + **Constraints**.
- **Ce este o Constrângere (`Constraint`)**: O regulă de siguranță aplicată la nivel de coloană sau tabel care blochează salvarea datelor invalide, duplicate sau inconsistente.
- **`PRIMARY KEY`**: Identificator unic obligatoriu pentru fiecare rând. Interzice valorile duplicate și valorile `NULL`.
- **`FOREIGN KEY`**: Garantează **integritatea referențială** (*Referential Integrity*). Coloana copil trebuie să conțină doar valori care există deja în tabelul părinte.
- **`NOT NULL`**: Face coloana obligatorie (interzice câmpurile goale).
- **`UNIQUE`**: Garantează valori unice pe coloană. Permite existența mai multor constrângeri `UNIQUE` pe același tabel.
- **`CHECK`**: Validează că valorile respectă o condiție logică booleană (ex: `age >= 18`, format email cu `LIKE`).
- **`DEFAULT`**: Completează automat o valoare predefinită dacă valoarea este omisă la `INSERT` (ex: `DEFAULT GETDATE()`).
- **`NULL` (explicit)**: Declară coloana ca fiind opțională.
- **`IDENTITY(seed, increment)`**: Numerotare automată secvențială în T-SQL (specific Microsoft SQL Server; echivalentul `AUTO_INCREMENT` din MySQL).

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Sintaxă T-SQL Cheie |
| :--- | :--- | :--- |
| **Constraint** | Regulă de integritate impusă asupra coloanelor | `CONSTRAINT PK_Car PRIMARY KEY (car_id)` |
| **Primary Key** | Cheie primară unică, fără valori `NULL` | `owner_id INT PRIMARY KEY` |
| **Foreign Key** | Cheie străină legată de cheia primară părinte | `FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)` |
| **Not Null** | Câmp obligatoriu (respinge `NULL`) | `full_name VARCHAR(50) NOT NULL` |
| **Unique** | Valori unice pe coloană | `name VARCHAR(50) UNIQUE` |
| **Check** | Validare pe bază de expresie logică | `age INT CHECK (age >= 18)` |
| **Default** | Valoare implicită atribuită automat | `created_at DATETIME DEFAULT GETDATE()` |
| **Identity** | Incrementare automată de cheie în T-SQL | `INT IDENTITY(1, 1)` |

---

### ⚖️ 3. Comparații Cheie: Moduri de Declarare & Dialecte SQL

| Concepte Comparate | Column-Level (Inline) | Table-Level cu `CONSTRAINT` |
| :--- | :--- | :--- |
| **Sintaxă Cheie Primară** | `car_id INT PRIMARY KEY` | `CONSTRAINT PK_Car PRIMARY KEY (car_id)` |
| **Sintaxă Cheie Străină** | `brand_id INT FOREIGN KEY REFERENCES Brand(brand_id)` | `CONSTRAINT FK_Car_Brand FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)` |
| **Avantaj Tehnic** | Rapid de scris | Oferă nume explicit erorii (`PK_Car`, `FK_Car_Brand`) |

> **Diferență Certiport ITS**: T-SQL folosește exclusiv **`IDENTITY(1, 1)`**, în timp ce MySQL folosește `AUTO_INCREMENT`.

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- 1. Declararea tabelului parinte Brand
CREATE TABLE Brand (
    brand_id INT,
    name VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (brand_id)
);

-- 2. Declararea tabelului Owner cu validari de camp
CREATE TABLE Owner (
    owner_id INT IDENTITY(1, 1) PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE CHECK (email LIKE '%@%.%'),
    phone VARCHAR(20) NULL,
    age INT NOT NULL CHECK (age >= 18),
    birthdate DATE NOT NULL CHECK (birthdate <= '2008-09-27'),
    created_at DATETIME DEFAULT GETDATE()
);

-- 3. Declararea tabelului Car cu relatii (Foreign Keys)
CREATE TABLE Car (
    car_id INT,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL CHECK (year BETWEEN 1900 AND 2026),
    is_active BIT DEFAULT 1,
    owner_id INT NOT NULL,
    brand_id INT NOT NULL,
    CONSTRAINT PK_Car PRIMARY KEY (car_id),
    CONSTRAINT FK_Car_Owner FOREIGN KEY (owner_id) REFERENCES Owner(owner_id),
    CONSTRAINT FK_Car_Brand FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);
```

---

### ⚠️ 5. Reguli de Aur & De Reținut
- **Eroare `PRIMARY KEY`**: Apare când introduci un ID duplicat sau `NULL` (`Violation of PRIMARY KEY constraint`).
- **Eroare `FOREIGN KEY`**: Apare când introduci un ID copil care nu există în tabelul părinte (`The INSERT statement conflicted with the FOREIGN KEY constraint`).
- **Eroare `CHECK`**: Apare când datele nu respectă condiția impusă (`The INSERT statement conflicted with the CHECK constraint`).
- **Denumirea Obiectelor**: Toate tabelele, coloanele și constrângerile se denumesc exclusiv în **engleză** (`Owner`, `Brand`, `Car`, `full_name`, `model`).
