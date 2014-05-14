keyboard sequences
copySequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $c]
