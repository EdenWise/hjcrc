:: About: Text convert from Markdown to Microsoft-Word.

:: Path: Add executables to path.
set PATH=D:\;%PATH%

:: Print everything: off
@echo off

:: Personal: Add pandoc.exe to path of executables:
echo "`$env:Path += `"D:;`""

pandoc.exe .\hjcrc.md --from markdown+inline_notes+escaped_line_breaks --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
