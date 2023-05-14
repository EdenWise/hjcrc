:: Conversion: Markdown to Microsoft-Word.

:: Print everything: off
@echo off


:: Blank lines convert to paragraphs with indents
:: FAIL: docx+empty_paragraphs      : paragraph with indents---erroneous tip

:: CAN ONLY BE USED IN TEMPLATES!!!!!!
:: markdown to docx convert blank lines to paragraph
:::: F: --variable=indent
:::: F: --variable indent=2
:::: F: --variable=indent2

pandoc.exe .\hjcrc.md --from markdown --to docx --reference-doc=template.docx --wrap=none -o .\hjcrc.docx
:: --reference-doc=template.docx    : template of styles (allowed) to import
::                                  : (File > Options > Ribbon > Developer;Dev > DocTemplt > Organizer...)
:: --wrap=none                      : editor should wrap lines

:::: Conversion: Microsoft-Word to Markdown.
:::: .\pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx -o .\hjcrc.md
::::    paragraph with indents: --preserve-tabs   FAILS: docx is paragraphs with indents.
