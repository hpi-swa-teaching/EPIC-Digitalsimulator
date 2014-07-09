component testing
testCircuitNamingDialog
	self assert: [EpicCircuitNamingDialog isValidNumber: '123'];
		deny: [EpicCircuitNamingDialog isValidNumber: 'abc123'];
		assert: [EpicCircuitNamingDialog isValidName: 'AbC'];
		deny: [EpicCircuitNamingDialog isValidName: 'ü-!!'].