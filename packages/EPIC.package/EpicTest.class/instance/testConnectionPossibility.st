port & wire testing
testConnectionPossibility
	self assert: [EpicWire canConnect: EpicInputPort new with: EpicOutputPort new].
	self assert: [EpicWire canConnect: EpicOutputPort new with: EpicInputPort new].
	
	self deny: [EpicWire canConnect: EpicInputPort new with: EpicInputPort new].
	self deny: [EpicWire canConnect: EpicOutputPort new with: EpicOutputPort new].
	
	self should: [EpicWire from: EpicInputPort new to: EpicInputPort new] raise: Error.
	self should: [EpicWire from: EpicOutputPort new to: EpicOutputPort new] raise: Error
