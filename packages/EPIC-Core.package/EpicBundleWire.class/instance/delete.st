deletion
delete

	self wires do: [:eachWire |
		eachWire removeFromBundle: self].
	super delete