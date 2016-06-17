execution
undo

	self wires do: [ :eachWire |
		eachWire removeFromBundle: self bundledWire.
		self bundledWire wires remove: eachWire ifAbsent: []]