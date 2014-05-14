accessing
addInternalsOfCircuit: aCircuit
	aCircuit subComponents do: [:eachComponent |
		self addComponent: eachComponent 
	].
	aCircuit subWires do: [:eachWire |
		self addWire: eachWire
	]