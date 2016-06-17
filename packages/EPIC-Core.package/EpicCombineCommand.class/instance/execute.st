execution
execute

	self 
		gatherConnectedWires;
		combinedCircuit: (self receiver combineComponents: self components)