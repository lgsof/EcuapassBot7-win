📄 [English version](README.en.md)

# 🧾 EcuapassBot – Automatización inteligente de documentos para ECUAPASS

**EcuapassBot** es una aplicación de escritorio diseñada para **automatizar la creación y transmisión de documentos aduaneros** exigidos por el sistema **ECUAPASS** del Ecuador, especialmente en el contexto del **transporte terrestre internacional de carga**.

Está orientada a **empresas transportistas**, **agentes de aduana** y **operadores logísticos**, y permite generar y transmitir automáticamente documentos como:

- 📝 **Cartas de porte**
- 📦 **Manifiestos de carga**
- 📄 **Declaraciones de Tránsito**

Gracias a su capacidad de extracción de datos desde los documentos PDF o desde el portal web donde se elaboran, EcuapassBot **minimiza errores de digitación**, **reduce tiempos de operación** y **mejora la eficiencia del proceso logístico y aduanero**.

---

## ⚙️ Características técnicas

EcuapassBot es una solución híbrida y modular compuesta por:

- ✅ **Frontend en Java (Swing)**: interfaz de usuario moderna y ligera, compatible con Windows.
- ✅ **Backend en Python**: empaquetado como ejecutable independiente con PyInstaller.
- ✅ **Extracción inteligente de datos**: 
  - Desde PDFs (mediante OCR y parsing estructurado)
  - Desde sitios web generadores de documentos (ej. Codebini o Sitios web de las empresas)
- ✅ **Robot de software avanzado**: 
  - Simula interacciones con el sistema ECUAPASS
  - Transmite documentos sin intervención manual
- ✅ **Actualización automática**: descarga y aplica parches desde GitHub sin sobrescribir archivos personalizados.
- ✅ **IA embebida (en desarrollo)**: autocompletado de campos basado en el historial de documentos.

---

## 🛠️ Tecnologías utilizadas

- `Java 17+` (Swing)
- `Python 3.10+` + `PyInstaller`
- `pdfminer`, `pytesseract` (OCR y parsing de texto)
- `xdelta3` (parcheo binario)
- `Git` (para actualizaciones)
- [Ollama](https://ollama.com) (para IA local, en desarrollo)

---

## 💼 Licenciamiento

EcuapassBot se licencia por país y empresa. Cada licencia incluye instalación en hasta **dos dispositivos**.

🔗 Más información comercial:  
👉 [https://softwareinteligente.github.io/productos/ecuapass-bot/](https://softwareinteligente.github.io/productos/ecuapass-bot/)

---

## LOG
Nov/19 v7.0.3.29.0: Release with SILOG updates.

Nov/19 v7.0.3.28.7: SILOG: update ciudad with capital if it is not in Ecuapass
Nov/18 v7.0.3.28.6: Improved getValueRE
Nov/18 v7.0.3.28.5: SILOG Two Empresa Names
Nov/18 v7.0.3.28.4: SILOG reqs: NIT, Contenerized, two MCIs.
Nov/16 v7.0.3.28.3: MCI:SILOG: Rewritten contenerized functions.
Nov/16 v7.0.3.28.2: Reorganized packages: bot, core, info. CPIs: removed zeros in Gastos. CPIs:SILOG: Removed "-" 
Nov/14 v7.0.3.28.1: Improved EcuCheck (Testing)
Nov/14 v7.0.3.28.0: sendFile to SLG.

Nov/14 v7.0.3.27.2: Fixing coords SLG. Removed "-" NIT
Nov/13 v7.0.3.27.1: Testing SLG

Nov/10 v7.0.3.24.6: Working on SILOG bot
Nov/10 v7.0.3.24.6: Improved getSubject: REs in resdata. Improved city from mult sources.
Nov/08 v7.0.3.24.5: Fixing Ciudad-Pais in CPI Inconterm
Nov/08 v7.0.3.24.4: DocRecord "-UPDATED" file.
Nov/08 v7.0.3.24.3: Improved GUI (flags colors). Improved warnings (no ERROR values).
Nov/05 v7.0.3.24.2: Improved appLauncher. Using LOW warning. OTROS is LOW
Nov/04 v7.0.3.24.1: Added EcuCloud sendFile (for binary files as settings.bin)
Nov/03 v7.0.3.24: Full NIT. Improved getSubjectInfo BTST. Added C-P to CPI address. Improved GUI TopDialog.

Nov/02 v.7.0.3.23.5: Working on TSP COL reqs: NIT, Address, ...., Dialog win.

Oct/30 v.7.0.3.23.4: Added sndLG syek (No testes).

Sep/11 v.7.0.3.23.3: Testing new bot image detector for Ecuapass images

Sep/11 v.7.0.3.23.2: Changed BTST CPI Format: txt01

Sep/11 v.7.0.3.23.1: Changed BTST MCI Format: txt02, txt03.

Sep/09 v.7.0.3.23: Added InfoClass for TSP: MCI-noObsInst. Modified EcuapassView and childs constructors.

Aug/29 v.7.0.3.22: Fixed EcuapassBot.bat: new TAG search.

Aug/28 v.7.0.3.21: Improved TCMI values (integer, floats). Improved BTST cantidad, embalaje

Aug/21 v.7.0.3.20: Fixed BTST OTROS. Improved Utils.checkLow with message

Aug/20 v.7.0.3.19: Improved BTST USD and id when OTROS

Aug/20 v.7.0.3.18: Fixed chars in json.load EcuInfoMnf

Aug/19 v.7.0.3.17: Added MenuIzq 1920x1080x150

Aug/14: v.7.0.3.15: Done BTST reqs: Apertura, Volumen. Fized TRNSCMI settings

Aug/13: v.7.0.3.12: Checking TCMI errors

Aug/11: v.7.0.3.11: Improved number handling. BtSt reqs: subjectInfo, Embalaje

Aug/06: v.7.0.3.10: Renew-Settings for CBINI (TSP, LGT). Improved install: down, exe, upd,run.

Aug/03: v.7.0.3.9: Improved Infos: extract, subject, cityCountry, container, id, certificates. InitPdf. GUI focus.

Jul/29: v.7.0.3.7: Improved Installer (WApp). Checking Login. Improved createClient: added BTST 

Jul/28: v.7.0.3.7: Improved getSubjectInfo. Moved GUI buttons

Jul/25: v.7.0.3.4: Improving getSubjectInfo

Jul/23: v.7.0.3.3: Improved GUI Top Bar: Icons Bot, Salir, Config, Whatsapp. Modified bat file.

Jul/21: r0.9875: Codebini Install. Fixed Settings onTop: Frame instead Dialog. Splash window.

Jul/20: r0.9875: Added VBS script to start with message. Modified GUI to start on top.

Jul/19: r0.9874: Added configuration update from the application

Jul/18: r0.9873: Improved getTipoEmbalaje, getTipoContainer, cloud creation.

Jul/15: r0.9872: Fixed TRNSCMI carga. Added "preformatCertificate" to MCI (for TSP).

Jul/12: r0.9871: Fixed COREDB Web access (urlPrefix, getDocFields)

Jul/11: r0.9870: Improved Installation GUI (simply, tabs, PO validations). 

Jul/10: r0.9870: Improved getCargaInfo.

Jul/10: r0.9869: Tested new patching model (no commander exe). Improved contenedores extraction.

Jul/10: r0.9868: Removed commander exe from git (created when patched)

Jul/09: r0.9867: EcuBot7 for COREBD::TSP (Without customs, no full test)

