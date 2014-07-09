component testing
testComponentTestLight
	| circuit testLight editorPanel  |
	editorPanel := EpicEditorPanel new.
	testLight := EpicTestLight new.
	circuit := self createTestableCircuit.
	editorPanel circuits add: circuit.
	editorPanel testLight: testLight.
	self deny: [testLight active and: testLight passed];
	 	 createTestCasesForTestableCircuit: circuit.
	editorPanel runComponentTestCases.
	editorPanel testAgent waitForIdle.
	self assert: [testLight active and: testLight passed].
	
	self createFailingTestCasesForTestableCircuit: circuit.
	editorPanel runComponentTestCases.
	editorPanel testAgent waitForIdle.
	self assert: [testLight active and: testLight passed not]
