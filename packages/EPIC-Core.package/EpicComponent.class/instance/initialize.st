initialization
initialize
	super initialize.
	self 
		initializePorts;
		deselect;
		createPorts;
		initialSimulate