port & wire testing
testReverseConnection
	| input output wire|
	input := EpicInputPort new.
	output := EpicOutputPort new.
	wire := EpicWire from: output to: input.
		
	self assert: [input wires first == wire].
	self assert: [output wires first == wire].
	
	self assert: [wire startPort == output].
	self assert: [wire endPort == input]