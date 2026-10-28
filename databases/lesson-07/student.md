# Fișă Recapitulativă: Lecția 07 [DB1.7]
## Securitatea Bazelor de Date, Strategii de Backup, Gestionarea Accesului (DCL) și Protecția Datelor

---

### 📌 1. Ce am învățat astăzi (Quick Review)
- **Cele 2 Mari Riscuri asupra Datelor**:
  1. **Datele pot fi furate (`Data Theft / Breach`)**: Scurgeri de carduri bancare, diagnostice medicale, `IDNP` sau liste de clienți (duc la furt financiar, șantaj și amenzi GDPR).
  2. **Datele pot să dispară (`Data Loss`)**: Erori umane (`DELETE` fără `WHERE`), arderea hard disk-ului sau atacuri `Ransomware`.
- **Strategii de Backup în SQL Server (Obligatoriu pentru Certiport!)**:
  - **`Full Backup`**: Copiază toată baza de date. *Avantaj*: Cel mai ușor și rapid de restaurat (1 singur fișier). *Dezavantaj*: Lent la creare și ocupă foarte mult spațiu.
  - **`Differential Backup`**: Copiază doar modificările făcute de la **ultimul `Full Backup`**. Crește de la o zi la alta. La restaurare necesită doar 2 fișiere: ultimul `Full` + ultimul `Differential`.
  - **`Transaction Log (Incremental) Backup`**: Copiază doar logurile de tranzacții de la **ultimul backup de orice tip**. Foarte rapid și mic, permite *Point-in-Time Recovery*, dar este **cel mai greu de restaurat** (trebuie aplicate toate fișierele de log în ordine strict cronologică!).
- **Gestionarea Accesului (`LOGIN`, `USER`, `ROLE`)**:
  - În OneCompiler ești automat `sysadmin`/`db_owner` într-un container izolat, dar pe un server real aplicăm **Principiul Privilegiului Minim (`Principle of Least Privilege`)**.
  - **`LOGIN`**: Autentificare la nivel de **Server** (intrarea în clădire).
  - **`USER`**: Autorizare la nivel de **Bază de Date** (intrarea într-un departament specific, legat de un `LOGIN`).
  - **`ROLE`**: Grup de securitate (ex: `db_datareader`, `db_datawriter`, `db_owner` sau roluri proprii create cu `CREATE ROLE`) care simplifică acordarea permisiunilor pentru mulți utilizatori simultan.
- **Sublimbajul DCL (`GRANT`, `REVOKE`, `DENY`)**:
  - **`GRANT ... TO`**: Acordă explicit o permisiune (`SELECT`, `INSERT`, `UPDATE`, `DELETE`, `EXECUTE`).
  - **`REVOKE ... FROM`**: Anulează/șterge o regulă `GRANT` sau `DENY` anterioară, lăsând utilizatorul cu drepturile moștenite din roluri.
  - **`DENY ... TO`**: Interzice explicit o acțiune. **Are prioritate absolută și suprascrie orice `GRANT`!**
- **Măsuri de Protecție a Datelor (`Masking`, `Encryption`, `Hashing`)**:
  - **`Data Masking`**: Ascunde parțial caracterele doar pe ecran la `SELECT` (ex: `XXXX-1234`), fără a modifica datele pe disc.
  - **`Encryption`**: Codifică datele pe disc (`Ciphertext`) folosind o cheie secretă; proces **reversibil (`Two-Way`)** prin decriptare (`Decryption`).
  - **`Hashing`**: Transformă textul într-o amprentă fixă; proces **strict ireversibil (`One-Way`)**, folosit exclusiv pentru **parole**.

---

### 📚 2. Termeni Noi (Dicționar Rapid)

| Termen Tehnic | Semnificație pe Scurt | Sintaxă T-SQL Cheie |
| :--- | :--- | :--- |
| **Full Backup** | Copie completă a întregii baze de date | `BACKUP DATABASE db TO DISK = '...'` |
| **Differential Backup** | Copie a modificărilor de la ultimul Full Backup | `BACKUP DATABASE db TO DISK = '...' WITH DIFFERENTIAL` |
| **Transaction Log Backup** | Copie incrementală doar a jurnalului de tranzacții | `BACKUP LOG db TO DISK = '...'` |
| **Login vs User** | Cont la nivel de Server vs Cont la nivel de Bază de Date | `CREATE LOGIN ... WITH PASSWORD` / `CREATE USER ... FOR LOGIN` |
| **Database Role** | Grup de securitate pentru gestionarea colectivă a drepturilor | `CREATE ROLE r;` / `ALTER ROLE r ADD MEMBER u;` |
| **GRANT / REVOKE / DENY** | Acordă / Retrage / Interzice explicit o permisiune | `GRANT SELECT ON tbl TO u;` / `DENY DELETE ON tbl TO u;` |
| **Dynamic Data Masking** | Mascarea datelor pe ecran pentru utilizatori neprivilegiați | `MASKED WITH (FUNCTION = 'partial(0, "XXXX-", 4)')` |
| **Encryption / Hashing** | Criptare reversibilă cu cheie vs Amprentă ireversibilă | `ENCRYPTBYPASSPHRASE(...)` / `HASHBYTES('SHA2_256', ...)` |

---

### ⚖️ 3. Comparații Cheie: Tipuri de Backup & Metode de Protecție

| Tip de Backup | Ce Salvează | Viteză & Spațiu la Creare | Complexitate la Restaurare (`Restore`) |
| :--- | :--- | :--- | :--- |
| **`Full Backup`** | Toată baza de date | Lent / Ocupă foarte mult spațiu | **Foarte simplu**: 1 singur fișier (`.bak`) |
| **`Differential Backup`** | Modificările de la ultimul `Full` | Mediu (crește progresiv zilnic) | **Simplu**: 2 fișiere (ultimul `Full` + ultimul `Diff`) |
| **`Transaction Log`** | Doar logurile de la ultimul backup | Foarte rapid / Fișiere foarte mici | **Complex**: `Full` + `Diff` + **toate** fișierele `Log` în ordine! |

| Metodă Protecție | Modifică Datele pe Disc? | Este Reversibilă? | Unde se Utilizează în Practică? |
| :--- | :--- | :--- | :--- |
| **`Data Masking`** | **Nu** (doar la afișarea cu `SELECT`) | Da (datele reale rămân în tabel) | Ecrane de Call Center, suport clienți (`XXXX-5821`, `aXXX@XXXX.com`) |
| **`Encryption`** | **Da** (salvează `Ciphertext`) | **DA (`Two-Way`)** — cu cheia secretă | Date confidențiale ce trebuie citite ulterior (carduri, `IDNP`, dosare medicale) |
| **`Hashing`** | **Da** (salvează `Hash Value`) | **NU (`One-Way`)** — ireversibil! | **Stocarea parolelor (`Passwords`)** și verificarea integrității |

---

### 💻 4. Exemple Cheie de Cod T-SQL

```sql
-- 1. Cele 3 tipuri de BACKUP in T-SQL
BACKUP DATABASE BankDB TO DISK = 'C:\Backups\Bank_Full.bak';
BACKUP DATABASE BankDB TO DISK = 'C:\Backups\Bank_Diff.bak' WITH DIFFERENTIAL;
BACKUP LOG BankDB TO DISK = 'C:\Backups\Bank_Log1.trn';

-- 2. Crearea LOGIN (Server), USER (Database), ROLE si Permisiuni DCL
CREATE LOGIN ana_login WITH PASSWORD = 'Password123!';
CREATE USER ana_user FOR LOGIN ana_login;

CREATE ROLE AnalystsRole;
ALTER ROLE AnalystsRole ADD MEMBER ana_user;

GRANT SELECT ON CompanySalaries TO AnalystsRole;
DENY UPDATE, DELETE ON CompanySalaries TO ana_user;
REVOKE DELETE ON CompanySalaries FROM ana_user;

-- 3. Data Masking, Encryption si Hashing (Executabil in OneCompiler)
CREATE TABLE UsersVault (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) MASKED WITH (FUNCTION = 'email()') NOT NULL,
    secret_ssn VARBINARY(256) NOT NULL,
    password_hash VARBINARY(64) NOT NULL
);

INSERT INTO UsersVault VALUES (
    1,
    'ana.popescu@company.ro',
    ENCRYPTBYPASSPHRASE('Key2026', 'IDNP:2005004001234'),
    HASHBYTES('SHA2_256', 'MySecretPass!')
);

-- Decriptarea valorii protejate cu ENCRYPTBYPASSPHRASE
SELECT email, CONVERT(VARCHAR(50), DECRYPTBYPASSPHRASE('Key2026', secret_ssn)) AS DecryptedSSN
FROM UsersVault;
```

---

### ⚠️ 5. Reguli de Aur & De Reținut pentru Examenul Certiport
- **`DENY` bate întotdeauna `GRANT`**: Dacă un utilizator primește `GRANT SELECT` printr-un rol (ex: `db_datareader`), dar are `DENY SELECT` aplicat pe contul său, el **NU** va putea citi datele!
- **`db_datawriter` NU include `SELECT`**: Rolul `db_datawriter` oferă drepturi de `INSERT`, `UPDATE` și `DELETE`, dar nu oferă automat dreptul de a citi (`SELECT`) datele. Pentru ambele, utilizatorul se adaugă atât în `db_datareader`, cât și în `db_datawriter`.
- **Prepozițiile DCL**: `GRANT` și `DENY` folosesc prepoziția **`TO`** (`GRANT SELECT ON Tbl TO User`), în timp ce `REVOKE` folosește prepoziția **`FROM`** (`REVOKE SELECT ON Tbl FROM User`).
- **`WITH NORECOVERY` vs `WITH RECOVERY`**: Când restaurăm un lanț de backup-uri (`Full` -> `Diff` -> `Log`), toate fișierele intermediare se restaurează cu `WITH NORECOVERY`, iar doar ultimul fișier folosește `WITH RECOVERY`.
- **Parolele nu se criptează, ci se aplică `Hashing`!** Dacă baza de date este spartă, o parolă criptată poate fi decriptată dacă atacatorul găsește cheia; în schimb, un `Hash` este matematic ireversibil.

