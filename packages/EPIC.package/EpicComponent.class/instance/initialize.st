initialization
initialize
	super initialize.
	self 
		inputPorts: OrderedCollection new;
		outputPorts: OrderedCollection new;
		deselect;
		createInputPorts;
		createOutputPorts;
		initialSimulate