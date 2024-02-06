## DOCUMENT CONVERT FROM MARKDOWN TO DOCX
#
# $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
# $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"

## FONT CONSTANIA
# pandoc.exe .\hjcrc.md --from markdown+inline_notes+escaped_line_breaks --to docx --reference-doc=template.docx --dpi=220 --wrap=none --output .\HJCSIC.docx

## FONT TIMES NEW ROMAN
pandoc .\hjcrc.md --from markdown+inline_notes+escaped_line_breaks --to docx --reference-doc=template_font-times.docx --dpi=220 --wrap=none --output .\HJCSIC.docx
