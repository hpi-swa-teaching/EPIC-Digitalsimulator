accessing ports
addPort: aPort
	super addPort: aPort.
	self resizeToPortCount.
	self reLayoutPorts.