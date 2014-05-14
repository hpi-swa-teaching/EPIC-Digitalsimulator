keyboard sequences
deleteSequenceIsPressed: anEvent
	^ anEvent keyCharacter = Character delete or: 
		[anEvent keyCharacter = Character backspace]
