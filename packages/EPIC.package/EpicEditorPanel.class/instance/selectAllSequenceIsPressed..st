keyboard sequences
selectAllSequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $a]