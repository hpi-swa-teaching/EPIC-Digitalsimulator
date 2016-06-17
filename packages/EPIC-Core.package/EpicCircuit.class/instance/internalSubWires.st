accessing
internalSubWires
	"Returns the wires, that are truly inside of the circuit."
	| ports |
	ports := (self subComponents gather: [:eachComponent | 
		eachComponent ports]), self innerPorts.
	^ self subWires select: [:eachWire |
		(ports includes: eachWire startPort)
			and: [ports includes: eachWire endPort]
	]