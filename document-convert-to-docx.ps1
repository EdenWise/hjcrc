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
  --reference-doc=template_Lora.docx

## NOTES
#
  # Font Tests:
    # Constantia      8.0
    # Noto Serif      7.0
    # EB Garramond    6.0
    # Georgia         9.5
    # Lora            
    # Crimson Text    
    # Roboto Slab     
  # $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
  # $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"
  #  --reference-doc=template_font-times.docx `