initialization
initialize	
	super initialize.
	self 
		testLight: EpicTestLight new;
		circuits: OrderedCollection new;
		initializeCircuit;
		initializeGrid;
		showGrid: self grid;
		showCircuit;
		showTestLight: self testLight;
		testAgent: EpicConcurrencyAgent new