port & wire testing
testWireCreation
	| input output wire|
	input := EpicSwitch new.
	output := EpicLamp new.
	wire := EpicWire from: input outputPorts  first to: output inputPorts  first.
	self
		assert: [wire startComponent  == input];
		assert: [wire endComponent  == output].
	input := EpicSwitch new.
	output := EpicLamp new.
	wire := EpicWire from: output inputPorts  first to: input outputPorts first.
	self
		assert: [wire startComponent  == input];
		assert: [wire endComponent  == output].