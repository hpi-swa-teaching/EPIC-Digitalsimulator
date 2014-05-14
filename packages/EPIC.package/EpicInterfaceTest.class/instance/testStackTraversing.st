component testing
testStackTraversing
	self testCombining.
	self editorPanel showStackedCircuit: self editorPanel components first.
	self assert: [ self containsComponents ].
	self editorPanel eventuallyExitCurrentCircuit.
	self assert: [ self containsOneCircuit ]