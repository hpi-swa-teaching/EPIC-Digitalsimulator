initialization
initialize
	self 
		circuit: EpicCustomCircuit new;
		portMap: Dictionary new;
		createPrimitiveStore;
		componentMap: Dictionary new