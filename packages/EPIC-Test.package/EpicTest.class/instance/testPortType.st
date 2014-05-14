port & wire testing
testPortType
	self
		assert: [EpicInputPort new isInput = true];
		assert: [EpicInputPort new isOutput = false];
		assert: [EpicInputPort new name = 'input'];
		assert: [EpicOutputPort new isInput = false];
		assert: [EpicOutputPort new isOutput = true];
		assert: [EpicOutputPort new name = 'output'].