helper messages
assureDifferentTypesOf: aPort and: anOtherPort
	(aPort isInput and: [anOtherPort isInput])
		ifTrue: [self error: 'Cannot connect to input ports.'].
	(aPort isOutput and: [anOtherPort isOutput])
		ifTrue: [self error: 'Cannot connect to output ports.']