port & wire testing
testMultipleWiresOnOutputPort
	| input1 input2 output |
	input1 := EpicInputPort new.
	input2 := EpicInputPort new.
	output := EpicOutputPort new.
	
	EpicWire from: input1 to: output.
	EpicWire from: input2 to: output.
	
	self assert: [output numberOfWires = 2]