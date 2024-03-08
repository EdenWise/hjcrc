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
  # Font Tests:
    # Constantia      8
    # Noto Serif      8
    # EB Garramond    7
    # Georgia         
    # Lora            
    # Crimson Text    
    # Roboto Slab     
  # $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
  # $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"