# 🧾 EcuapassBot – Intelligent Automation of Customs Documents for ECUAPASS

**EcuapassBot** is a desktop application designed to **automate the creation and transmission of customs documents** required by Ecuador’s **ECUAPASS** system, particularly for **international land freight transport**.

It is aimed at **transport companies**, **customs agents**, and **logistics operators**, and enables the automatic generation and submission of key documents such as:

- 📝 **Waybills (Cartas de Porte)**
- 📦 **Cargo Manifests**
- 📄 **Customs Declarations**

Thanks to its ability to extract data from PDF documents and related web portals, EcuapassBot helps **minimize data entry errors**, **reduce processing time**, and **optimize customs and logistics workflows**.

---

## ⚙️ Technical Features

EcuapassBot is a hybrid, modular solution built with the following components:

- ✅ **Frontend in Java (Swing)**: lightweight and modern GUI, compatible with Windows.
- ✅ **Backend in Python**: packaged as a standalone executable using PyInstaller.
- ✅ **Smart Data Extraction**: 
  - From PDFs (using OCR and structured parsing)
  - From document generation web portals
- ✅ **Advanced Software Robot**: 
  - Simulates interactions with the ECUAPASS system
  - Submits documents without manual intervention
- ✅ **Auto-update mechanism**: fetches and applies patches from GitHub without overwriting customized files.
- ✅ **Embedded AI (in development)**: for autocomplete suggestions based on the document history.

---

## 🛠️ Technologies Used

- `Java 17+` (Swing GUI)
- `Python 3.10+` + `PyInstaller`
- `pdfminer`, `pytesseract` (OCR and text parsing)
- `xdelta3` (binary patching)
- `Git` (for updates)
- [Ollama](https://ollama.com) (for local AI integration, in development)

---

## 💼 Licensing

EcuapassBot is licensed per country and company. Each license allows installation on up to **two devices**.

🔗 Commercial information:  
👉 [https://softwareinteligente.github.io/productos/ecuapass-bot/](https://softwareinteligente.github.io/productos/ecuapass-bot/)

---

