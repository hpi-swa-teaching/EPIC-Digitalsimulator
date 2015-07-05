circuit stacking
showCircuit
	self hideCurrentlyShownCircuit..
	self circuit innerPorts do: [:eachPort | 
		self addInnerPort: eachPort].
	self components do: [:eachComponent | 
		self showComponent: eachComponent]