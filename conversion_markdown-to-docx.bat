:: Conversion: Markdown to Microsoft-Word.

:: Print everything: off
@echo off

:::: Conversion: Microsoft-Word to Markdown.
:::: .\pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx -o .\hjcrc.md
::::      --wrap=none                       : editor should wrap lines

:::: Template building (original style of hjcrc.docx import to template)
::::    > Generate allowable style template:
::::      pandoc --print-default-data-file reference.docx --variable indent2m -o template.docx 
::::    > Word-and-hjcrc.docx: File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > 
::::        Organizer > Copy allowable styles to right and save
::::    > Word-and-tmple.docx: Organizer > copy styles to left.
:::: F: --variable=indent
:::: F: --variable indent=2
:::: F: --variable indent2

pandoc.exe .\hjcrc.md --from markdown --to docx --reference-doc=template.docx --wrap=none -o .\hjcrc.docx
:: --reference-doc=template.docx    : template of styles (allowed to import), see Template building.
::                                  : 
:: --wrap=none                      : editor should wrap lines

:: docx with paragraph indents
:: FAIL :: docx-md :: --preserve-tabs                   : fails because docx is paragraphs with indents.
:: FAIL :: docx+empty_paragraphs                        : erroneous tip?
:: FAIL :: md-docx :: --preserve-tabs                   : fails because tabs are different then indents?
:: Fixes blank lines?
:: [General writer}(https://pandoc.org/MANUAL.html#general-writer-options-1) options may help.