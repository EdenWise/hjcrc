:: Conversion: Markdown to Microsoft-Word.

:: Print everything: off
@echo off

:::: Conversion: Microsoft-Word to Markdown.
:::: .\pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx -o .\hjcrc.md
::::      --wrap=none                       : editor should wrap lines

:::: Template building (original style of hjcrc.docx import to template)
::::    > Generate template (holds allowable styles)
::::      .\pandoc.exe -o template.docx --print-default-data-file reference.docx  geometry:margin=2cm
::::        • Variable setting FAILING:
::::          -V KEY[=VAL],           --variable=KEY[:VAL]
::::          -V KEY[:SUBKEY][=VAL],  --variable=KEY[:SUBKEY][:=VAL]  :: -V geometry:margin=1in
::::          .\pandoc.exe -o template.docx -V indent=2m          --print-default-data-file reference.docx   
::::          .\pandoc.exe -o template.docx --variable=indent:2m  --print-default-data-file reference.docx
::::    Styles transfer from existing document:
::::      > Word-and-hjcrc.docx: File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > 
::::        Organizer > Copy allowable styles to right and save
::::      > Word-and-tmple.docx: Organizer > copy styles to left.

.\pandoc.exe .\hjcrc.md --from markdown --to docx --reference-doc=template.docx --wrap=none -o .\hjcrc.docx
:: FAIL:  --variable=indent:2m
::        --wrap=none                      : editor should wrap lines
::        svgs require librsvg

:: docx with paragraph indents
:: FAIL :: docx-md :: --preserve-tabs                   : fails because docx is paragraphs with indents.
:: FAIL :: docx+empty_paragraphs                        : erroneous tip?
:: FAIL :: md-docx :: --preserve-tabs                   : fails because tabs are different then indents?
:: Fixes blank lines?
:: [General writer}(https://pandoc.org/MANUAL.html#general-writer-options-1) options may help.