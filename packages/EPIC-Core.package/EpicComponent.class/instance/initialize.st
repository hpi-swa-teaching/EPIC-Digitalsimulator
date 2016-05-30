initialization
initialize
	super initialize.
	self 
		isSimulating: true;
		initializePorts;
		deselect;
		createPorts;
		initialSimulate;
		toggleLabelOnHover: true