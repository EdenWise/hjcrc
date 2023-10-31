:: About: Text convert from Markdown to Microsoft-Word.

:: Print everything: off
@echo off

:: Path: Add executables to path.
set PATH=%USERPROFILE%\Downloads
set PATH=D:\;%PATH%
set PATH=E:\;%PATH%
:: set batdir=%~dp0

:: set mypath=%cd%
:: https://stackoverflow.com/questions/17063947/get-current-batchfile-directory

pandoc.exe .\hjcrc.md --from markdown+inline_notes+escaped_line_breaks --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
