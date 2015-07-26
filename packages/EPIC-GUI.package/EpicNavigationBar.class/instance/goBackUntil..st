accessing
goBackUntil: aNewStackSize
	[aNewStackSize < self currentStackSize] 
		whileTrue: [self editorPanel exitCurrentCircuit]