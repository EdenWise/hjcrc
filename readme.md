### History of the Judeo-Christian Religion and How It Effects Civilization

This is a life work for me...

I decided to write this document in markdown for collaboration (if anybody wants to help). These are the steps needed to build the Microsoft Word document.

#### Original Conversion

I started originally with a Microsoft-Word document and I converted it to Markdown. This is the line I used (`--wrap=none` because text editors have the ability to do word wrapping [pandoc by default will insert newlines at 72 characters]):

    pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx --output .\hjcrc.md

* Tabs to paragraph indents possible? `pandoc.exe --preserve-tabs` fails because docx is paragraphs with indents? \
* Pandoc needs help to convert SVGs to PNG(!?) and uses [librsvg](https://wiki.gnome.org/action/show/Projects/LibRsvg). I found one for Windows online---tell me if needed, I have a copy. \

    rsvg-convert --format=png --dpi-x=220 --dpi-y=220 --output <name>.png <name>.svg

#### reference.docx build (I have renamed it template.docx here):

Pandoc can import what is basically a style sheet to design the document. The allowable styles are limited but it still gets a fair amount of formatting. (*Note: I may be able to do more with:* [Pandoc User's Guide/Input](https://pandoc.org/MANUAL.html#input)). I first generated a template then I imported the matching styles from my existing `docx` document.

Template generate of default settings, and rename to `template.docx`:

    pandoc.exe --output template.docx --print-default-data-file reference.docx
    mv reference.docx template.docx

~~I tried to define paragraph indents via the `pandoc.exe` `--variable` option, but it failed (FYI: variables only work on templates)*

    -V KEY[=VAL],           --variable=KEY[:VAL]
    -V KEY[:SUBKEY][=VAL],  --variable=KEY[:SUBKEY][:=VAL] (e.g. -V geometry:margin=1in)
    pandoc.exe --output template.docx -V indent=2m           --print-default-data-file reference.docx   
    pandoc.exe --output template.docx --variable=indent:2in  --print-default-data-file reference.docx~~

I then imported matching styles from existing document to `template.docx`:

* Microsoft Word open `hjcrc.docx` > File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > Organizer > Copy allowable styles to right and save.
* Microsoft Word open `template.docx`  > Word-and-tmple.docx: Organizer > copy styles to left.

#### Things to do before conversion:

* SVGs: Convert fonts to paths (Object to Path) (rsvg-convert renders them poorly).

#### Things to do after conversion:

* Images align (Must be done manually. Markdown image attributes (width, align, others?) fail.):
  + Image right-click > Size and Position >
  + Tab: Text Wrapping
    • Wrapping style:       Tight
    • Wrap text:            Left only
    - Distance from text:   appears to be in template.docx (TBLR, 0,0,.13,.13)
  + Tab: Position
    • Horizontal:           Alignment: Right, relative to, Column

* Paragraph Indentation and Spacing reintroduce:
  + First Paragraph and Body Text:
    + Tab Home > Right-Click each one > Modify > Format > Paragraph
      • Indentation:        Special: First Line; By: 0.2"
      • Spacing:            Before and After: 0pt; Line spacing: single
  + Headings require this to?
      • Yes, but minor... leaving for now:
          * they are: Paragraph > Spacing > Before: 2 pt
          *                                  Line spacing: Multiple: 1.08

#### To Do

* Paragraph spacing (template.docx only allows basic format options.) may be helped with.
  • [General writer options](https://pandoc.org/MANUAL.html#general-writer-options-1)
* Microsoft-Word manual edits still required: