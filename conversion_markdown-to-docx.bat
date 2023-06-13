:: About: Text convert from Markdown to Microsoft-Word.

:: Personal: Print command to add my pandoc.exe to path of executables:
echo "`$env:Path += `"D:;`""

:: Print everything: off
@echo off

:: Path: Add executables to path.
set PATH=D:\;%PATH%

pandoc.exe .\hjcrc.md --from markdown+inline_notes+escaped_line_breaks --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
