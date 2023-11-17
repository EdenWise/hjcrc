### Document Creation: History of the Judeo-Christian Religion and How It Effects Civilization

This is a repository to develop a document on the "History of the Judeo-Christian Religion and How It Effects Civilization". I am writing this document in markdown so that other people can help---if anybody wants to do so. This is a life work for me... :).

The raw document is titled [hjcrc.md](https://github.com/EdenWise/hjcrc/blob/main/hjcrc.md). And listed below are the steps I take to convert it to a pretty Microsoft Word document: [HJCR1](http://tinyurl.com/hjcr1).

(*Side note: I converted my original document (written in MS word) to markdown with this command* (`--wrap=none` because text editors have the ability to do word wrapping [pandoc by default will insert newlines at 72 characters]): `pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx --output .\hjcrc.md`)

#### reference.docx build (I have renamed it template.docx here):

Pandoc can import what is basically a style sheet to design the document. The allowable styles are limited but it still gets a fair amount of formatting. (*Note: I may be able to do more with:* [Pandoc User's Guide/Input](https://pandoc.org/MANUAL.html#input)). I first generated a template then I imported the matching styles from my existing `docx` document.

Template generate of default settings, and rename to `template.docx`:

    pandoc.exe --output template.docx --print-default-data-file reference.docx
    mv reference.docx template.docx

I tried to define paragraph indents via the `pandoc.exe` `--variable` option, but it failed (FYI: variables only work on templates):

    -V KEY[=VAL],           --variable=KEY[:VAL]
    -V KEY[:SUBKEY][=VAL],  --variable=KEY[:SUBKEY][:=VAL] (e.g. -V geometry:margin=1in)
    pandoc.exe --output template.docx -V indent=2m           --print-default-data-file reference.docx   
    pandoc.exe --output template.docx --variable=indent:2in  --print-default-data-file reference.docx~~

I then imported matching styles from existing document to `template.docx`:

* Microsoft Word open `hjcrc.docx` > File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > Organizer > Copy allowable styles to right and save.
* Microsoft Word open `template.docx`  > Word-and-tmple.docx: Organizer > copy styles to left.

#### Things to do before conversion:

* SVGs: Convert fonts to paths (Object to Path) (`rsvg-convert` renders them poorly).

#### During conversion

Pandoc needs help to convert SVGs to PNG(!?) and uses [librsvg](https://wiki.gnome.org/action/show/Projects/LibRsvg). I found one for Windows online (believe this [download](https://opensourcepack.blogspot.com/2012/06/rsvg-convert-svg-image-conversion-tool.html) is it); tell me if needed, I have a copy. Here is the line that `pandoc.exe` probably uses to convert them:

      rsvg-convert --format=png --dpi-x=220 --dpi-y=220 --output <name>.png <name>.svg

#### MSWord-Document reintroduce style-elements after conversion:

* Images Align: (Image right-click > Size and Position > Tab select:)
  * Text Wrapping
    * Wrapping style:           Tight
    * Wrap text:                Left only
    * ~~Distance from text:       TBLR, 0,0,.13,.13 (Appears to be in template.docx)~~
  * Position
    * Horizontal: Alignment:    Right > relative to > Column

* Bullet Lists text indentation reintroduce:
  * Bullet right-click > Adjust List Indents > More >>
    * Text indent at:     0"
    * Follow number with: Space
    
* Bullet Lists Spacing reduce:
  * Item right-click > Paragraph:
    * Spacing (Before and After): 0 pt.
  * Home > Select *Compact* > right-click and select Modify> Format> Paragraph:
    * Spacing (Before and After) to 0 pt

* Spacing and Indentation for First Paragraph and Body Text (in template!):
  * Body Text and First Paragraph put I-Bar on, right-Click each one select Paragraph
    * Indentation:          Special: First Line; By: 0.2"
    * ~~Spacing:              Before and After: 0pt; Line spacing: Single~~

* Heading Spacing reintroduce (in template!):
  * Headings put I-Bar on, right-Click each one select Paragraph
    * ~~Spacing             Before:          0 pt; Line spacing: Single~~

#### To Do

* Pandoc/Markdown image attributes still fail (width, align, others)?
* Paragraph spacing (template.docx only allows basic format options.) may be helped with.
  * [General writer options](https://pandoc.org/MANUAL.html#general-writer-options-1)
