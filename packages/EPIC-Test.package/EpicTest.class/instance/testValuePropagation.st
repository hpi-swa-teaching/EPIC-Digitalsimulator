port & wire testing
testValuePropagation
	| input output |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	EpicWire from: input to: output.
	
	self assert: [input value = output value].
	output setValue: true.
	self assert: [input value = output value].
	output setValue: false.
	self assert: [input value = output value]