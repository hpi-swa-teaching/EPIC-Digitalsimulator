component testing
testSingleStack
	self testCombining.
	self assert: [ self containsOneCircuit ].
	self editorPanel 
		keyPressed: (self keyPressedEvent: Character escape for: self currentHand).
	self assert: [ self containsOneCircuit ]