initialization
initialize
	super initialize.
	self 
		initializeBalloonText;
		isSimulating: true;
		initializePorts;
		deselect;
		createPorts;
		initialSimulate;
		toggleLabelOnHover: true