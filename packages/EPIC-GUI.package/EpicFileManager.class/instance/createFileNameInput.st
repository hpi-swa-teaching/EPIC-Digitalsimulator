ui creation
createFileNameInput
	fileNameInput := TextMorph new.
	fileNameInput
		newContents: '';
		backgroundColor: Color white;
		autoFit: false.
	^fileNameInput