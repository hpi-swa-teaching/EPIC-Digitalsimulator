ui creation
createFilenameLabel
	^(TextMorph new)
		contents: 'Filename: ';
		readOnly: true.
		
		