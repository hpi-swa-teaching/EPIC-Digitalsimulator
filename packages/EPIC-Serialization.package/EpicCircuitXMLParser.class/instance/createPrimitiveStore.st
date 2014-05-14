initialization
createPrimitiveStore
	self primitiveStore: (EpicGate allSubclasses select: [:eachSubclass | 
		eachSubclass allSubclasses isEmpty
	])