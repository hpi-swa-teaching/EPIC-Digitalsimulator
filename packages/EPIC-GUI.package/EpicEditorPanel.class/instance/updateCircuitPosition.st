visual properties
updateCircuitPosition
	self updatePositionOf: self circuit;
		centerCircuit.
	self components do: [:eachComponent | self snapToGridIfAppropriate: eachComponent]