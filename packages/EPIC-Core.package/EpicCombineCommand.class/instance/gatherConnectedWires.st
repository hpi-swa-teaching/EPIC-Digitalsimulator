as yet unclassified
gatherConnectedWires

	self components do: [ :aComponent |
		self wires addAll: aComponent connectedWires].
	self wires: self wires asSet