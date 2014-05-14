testing
isInnerPort
	^ self component notNil
		and: [self component isCircuit]
		and: [self component innerPorts includes: self]
	