:: Print everything: off
@echo off

:: About: Text convert from Markdown to Microsoft-Word.

:: Path: Add executables to path.
set PATH=D:\;%PATH%

:: Personal: Add pandoc.exe to path of executables:
echo "`$env:Path += `"D:;`""

pandoc.exe .\hjcrc.md --from markdown+inline_notes --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
::        --wrap=none                      : editor should wrap lines
::        svgs require librsvg. Converts to png!? Something like?:
::            rsvg-convert --format=png --dpi-x=220 --dpi-y=220 --output <name>.png <name>.svg

:: docx with paragraph indents
:: FAIL :: docx-md :: --preserve-tabs                   : fails because docx is paragraphs with indents.
:: FAIL :: docx+empty_paragraphs                        : erroneous tip?
:: FAIL :: md-docx :: --preserve-tabs                   : fails because tabs are different then indents?
:: Fixes blank lines?
:: [General writer}(https://pandoc.org/MANUAL.html#general-writer-options-1) options may help.

:: Word tasks to do for hjcrc.docx:
:: pictures:    text-wrap:tight, align:right, text-only:left
:: paragraphs:  