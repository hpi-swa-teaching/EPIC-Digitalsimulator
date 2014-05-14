port & wire testing
testWireRemoveValuePropagation
	| wire input output initialValue |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	wire := EpicWire from: input to: output.
	wire delete.
	
	initialValue := input value.
	output setValue: true.
	self assert: [input value = initialValue].
	output setValue: false.
	self assert: [input value = initialValue]