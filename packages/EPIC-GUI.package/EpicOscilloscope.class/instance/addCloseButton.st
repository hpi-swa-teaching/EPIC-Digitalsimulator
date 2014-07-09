accessing
addCloseButton
	| pathDelimiter |
	pathDelimiter := FileDirectory new pathNameDelimiter.
	
	self closeButton: (ImageMorph new newForm: (Form fromFileNamed: 'epic',pathDelimiter,'resources',pathDelimiter,'glyphicons_192_circle_remove2.png')).
	self closeButton eventHandler: self closeButtonHandler.
	self addMorph: self closeButton fullFrame: (self closeButtonFrame topOffset: 30).