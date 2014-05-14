accessing
internalSubWires
	"Liefert die Wires, die wirklich nur innerhalb des Circuits liegen."
	| ports |
	ports := (self subComponents gather: [:eachComponent | 
		eachComponent ports]), self innerPorts.
	^ self subWires select: [:eachWire |
		(ports includes: eachWire startPort)
			and: [ports includes: eachWire endPort]
	]