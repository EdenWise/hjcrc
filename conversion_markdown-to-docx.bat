:: Print everything: off
@echo off

:: About: Text convert from Markdown to Microsoft-Word.

:: Path: Add executables to path.
set PATH=D:\;%PATH%

:: Personal: Add pandoc.exe to path of executables:
echo "`$env:Path += `"D:;`""

pandoc.exe .\hjcrc.md --from markdown+inline_notes --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
::  --wrap=none                      : editor should wrap lines
::  SVG conversion to PNG(!?) requires librsvg.
::    Manually: rsvg-convert --format=png --dpi-x=220 --dpi-y=220 --output <name>.png <name>.svg

:: To Do:
:: Convert to docx with paragraph indents:
::   FAIL pandoc --preserve-tabs             : fails because docx is paragraphs with indents?
:: Paragraph spacing (template.docx only allows basic format options.).
::   [General writer options](https://pandoc.org/MANUAL.html#general-writer-options-1) may help.
:: Microsoft-Word manual edits still required::
::   pictures:    text-wrap:tight, align:right, text-only:left
::   paragraphs:  