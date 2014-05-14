component testing
testCombining
	self testGateCreation.
	(self editorPanel)
		selectAllComponentsAndWires;
		combineSelectedComponentsToNamedCircuit: self temporaryCircuitName.
	self assert: [ self containsOneCircuit ]