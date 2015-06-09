keyboard sequences
undoSequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $z]