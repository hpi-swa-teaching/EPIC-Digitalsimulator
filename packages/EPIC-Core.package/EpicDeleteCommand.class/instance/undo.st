execution
undo

	self components do: [ :eachComponent |
		self receiver addComponent: eachComponent].
	self wires do: [ :eachWire |
		self receiver addWire: eachWire.
		eachWire setStartPort: eachWire startPort.
		eachWire setEndPort: eachWire endPort].
	self bundles do: [ :eachBundle |
		self receiver addBundle: eachBundle.
		eachBundle readdAllWires]