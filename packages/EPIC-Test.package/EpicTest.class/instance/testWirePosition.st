port & wire testing
testWirePosition
	| input output wire|
	input := EpicInputPort new.
	input center: 0@0.
	output := EpicOutputPort new.
	output center: 0@2.
	wire := EpicWire from: input to: output.
	
	self assert: [wire startPoint = (0@2)].
	self assert: [wire endPoint = (0@0)].