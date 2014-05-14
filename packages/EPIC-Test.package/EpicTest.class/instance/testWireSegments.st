port & wire testing
testWireSegments
	| input output wire |
	input := EpicSwitch new.
	output := EpicLamp new.
	wire := EpicWire from: input outputPorts  first to: output inputPorts  first.
	
	self assert: [ wire wireSegments isEmpty not ].
	
	wire wireSegments do: [ :eachSegment | 
		self assert: [ eachSegment isOrthogonal ]	
	]
	
	