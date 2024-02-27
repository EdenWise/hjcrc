## DOCUMENT CONVERT FROM MARKDOWN TO DOCX
#
## CONVERT
#
pandoc.exe HJCSIC.md `
  --from markdown+inline_notes+escaped_line_breaks `
  --to docx `
  --dpi=220 `
  --wrap=none `
  --output .\HJCSIC.docx `
  --reference-doc=template_Garamond.docx
  #  --reference-doc=template_font-times.docx `

## NOTES
#
  # Font preference:
    # EB Garramond
    # Noto Serif
    # Constantia
    # Georgia
    # Lora
  # $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
  # $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"