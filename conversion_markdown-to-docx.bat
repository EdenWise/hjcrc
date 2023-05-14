:: Conversion: Markdown to Microsoft-Word.

:: Print everything verbatim: off
@echo off

:::: FYI: Conversion: Microsoft-Word to Markdown.
::::  .\pandoc.exe --from docx --to markdown --preserve-tabs --wrap=none .\hjcrc.docx -o .\hjcrc.md
:::: Paragraph with indents: --preserve-tabs              FAIL: Zero tabs produced? Docx has paragraphs with indents, only includes indents? and zero tabs in markdown.

:: --variable indent=
:: markdown to docx convert blank lines to paragraph

:: style.docx:  allowed styles to import (File>Options>Ribbon>Developer;Dev>DocTemplt>Organizer...)
:: --wrap=none: wrapping turn off (72 characters by default)
pandoc.exe .\hjcrc.md --from markdown --to docx --reference-doc=template.docx --wrap=none -o .\hjcrc.docx
:: Paragraph with indents: --to docx+empty_paragraphs   FAIL: Erroroneos tip