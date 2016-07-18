circuit tabbing
showCircuit: aCircuit
	self hideCurrentlyShownCircuit.
	aCircuit innerPorts do: [:eachPort | 
		self addInnerPort: eachPort].
	aCircuit subComponents do: [:eachComponent | 
		self showComponent: eachComponent].
	self circuit: aCircuit