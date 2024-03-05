### How I Came To Be Here

I have been surrounded by this society very personally all my life. It has been an influence on me greatly. I decided to start documenting it because what is known about it is very little. I decided to write this document in markdown so that other people can help---if they would like. The raw document is titled [hjcrc.md](https://github.com/EdenWise/hjcrc/blob/main/hjcrc.md) Below, I will list the steps I take to convert it to a Microsoft Word document. It will look like one I have [here](http://tinyurl.com/hjcr1).

#### Template Build

Pandoc can import what is basically a style sheet to design the document. The allowable styles are limited but it still gets a fair amount of formatting. (Note: I may be able to do more with [Pandoc User's Guide/Input](https://pandoc.org/MANUAL.html#input), I have yet to look into it.). I first generated a template then I imported the matching styles from my existing `docx` document.

Template generate of default settings and rename to `template.docx` (which I thought sounded better):

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

#### Graphic Conversion requires external tool

Pandoc needs help to convert SVGs to PNG and uses [librsvg](https://wiki.gnome.org/action/show/Projects/LibRsvg). I found an old one for Windows online that still seems to work good: [rsvg-convert.exe](https://opensourcepack.blogspot.com/2012/06/rsvg-convert-svg-image-conversion-tool.html). I have a copy if needed. Here is the line that `pandoc.exe` probably uses to convert them:

      rsvg-convert.exe --format=png --dpi-x=220 --dpi-y=220 --output <name>.png <name>.svg

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
* **Side note**: I converted my original document (written in MS word) to markdown with this command* (`--wrap=none` because text editors have the ability to do word wrapping [pandoc by default will insert newlines at 72 characters]): `pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx --output .\hjcrc.md`)
