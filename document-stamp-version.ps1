## VARIABLES
#
$FILE     = "HJCSIC_part1.md"
$REVISION = "00"
$DATE     = Get-Date -UFormat "%Y-%m-%d"
$YEAR     = Get-Date -UFormat "%Y"

## DOCUMENT STAMP WITH REVISION AND DATE
#
# Get-ChildItem -Path "$FILE" | (Get-Content) -replace "${REVISION}_$YEAR-[0-9][0-9]","${REVISION}_$DATE"
( Get-Content -Path "$FILE" ) -replace "${REVISION}_$YEAR-[0-9][0-9]-[0-9][0-9]", `
  "${REVISION}_$DATE" | Set-Content -Path "$FILE"

## GIT TAG (VERSION BUILD)
#
# git.exe help tag
# https://git-scm.com/book/en/v2/Git-Basics-Tagging
# https://stackoverflow.com/a/46434732
#
git.exe tag --annotate "${REVISION}_$DATE" --message="${REVISION}_$DATE"
