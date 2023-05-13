:: Text convert (Markdown to Microsoft Word).

:: Print everything: off
@echo off

:: FYI: Text convert (Microsoft Word to Markdown)
:: FAILS: tabs still being converted to newlines: --preserve-
:: .\pandoc.exe -f docx -t markdown --preserve-tabs --wrap=none .\hjcrc.docx -o .\hjcrc.md
:: style.docx:  allowed styles to import (File>Options>Ribbon>Developer;Dev>DocTemplt>Organizer...)
:: --wrap=none: wrapping turn off (72 characters by default)
pandoc.exe -f markdown -t docx --reference-doc=style.docx --wrap=none .\hjcrc.md -o .\hjcrc.docx