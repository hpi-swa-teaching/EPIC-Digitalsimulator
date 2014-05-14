helper messages
primitiveOfType: aTypeString
	^ self primitiveStore 
		detect: [ :eachPrimitive | eachPrimitive fullyQualifiedTypeName = aTypeString ]
		ifNone: [nil]