serialization testing
testCombineAndReopenCircuit
	| xml |
	self testCombining.
	xml := self xmlForContentsOf: self editorPanel components first.
	self window open: (FileStream fileNamed: self temporaryCircuitFilePath).
	
	self assert: [ self editorPanel circuit asXMLDocument asString = xml ]