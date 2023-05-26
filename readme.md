#### History of the Judeo-Christian Religion and How It Effects Civilization

This is a life work for me...

I decided to write this document in markdown for easy editing and for collaboration (if anybody wants to help). These are the steps needed to build the Microsoft Word document.

##### Original Conversion

I started originally with a Microsoft-Word document and I converted it to Markdown. This is the line I used (`--wrap=none` because pandoc will insert newlines at 72 characters):

>     .\pandoc.exe --from docx --to markdown --wrap=none .\hjcrc.docx --output .\hjcrc.md

##### reference.docx build (I have renamed it template.docx here):

Pandoc can import what is basically a style sheet to design the document. The allowable styles are limited but it still looks pretty good. (*Note: I may be able to do more with:* [Pandoc User's Guide/Input](https://pandoc.org/MANUAL.html#input)).

I first generated a template then I imported the matching styles from my existing `docx` document.

Template generate of default settings:

>     .\pandoc.exe --output template.docx --print-default-data-file reference.docx
> mv reference.docx template.docx

*Variable setting failed (FYI: variables only work on templates)*

    -V KEY[=VAL],           --variable=KEY[:VAL]
    -V KEY[:SUBKEY][=VAL],  --variable=KEY[:SUBKEY][:=VAL] (e.g. -V geometry:margin=1in)
    .\pandoc.exe --output template.docx -V indent=2m           --print-default-data-file reference.docx   
    .\pandoc.exe --output template.docx --variable=indent:2in  --print-default-data-file reference.docx

Import matching styles from existing document to `template.docx`:

* Microsoft Word open `hjcrc.docx` > File > Options > Ribbon > +Developer > Dev Tab > DocTemplt > Organizer > Copy allowable styles to right and save.

* Microsoft Word open `template.docx`  > Word-and-tmple.docx: Organizer > copy styles to left.

##### Things to do before conversion:

* SVG: fonts: Object to Path. (rsvg-convert makes fonts off skew)

##### Things to do after conversion:

* Images: 
	! *Must be manually aligned, even basic {align=right} fails.*
	+ Right-Click > Size and Position >
	+ Tab---Text Wrapping
		• Wrapping style:			Tight
		• Wrap text:					Left only
		• Distance from text: appears to be in template.docx (TBLR, 0,0,.13,.13)
	+ Tab---Position
		• Horizontal:					Alignment: Right, relative to, Column

* Paragraph Indentation and Spacing reintroduce:
	+ First Paragraph and Body Text:
		Tab Home > ↑ 		& 	↑ > Right-Click > Modify > Format > Paragraph
			• Indentation: 	Special: First Line; By: 0.2"
			• Spacing:			Before and After: 0pt; Line spacing: single
	+ Headings require this to?

##### To Do

1) Text Box of Definitions
2) eras-of-civilization_04_jews.emf