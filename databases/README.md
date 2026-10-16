# Curs: Baze de Date (T-SQL & Pregătire Certificare Certiport)

Bine ați venit la cursul de **Baze de Date Relaționale și Programare T-SQL**, calibrat conform standardelor internaționale de certificare **Certiport Information Technology Specialist (ITS): Databases**.

---

## 🎯 Viziunea & Obiectivele Cursului

- **Public Țintă**: **15 – 18 ani** (Liceeni, studenți și candidați pentru certificarea internațională Certiport ITS Databases).
- **Miza Academică**: **Nota 10 din oficiu la examenul de Bacalaureat la Informatică** (prin cumularea a 3 certificate internaționale din suita Certiport ITS, examenul *Databases* fiind unul dintre ele).
- **Durată Lecție**: **120 minute** (2 ore per sesiune).

Cursul este conceput pentru tineri care doresc să stăpânească conceptele fundamentale de modelare a datelor, proiectare a schemelor relaționale și interogare avansată în **T-SQL (Transact-SQL / Microsoft SQL Server)**.

### Pilonii Cheie ai Cursului:
1. **Standardul Certiport ITS Databases**:
   - Concepte de baze de date relaționale (tabele, rânduri, coloane, chei primare `PRIMARY KEY`, chei străine `FOREIGN KEY`, constrângeri `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`).
   - Limbajul de manipulare a datelor (**DML**): `SELECT`, `INSERT`, `UPDATE`, `DELETE`.
   - Limbajul de definire a datelor (**DDL**): `CREATE`, `ALTER`, `DROP`.
   - Clauze, operatori și agregare: `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING`, `LIKE`, `IN`, `BETWEEN`, funcții agregate (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
   - Relații între tabele & Joins: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`, `CROSS JOIN`.
   - Vederi (**Views**), Normalizare (1NF, 2NF, 3NF), Tranzacții de bază (`COMMIT`, `ROLLBACK`) și securitate / permisiuni (`GRANT`, `REVOKE`).
2. **Sintaxă Standard T-SQL**:
   - Toate exemplele practice, interogările și structurile de tabele folosesc exclusiv sintaxa **T-SQL (Microsoft SQL Server)**.
3. **Mediu de Lucru Online (OneCompiler)**:
   - Pentru exercițiile practice, elevii și profesorul utilizează platforma online **OneCompiler** (mediul SQL Server / T-SQL), fără a necesita instalări locale complexe de servere, asigurând o execuție sincronă și rapidă în clasă.
4. **Metodologie Sincronă Ghidată (Teacher-Led)**:
   - Durata fiecărei lecții este de **120 minute** (2 ore).
   - Elevii lucrează în timp real, sincron cu profesorul: fiecare concept teoretic este însoțit imediat de un exemplu practic executat la tastatură.
5. **Pachetul Didactic per Lecție (`README.md` & `student.md`)**:
   - **`README.md` (Ghidul Profesorului)**: Ghid complet pentru predare (timeline detaliat, scenarii de live coding, teorie aprofundată, blocuri de cod T-SQL gata de rulat în OneCompiler și un mini-quiz Certiport cu explicații pedagogice).
   - **`student.md` (Compendiu Elev)**: Ghid de sinteză și studiu individual pentru elevi (note de curs, glosar de termeni tehnici în engleză, exemple T-SQL comentate, explicații „sub capotă”, capcane de examen Certiport și exerciții autonome cu soluții).

---

## 🗺️ Harta Cursului & Catalogul Lecțiilor

| Nr. | Cod | Titlu Lecție & Materiale | Concepte Cheie & Practică OneCompiler | Stare |
| :---: | :---: | :--- | :--- | :---: |
| **01** | `DB1.1` | **Introducere în Baze de Date Relaționale, Tipuri de Date & Chei în T-SQL**<br>📖 [Ghid Profesor (README)](lesson-01/README.md) \| 📝 [Compendiu Elev (student.md)](lesson-01/student.md) | Scopul cursului & Certiport (miza notei 10 la BAC), RDBMS vs Excel, tabele/rânduri/coloane, tipuri de date (`INT`, `DECIMAL`, `BIT`, `VARCHAR`, `DATE`, `DATETIME`, `TIME`), crearea tabelului `Students`, dilema duplicatelor și analogia IDNP (`Primary Key`), dependențe tranzitive și separarea în două tabele relaționate prin `Foreign Key` (`Classes` & `Students`). | Finalizat |
| **02** | `DB1.2` | **Sublimbajele SQL (DDL, DML, DQL, DCL), Manipularea Schemelor & Modificarea Datelor**<br>📖 [Ghid Profesor (README)](lesson-02/README.md) \| 📝 [Compendiu Elev (student.md)](lesson-02/student.md) | Încălzire cu filtrări (`IS NULL`, `=`, `OR`, `LIKE`, `IN`), taxonomia formală SQL (DDL, DML, DQL, DCL), modificarea structurii tabelelor (`CREATE`, `ALTER TABLE` cu `ADD`, `DROP COLUMN`, `ALTER COLUMN`, `ADD/DROP CONSTRAINT`, `DROP TABLE`), cele 3 metode de inserare (`INSERT INTO VALUES`, `INSERT INTO SELECT`, `SELECT INTO`), modificarea cu `UPDATE` (riscul omitării `WHERE`), ștergerea cu `DELETE` vs `TRUNCATE TABLE`. | Finalizat |
| **03** | `DB1.3` | **Interogarea Datelor cu SELECT, Operatori de Comparare, Predicate Avansate & Logica Booleană (AND, OR, NOT)**<br>📖 [Ghid Profesor (README)](lesson-03/README.md) \| 📝 [Compendiu Elev (student.md)](lesson-03/student.md) | Anatomia `SELECT` și DQL, tabelul `Contacts`, operatori de comparare (`=`, `<>`, `<`, `>`, `<=`, `>=`), predicate de interval (`BETWEEN`, `NOT BETWEEN`), tratarea `NULL` (`IS NULL`, `IS NOT NULL`, logica tri-valentă), `LIKE` (`%`, `_`), `IN` / `NOT IN`, logica booleană pe tabelul `Cats` (valori discrete, precedența `AND` > `OR`, paranteze, contradicții logice și exercițiul interactiv *Guess the Output*). | Finalizat |
| **04** | `DB1.4` | **Constrângeri de Integritate în T-SQL (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE, CHECK, DEFAULT, IDENTITY)**<br>📖 [Ghid Profesor (README)](lesson-04/README.md) \| 📝 [Compendiu Elev (student.md)](lesson-04/student.md) \| 📊 [Kahoot (quiz.xlsx)](lesson-04/quiz.xlsx) | Test diagnostic intensiv de 28 de sarcini pe tabelul `Persons` (evaluare DQL și trimitere prin Google Form), anatomia unei coloane (Name, Type, Constraints), modelarea bazei auto (`Owner`, `Brand`, `Car`), simularea datelor corupte, aplicarea celor 8 constrângeri în T-SQL (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT`, `NULL`, `IDENTITY`), depanarea erorilor din SQL Server și popularea validă. | Finalizat |
| **05** | `DB1.5` | **Agregarea și Analiza Datelor în T-SQL (Funcții Agregate, GROUP BY, HAVING, ORDER BY & Aliasuri)**<br>📖 [Ghid Profesor (README)](lesson-05/README.md) \| 📝 [Compendiu Elev (student.md)](lesson-05/student.md) \| 📊 [Kahoot (quiz.xlsx)](lesson-05/quiz.xlsx) | Perspectiva antreprenorului, tabelul `totalsales`, funcții de agregare (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), impactul valorilor `NULL`, limitarea cu `DISTINCT`, clauza `GROUP BY` și regula coloanelor neagregate, diferența `HAVING` vs `WHERE`, sortarea `ORDER BY` (`ASC`/`DESC`) și aliasuri de coloană (`AS`). | Finalizat |

---

## 📖 Reguli pentru Agenți AI

Instrucțiunile specifice pentru acest curs sunt definite în fișierul [`AGENTS.md`](AGENTS.md).
