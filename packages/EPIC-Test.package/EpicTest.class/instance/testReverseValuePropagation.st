port & wire testing
testReverseValuePropagation
	"Ensures that value changes are not transmitted from Input to Output through a wire."
	| input output initialValue |
	input := EpicInputPort new.
	output := EpicOutputPort new.
	initialValue := output value.
	EpicWire from: input to: output.
	
	self assert: [output value = initialValue].
	input setValue: true.
	self assert: [output value = initialValue ].
	input setValue: false.
	self assert: [output value = initialValue ]