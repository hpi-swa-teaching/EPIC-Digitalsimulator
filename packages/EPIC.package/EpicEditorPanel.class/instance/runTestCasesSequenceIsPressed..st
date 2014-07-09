keyboard sequences
runTestCasesSequenceIsPressed: anEvent
	^ anEvent commandKeyPressed and: [anEvent keyCharacter = $t]