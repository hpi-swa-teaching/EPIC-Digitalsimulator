parsing
parseSubCircuit: aCircuitName
	| fileName |
	fileName := EPIC translateCircuitNameToFileName: aCircuitName.
	(FileStream isAFileNamed: fileName)
		ifTrue: [ ^ self parseSubCircuitFromFileNamed: fileName ]
		ifFalse: [ self error: 'Circuit not found: ', aCircuitName ]