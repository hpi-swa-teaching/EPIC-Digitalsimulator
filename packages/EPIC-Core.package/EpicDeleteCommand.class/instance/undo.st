execution
undo

	self components do: [ :aComponent |
		self receiver addComponent: aComponent].
	self wires do: [ :aWire |
		self receiver addWire: aWire.
		aWire setStartPort: aWire startPort.
		aWire setEndPort: aWire endPort]