component testing
testCircuitTestingDialog
	| circuit testingDialog|
	circuit := self createTestableCircuit.
	self createTestCasesForTestableCircuit: circuit.
	testingDialog := EpicCircuitTestingDialog new initializeWithTitle: 'Test Circuit' withData: circuit testCases. 
	circuit testCases: testingDialog getTableValues.
	self assert: [circuit runTestCases].