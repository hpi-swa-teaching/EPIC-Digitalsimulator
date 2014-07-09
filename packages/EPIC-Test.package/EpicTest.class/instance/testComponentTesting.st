component testing
testComponentTesting
	| circuit |
	circuit := self createTestableCircuit.
	self createTestCasesForTestableCircuit: circuit.
	self assert: [circuit runTestCases].
	self createFailingTestCasesForTestableCircuit: circuit.
	self deny: [circuit runTestCases].
	self deny: [circuit testCases third third].