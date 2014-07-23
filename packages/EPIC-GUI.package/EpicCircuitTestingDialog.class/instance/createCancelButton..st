as yet unclassified
createCancelButton: aString

	^ (SimpleButtonMorph new)
		label: aString;
		target: self;
		actionSelector: #cancel.