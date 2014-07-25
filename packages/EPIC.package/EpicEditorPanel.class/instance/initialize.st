initialization
initialize	
	super initialize.
	self 
		circuits: OrderedCollection new;
		initializeCircuit;
		initializeGrid;
		showGrid: self grid;
		showCircuit