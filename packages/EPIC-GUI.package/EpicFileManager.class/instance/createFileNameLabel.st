ui creation
createFileNameLabel 
	| label |
	label := TextMorph new.
	label
		contents: 'Filename:';
		readOnly: true.
	^label
		
	