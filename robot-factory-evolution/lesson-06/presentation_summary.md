# Directivă de Generare pentru Motorul AI de Prezentări (Gamma / Canva AI / Tome)

## Instrucțiuni Stricte de Procesare
1. **Public Țintă & Ton**: Cursanți de 11–15 ani din programul de robotică avansată „Robot Factory: Evolution”. Tonul trebuie să fie clar, tehnic, direct și captivant.
2. **Restricție de Conținut**: Folosiți EXCLUSIV informațiile din sinteza de mai jos, structurate în 5 secțiuni logice.
3. **Succesiune Cronologică**:
   - Secțiunea 1: Ce sunt roboții Line Follower și unde sunt folosiți.
   - Secțiunea 2: Senzorul Infraroșu (IR) – cum distinge albul de negru prin reflexie și absorbție.
   - Secțiunea 3: Algoritmi de urmărire a liniei – Bang-Bang cu 2 senzori vs matrice de senzori cu control proporțional PWM.
   - Secțiunea 4: Roboții Maze Solver și tipurile de senzori folosiți (ultrasonici/LiDAR pentru pereți vs IR/culoare pentru linii).
   - Secțiunea 5: Cum găsesc roboții ieșirea din labirint – Regula Mâinii Stângi și optimizarea memoriei de drum.
4. **Stil Vizual Recomandat**: Mod întunecat profesional (dark mode), fundaluri în nuanțe de ardezie (#1E293B), elemente structurate în carduri tehnice, accente cyan (#06B6D4) și galben cald (#F59E0B).

---

# Sinteză Narativă: Roboți Line Follower, Maze Solver & Senzori de Navigație

Roboții mobili autonomi sunt construiți pentru a naviga în medii structurate fără intervenția unui operator uman. Două dintre cele mai populare și eficiente categorii de roboți autonomi sunt roboții care urmăresc o linie predefinită (Line Followers) și roboții capabili să găsească singuri ieșirea dintr-un labirint (Maze Solvers).

Roboții Line Follower sunt utilizați pe scară largă în depozite logistice automate și fabrici industriale pentru transportul autonom al mărfurilor, ghidându-se după linii vizibile desenate pe podea. În competițiile de robotică, traseul este marcat de regulă cu o bandă neagră pe fundal alb. Pentru a detecta acest traseu, robotul folosește senzori optici Infraroșu (IR) reflexivi, precum modulul TCRT5000. Fiecare senzor conține un LED care emite lumină infraroșie invizibilă (850–950 nm) îndreptată spre sol și un fototranzistor receptor. Suprafața albă reflectă aproape toată lumina înapoi în receptor, în timp ce banda neagră absoarbe lumina emisă, lăsând receptorul în întuneric. Pentru o citire stabilă și fără erori, senzorul trebuie montat la o înălțime optimă de 3 până la 8 milimetri deasupra solului.

Menținerea robotului pe traseu se realizează prin algoritmi de control adaptați numărului de senzori. În varianta simplă Bang-Bang, robotul folosește doi senzori plasați în stânga și în dreapta liniei: când ambii văd alb, robotul merge înainte; dacă senzorul stâng atinge linia neagră, motorul stâng este oprit pentru a vira stânga, iar dacă senzorul drept atinge linia, motorul drept se oprește. Acest algoritm este simplu, dar produce o mișcare oscilantă continuă. În schimb, roboții rapizi folosesc o matrice de 5 până la 8 senzori aliniați într-o bară transversală și control proporțional prin semnale PWM, calculând exact deviația față de centrul liniei pentru a asigura viraje fluide la viteze mari.

Pe de altă parte, roboții Maze Solver au misiunea de a rezolva labirinturi complexe. Tipurile de senzori folosiți depind direct de structura labirintului. În labirinturile clasice tridimensionale cu pereți fizici, roboții folosesc senzori de distanță ultrasonici sau scanere laser LiDAR orientate în față și în lateral pentru a nu atinge pereții. În labirinturile plate desenate pe sol ca o grilă de linii, roboții folosesc senzori infraroșu pentru a detecta joncțiunile la 90 de grade și senzori de culoare RGB pentru marcaje speciale de viraj sau oprire.

Pentru a găsi ieșirea dintr-un labirint necunoscut, robotul aplică un algoritm de explorare numit Regula Mâinii Stângi (Left-Hand Rule). La fiecare intersecție întâlnită, robotul respectă o ierarhie strictă de decizie: alege cu prioritate virajul la stânga; dacă nu poate la stânga, merge înainte; dacă înainte este blocat, virează la dreapta; iar dacă ajunge într-o fundătură, se rotește cu 180 de grade. În timpul explorării, microcontrolerul memorează toate deciziile luate. La a doua cursă prin labirint, robotul elimină automat din memorie secvențele care au dus la fundături și parcurge direct cel mai scurt drum spre ieșire.
