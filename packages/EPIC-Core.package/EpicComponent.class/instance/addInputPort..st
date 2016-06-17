accessing ports
addInputPort: aPort
	self privateAddPort: aPort.
	aPort when: #valueChanged send: #simulateChangeOf: to: self with: aPort.
	self inputPorts add: aPort.
	self reLayoutInputPorts