:: Text convert from Markdown to Microsoft Word

:: Print everything: off
@echo off

:: MS Word convert to:
:: FAILS: tabs still being converted to newlines: --preserve-
:: pandoc.exe -f docx -t markdown --preserve-tabs --wrap=none .\hjcrc_draft.docx -o .\hjcrc_draft.md
:: style.docx:  allowed styles to import (File>Options>Ribbon>Developer;Dev>DocTemplt>Organizer...)
:: --wrap=none: wrapping turn off (72 characters by default)
pandoc.exe -f markdown -t docx --reference-doc=style.docx --wrap=none .\hjcrc_draft.md -o .\hjcrc_draft.docx