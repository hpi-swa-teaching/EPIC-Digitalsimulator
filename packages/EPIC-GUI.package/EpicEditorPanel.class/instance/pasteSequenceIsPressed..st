keyboard sequences
pasteSequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $v]
