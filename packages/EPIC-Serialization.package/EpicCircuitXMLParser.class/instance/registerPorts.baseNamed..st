parsing
registerPorts: aCollectionOfPorts baseNamed: aString
	aCollectionOfPorts withIndexDo: [:eachPort :eachIndex |
		self portMap 
			at: aString, eachIndex asString
			put: eachPort ]