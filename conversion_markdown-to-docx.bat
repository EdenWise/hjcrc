:: Print everything: off
@echo off

:: About: Convert text from Markdown to Microsoft-Word.

:::: Conversion: Microsoft-Word to Markdown.
:::: .\pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx --output .\hjcrc.md
::::      --wrap=none                       : editor should wrap lines

:::: Template building (original style of hjcrc.docx import to template)
::::    > Generate template (holds allowable styles)
::::      .\pandoc.exe --output template.docx --print-default-data-file reference.docx
::::        • Variable setting FAILING (FYI: variables only work in templates):
::::          -V KEY[=VAL],           --variable=KEY[:VAL]
::::          -V KEY[:SUBKEY][=VAL],  --variable=KEY[:SUBKEY][:=VAL]  :: -V geometry:margin=1in
::::          .\pandoc.exe --output template.docx -V indent=2m           --print-default-data-file reference.docx   
::::          .\pandoc.exe --output template.docx --variable=indent:2in  --print-default-data-file reference.docx
::::    Styles transfer from existing document:
::::      > Word-and-hjcrc.docx: File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > 
::::        Organizer > Copy allowable styles to right and save
::::      > Word-and-tmple.docx: Organizer > copy styles to left.

.\pandoc.exe .\hjcrc.md --from markdown --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\hjcrc.docx
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