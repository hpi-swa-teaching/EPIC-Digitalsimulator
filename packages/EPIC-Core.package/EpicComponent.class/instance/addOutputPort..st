accessing ports
addOutputPort: aPort
	self privateAddPort: aPort.
	self outputPorts add: aPort.
	self reLayoutOutputPorts