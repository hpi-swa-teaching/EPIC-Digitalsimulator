execution
undo

	self components do: [ :eachComponent |
		self receiver addComponent: eachComponent].
	self wires do: [ :eachWire |
		self receiver addWire: eachWire.
		eachWire setStartPort: eachWire startPort.
		eachWire setEndPort: eachWire endPort]

	"TODO: Hier müssten die Bundle wiederhergestellt werden"