# Fișă Recapitulativă: Lecția 03 [DB1.3]
## Interogarea Datelor cu SELECT, Operatori de Comparare & Logica Booleană

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Anatomia `SELECT`**: 
  - `SELECT` alege coloanele afișate (**proiecția**).
  - `FROM` specifică tabelul sursă.
  - `WHERE` filtrează rândurile pe baza unei condiții logice (**predicat**).
- **Operatori de comparare**: `=`, `<>`, `<`, `>`, `<=`, `>=`.
  - *Notă Certiport*: Operatorul standard ANSI pentru „diferit de” este **`<>`** (nu `!=`).
- **Predicatul `BETWEEN`**: `WHERE valoare BETWEEN 100 AND 500` include și capetele `100` și `500` (**limite incluzive**).
- **Tratarea valorilor `NULL`**:
  - `NULL` reprezintă absența informației (valoare necunoscută), nu zero (`0`) sau text vid (`''`).
  - **Nu putem compara cu `=`**: `coloana = NULL` produce `UNKNOWN` și nu returnează nimic!
  - Folosim exclusiv: **`IS NULL`** (câmp gol) și **`IS NOT NULL`** (câmp completat).
- **Căutarea după șabloane (`LIKE`)**:
  - **`%`** = zero, unul sau oricâte caractere (`'P%'` = începe cu P; `'%a%'` = conține a).
  - **`_`** = exact un singur caracter (`'P__a'` = 4 litere: P + 2 caractere + a).
- **Apartenența la o listă (`IN`)**: `WHERE id IN (1, 3, 5)` este echivalentul compact al mai multor condiții `OR`.
- **Logica booleană & Precedența operatorilor**:
  - `AND` cere ambele condiții adevărate.
  - `OR` cere cel puțin o condiție adevărată.
  - `NOT` inversează adevărul.
  - **Ierarhia de execuție fără paranteze**: **`NOT` > `AND` > `OR`**. `AND` se evaluează întotdeauna înaintea lui `OR`!

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Exemple / Sintaxă |
| :--- | :--- | :--- |
| **Projection** | Selectarea doar a anumitor coloane din tabel | `SELECT firstname, lastname` |
| **Predicate** | Condiție logică evaluată în clauza `WHERE` | `WHERE salary > 5000` |
| **NULL** | Marcator special ce indică un câmp gol / fără valoare | `salary IS NULL` |
| **Wildcard** | Caractere speciale folosite în `LIKE` pentru șabloane | `%` (oricâte) și `_` (exact 1) |
| **Conjunction (`AND`)** | Conjuncție logică: returnează True doar dacă ambele sunt True | `eye = 'Green' AND fur = 'Black'` |
| **Disjunction (`OR`)** | Disjuncție logică: returnează True dacă cel puțin una e True | `fur = 'Gray' OR fur = 'Black'` |
| **Operator Precedence** | Ordinea de evaluare a expresiilor logice | `NOT` are prioritate maximă, apoi `AND`, apoi `OR` |

---

### 💻 3. Exemple Cheie de Cod T-SQL

```sql
-- 1. Comparare si intervale incluzive
SELECT * FROM Contacts WHERE salary >= 10000;
SELECT * FROM Contacts WHERE salary BETWEEN 5000 AND 13000; -- Include 5000 si 13000!

-- 2. Verificarea campurilor goale (NULL)
SELECT * FROM Contacts WHERE salary IS NULL;     -- CORECT (camp gol)
SELECT * FROM Contacts WHERE salary IS NOT NULL; -- CORECT (camp completat)
-- SELECT * FROM Contacts WHERE salary = NULL;   -- GRESIT! Nu returneaza nimic.

-- 3. Sabloane cu LIKE si lista cu IN
SELECT * FROM Contacts WHERE lastname LIKE 'P%';     -- Incepe cu P (Popescu, Popa)
SELECT * FROM Contacts WHERE lastname LIKE 'P__a';   -- Exact 4 litere (Popa)
SELECT * FROM Contacts WHERE id IN (1, 3, 5);        -- id este 1, 3 sau 5

-- 4. Precedenta operatorilor pe tabelul Cats: Cu paranteze vs Fara
-- Cu paranteze: pisici cu ochi verzi care sunt gri sau negre (2 randuri)
SELECT * FROM Cats
WHERE eye_color = 'Green' AND (fur_color = 'Gray' OR fur_color = 'Black');

-- Fara paranteze: pisici verzi si gri, PLUS ORICE pisica neagra (3 randuri!)
SELECT * FROM Cats
WHERE eye_color = 'Green' AND fur_color = 'Gray' OR fur_color = 'Black';
```

---

### ⚠️ 4. Reguli de Aur & De Reținut
- **Capcana `NULL`**: Nu scrie niciodată `= NULL`. Folosește strict `IS NULL` sau `IS NOT NULL`.
- **Precedența `AND` > `OR`**: Pune întotdeauna paranteze rotunde `(...)` în jurul condițiilor legate cu `OR` când le combini cu `AND`.
- **Capcana auto-excluderii**: Condiția `WHERE fur_color = 'Gray' AND fur_color = 'Black'` va returna **0 rânduri**, deoarece aceeași coloană nu poate avea simultan două valori diferite pe același rând. Folosește `OR`.
