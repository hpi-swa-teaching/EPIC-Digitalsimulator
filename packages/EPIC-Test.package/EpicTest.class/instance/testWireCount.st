port & wire testing
testWireCount
	| input output |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	EpicWire from: input to: output.
	
	self assert: [input numberOfWires = 1].
	self assert: [output numberOfWires = 1]