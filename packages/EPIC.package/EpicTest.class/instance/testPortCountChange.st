component testing
testPortCountChange
	| circuit |
	circuit := self createTestableCircuit.
	self assert: [ circuit inputPorts size ==  2 and: circuit outputPorts size  == 2 ].
	circuit adjustNumberOfInputPorts: 1 numberOfOutputPorts: 3.
	self assert: [ circuit inputPorts size ==  1 and: circuit outputPorts size  == 3 ].