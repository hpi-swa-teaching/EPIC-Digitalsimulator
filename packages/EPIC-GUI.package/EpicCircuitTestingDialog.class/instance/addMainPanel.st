as yet unclassified
addMainPanel
	"Add the main panel."

	| panel |
	panel := self newMainPanel.
	self addMorph: panel frame: (0@0 corner: 1@1).
	
	"Fix changed apperance. See #addMorph:fullFrame:."
	panel
		color: Color transparent;
		borderWidth: 0.