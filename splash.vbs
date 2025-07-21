' Create splash window
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Show splash message
Set objWshShell = CreateObject("WScript.Shell")
objWshShell.Popup "Iniciando EcuapassBot, espere un momento...", 1, "EcuapassBot", 64
