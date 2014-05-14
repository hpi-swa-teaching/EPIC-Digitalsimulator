port & wire testing
testMultipleWiresOnInputPort
	| input output |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	
	EpicWire from: input to: output.
	
	self should: [EpicWire from: input to: output] raise: Error