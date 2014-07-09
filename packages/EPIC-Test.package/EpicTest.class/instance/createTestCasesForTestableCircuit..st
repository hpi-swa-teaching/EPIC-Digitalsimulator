component testing
createTestCasesForTestableCircuit: aCircuit
	aCircuit testCases first at: 2 put: {false. false}.
	aCircuit testCases second at: 2 put: {false. true}.
	aCircuit testCases third at: 2 put: {false. true}.
	aCircuit testCases fourth at: 2 put: {true. true}.