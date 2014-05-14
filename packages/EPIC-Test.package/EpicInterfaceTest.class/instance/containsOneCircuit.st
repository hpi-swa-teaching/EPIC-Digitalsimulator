helper messages
containsOneCircuit
	^ self containsOneComponent and: [self editorPanel components first isCircuit]