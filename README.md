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

