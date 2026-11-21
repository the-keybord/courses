# Quiz Kahoot: Lecția 11 [RBF2.11] – Validarea Tracțiunii & Viziunea Artificială ESP32-CAM

- **Cod Lecție**: RBF2.11
- **Număr Întrebări**: 10
- **Platformă Recomandată**: Kahoot!
- **Format Răspunsuri**: 4 variante per întrebare, ultra-scurte (1–3 cuvinte), lungimi strict echilibrate.
- **Focalizare**: 100% Teorie inginerească (mecanica conectorilor, polaritate electrică, senzori optici, PSRAM, protocoale radio și FPV). Fără întrebări despre pași de asamblare sau butoane de software.

---

### Întrebarea 1
De ce un pin sertizat trebuie să facă un „click” mecanic în carcasă?
- A) Pentru blocare mecanică *(Corect)*
- B) Pentru răcirea firului
- C) Pentru design estetic
- D) Pentru semnal sonor
> **Explicație**: Clapeta elastică din interiorul carcasei de plastic blochează contactul metalic; fără acest declic, vibrațiile motoarelor determină retragerea firului și apariția deconectărilor.

---

### Întrebarea 2
Ce se întâmplă la alimentarea unui driver de motoare cu polaritatea inversată?
- A) Se inversează motoarele
- B) Ardere termică instantanee *(Corect)*
- C) Viteza se dublează
- D) Crește tensiunea bateriei
> **Explicație**: Inversarea cablului pozitiv cu cel negativ provoacă un scurtcircuit direct prin joncțiunile interne ale tranzistoarelor MOSFET, distrugând cipul prin supraîncălzire extremă.

---

### Întrebarea 3
Ce componentă reprezintă modulul OV2640 de pe placa ESP32-CAM?
- A) Senzor optic foto-video *(Corect)*
- B) Regulator de tensiune
- C) Antenă radio externă
- D) Driver de motoare
> **Explicație**: OV2640 este un senzor optic miniatural de 2 Megapixeli, capabil să captureze imagini color și să livreze cadre video digitale către procesor prin magistrala DVP.

---

### Întrebarea 4
De ce modulul ESP32-CAM este echipat cu memorie externă PSRAM de 8 MB?
- A) Pentru stocare temporară *(Corect)*
- B) Pentru alimentare suplimentară
- C) Pentru amplificare sunet
- D) Pentru protecție scurtcircuit
> **Explicație**: Memoria internă a procesorului este mult prea mică pentru imagini de mari dimensiuni; memoria PSRAM acționează ca un rezervor uriaș de cadre video (Frame Buffer).

---

### Întrebarea 5
Ce tehnologie fără fir oferă lățimea de bandă necesară pentru streaming video?
- A) Wi-Fi de mare viteză *(Corect)*
- B) Bluetooth Low Energy
- C) Raze laser infraroșu
- D) Semnale audio buzzer
> **Explicație**: Transmisia unui flux video continuu cere zeci de Megabiți pe secundă (Mbps), debit furnizat exclusiv de standardele rețelelor fără fir Wi-Fi.

---

### Întrebarea 6
De ce protocolul Bluetooth Low Energy (BLE) nu este utilizat pentru video?
- A) Viteză de date mică *(Corect)*
- B) Consum de curent uriaș
- C) Undele sale dăunează
- D) Necesită fire metalice
> **Explicație**: BLE este conceput pentru pachete scurte de date de control și telemetrie cu un consum minuscul de energie, neavând debitul necesar pentru streaming video.

---

### Întrebarea 7
Ce rol are LED-ul de mare putere conectat la pinul GPIO 4?
- A) Iluminare pe întuneric *(Corect)*
- B) Semnalizare eroare cod
- C) Răcire pentru procesor
- D) Măsurare de distanță
> **Explicație**: LED-ul alb conectat la GPIO 4 funcționează ca un far de mare putere, oferind lumină suplimentară pentru camera video în misiunile de explorare nocturnă.

---

### Întrebarea 8
Ce semnifică prescurtarea FPV în pilotajul roboților și al dronelor?
- A) First-Person View *(Corect)*
- B) Fast Processing Velocity
- C) Final Power Voltage
- D) Frequency Pulse Value
> **Explicație**: FPV (First-Person View) înseamnă vizualizarea mediului exact din perspectiva camerei instalate pe robot, permițând pilotajul realist dintr-o cabină virtuală.

---

### Întrebarea 9
Ce format de compresie de imagine comprimă cadrele video ale camerei?
- A) Formatul comprimat MJPEG *(Corect)*
- B) Fișiere text TXT
- C) Unde sonore MP3
- D) Tabel tabelar CSV
> **Explicație**: Streaming-ul video pe microcontrolere utilizează Motion JPEG (MJPEG), comprimând fiecare cadru individual ca o imagine JPEG transmisă rapid prin protocolul HTTP.

---

### Întrebarea 10
Ce tensiune de alimentare stabilizată este recomandată pe pinul de intrare al camerei?
- A) Tensiune continuă 5.0V *(Corect)*
- B) Tensiune înaltă 230V
- C) Tensiune minusculă 0.5V
- D) Tensiune continuă 48V
> **Explicație**: Modulul ESP32-CAM dispune de propriul regulator intern LDO și funcționează optim când primește o șină curată și stabilă de 5.0V din sursa robotului.
