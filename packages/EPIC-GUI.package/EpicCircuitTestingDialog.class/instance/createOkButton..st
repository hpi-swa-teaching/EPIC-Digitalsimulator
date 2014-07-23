as yet unclassified
createOkButton: aString

	^ (SimpleButtonMorph new)
		label: aString;
		target: self;
		actionSelector: #ok.