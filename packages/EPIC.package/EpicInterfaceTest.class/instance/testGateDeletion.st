gate testing
testGateDeletion
	self testGateCreation.
	self editorPanel 
		selectAllComponentsAndWires; 
		deleteSelectedComponents.
	self assert: [self containsNoComponents]

