initialization
createPrimitiveStore
	self primitiveStore: (EpicBaseComponent allSubclasses select: [:eachSubclass | 
		eachSubclass allSubclasses isEmpty
	])