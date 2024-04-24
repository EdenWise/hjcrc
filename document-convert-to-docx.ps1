gir## DOCUMENT CONVERT FROM MARKDOWN TO DOCX
#
## CONVERT
#
pandoc.exe HJCSIC.md `
  --from markdown+inline_notes+escaped_line_breaks `
  --to docx `
  --dpi=220 `
  --wrap=none `
  --output .\HJCSIC.docx `
  --reference-doc=template_Georgia.docx

## NOTES
#
  # Font Tests:
    # Georgia         8.5   in word, good normal font, a bit tight though
    # Constantia      8.0   odd size... a bit small!?
    # Noto Serif      7.0   blocky
    # EB Garramond    6.0
    # Lora            9.3   too high!?
    # Crimson Text    8.0?  9.0 nice font but small?! Printing was scaled :(.
    # Roboto Slab     8.5   good font but a bit blocky
  # $PATH_OF_FILE = "${env:USERPROFILE}\Documents\HJCSIC.docx"
  # $PATH_OF_FILE = "($PSSCRIPTROOT | Split-Path -Qualifier)\Documents"
  #  --reference-doc=template_font-times.docx `
