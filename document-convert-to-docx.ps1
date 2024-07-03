## DOCUMENT STAMP WITH VERSION AND CONVERT FROM MARKDOWN TO DOCX
#

## VARIABLES
#
$FILE     = "HJCSIC_part1.md"
$REVISION = "00"
$DATE     = Get-Date -UFormat "%Y-%m-%d"
$YEAR     = Get-Date -UFormat "%Y"

## DOCUMENT STAMP WITH VERSION
#
( Get-Content -Path "$FILE" ) -replace `
  "${REVISION}_$YEAR-[0-9][0-9]-[0-9][0-9]", "${REVISION}_$DATE" `
  | Set-Content -Path "$FILE"

## GIT STAMP WITH VERSION
#
git.exe tag --annotate "${REVISION}_$DATE" --message="${REVISION}_$DATE"

## CONVERT
#
pandoc.exe $FILE `
  --from markdown `
  --to docx `
  --dpi=300 `
  --wrap=none `
  --output .\HJCSIC.docx `
  --reference-doc=template.docx

## GIT HELP
#
# git.exe help tag
# https://git-scm.com/book/en/v2/Git-Basics-Tagging
# https://stackoverflow.com/a/46434732

## FONT TESTS
#
# Lora            9.3   too high!?
# Georgia         8.5   in word, good normal font, a bit tight though
# Roboto Slab     8.5   good font but a bit blocky
# Constantia      8.0   odd size... a bit small!?
# Crimson Text    8.0?  9.0 nice font but small?! Printing was scaled :(.
# Noto Serif      7.0   blocky
# EB Garramond    6.0

