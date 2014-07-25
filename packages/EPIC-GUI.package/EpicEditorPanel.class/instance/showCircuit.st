circuit stacking
showCircuit
	self 
		hideCurrentlyShownCircuit;
		updateCircuitPosition.
	self circuit innerPorts do: [:eachPort | 
		self addInnerPort: eachPort
	].
	self components do: [:eachComponent | 
		self showComponent: eachComponent
	]