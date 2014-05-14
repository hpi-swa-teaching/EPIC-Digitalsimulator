port & wire testing
testConnection
	| input output wire|
	input := EpicInputPort new.
	output := EpicOutputPort new.
	wire := EpicWire from: input to: output.
		
	self assert: [input wires first == wire].
	self assert: [output wires first == wire].
	
	self assert: [wire startPort == output].
	self assert: [wire endPort == input]