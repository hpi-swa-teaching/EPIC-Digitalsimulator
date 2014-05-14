port & wire testing
testReverseValuePropagation
	"Stellt sicher, dass Werteveränderungen über ein Wire nicht vom Input zum Output
	weiter gereicht werden."
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