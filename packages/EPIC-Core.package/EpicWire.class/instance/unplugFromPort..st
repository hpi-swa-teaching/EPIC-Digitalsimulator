deletion
unplugFromPort: aPort
	aPort
		removeWire: self;
		removeActionsWithReceiver: self