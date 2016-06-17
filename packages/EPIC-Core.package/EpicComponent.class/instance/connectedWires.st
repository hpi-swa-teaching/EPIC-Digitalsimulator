accessing
connectedWires
	^ (self ports gather: [:eachPort | eachPort wires]) asOrderedCollection distinct