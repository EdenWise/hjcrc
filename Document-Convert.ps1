## DOCUMENT CONVERT FROM MARKDOWN TO DOCX
#

$FILE_MD = "HJCSIC.md"
$FILE_DC = "HJCSIC.docx"
$EDITION = "00"
$DATE    = Get-Date -UFormat "%Y-%m-%d"

## APPLY DATE TO DOCUMENT.
#
( Get-Content -Path "$FILE_MD" ) -replace "${EDITION}_[2][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]", "${EDITION}_$DATE" | Set-Content -Path "$FILE_MD"

## APPLY TAG (AS DATE) TO GIT COMMIT.
#
$TAG_CURRENT = git.exe tag --points-at HEAD
if ( $TAG_CURRENT -ne "${EDITION}_$DATE" ) {
  git.exe tag --annotate "${EDITION}_$DATE" --message="${EDITION}_$DATE"
}

## CONVERT
#
pandoc.exe $FILE_MD `
  --from markdown `
  --to docx `
  --dpi=300 `
  --wrap=none `
  --output $FILE_DC `
  --reference-doc=template.docx

## GIT HELP
#
# git.exe help tag
# https://git-scm.com/book/en/v2/Git-Basics-Tagging
# https://stackoverflow.com/a/46434732

## FONT TESTS
#
# Lora            9.3   too high!? 414
# Merriweather    9.3
# Georgia         8.5   in word, good normal font, a bit tight though
# Roboto Slab     8.5   good font but a bit blocky
# Constantia      8.0   odd size... a bit small!?
# Crimson Text    8.0?  9.0 nice font but small?! Printing was scaled :(.
# Noto Serif      7.0   blocky
# EB Garramond    6.0
# Others (screen tested): Domine A, Noto Serif B, Source_Serif_4 B

