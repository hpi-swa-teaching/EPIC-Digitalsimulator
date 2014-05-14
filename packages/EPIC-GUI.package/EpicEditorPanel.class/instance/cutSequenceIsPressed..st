keyboard sequences
cutSequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $x]
