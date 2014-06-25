initialization
addSubmorphs

	| innerAlignment |
	innerAlignment := AlignmentMorph newRow.
	innerAlignment layoutFrame: (LayoutFrame 
		fractions: (0@0 corner: 1@1)
		offsets: (0@20 corner: 0@0)).
	innerAlignment addMorph: self editorBox.
	innerAlignment addMorph: self prototypeBox.
	innerAlignment layoutPolicy: TableLayout  new.
	self addMorph: innerAlignment.
	self addMorph: self menuBar.