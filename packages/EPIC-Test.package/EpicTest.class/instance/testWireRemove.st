port & wire testing
testWireRemove
	| wire input output |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	wire := EpicWire from: input to: output.
	wire delete.
	
	self assert: [input numberOfWires = 0].
	self assert: [output numberOfWires = 0]