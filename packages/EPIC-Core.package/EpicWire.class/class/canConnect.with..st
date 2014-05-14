connections
canConnect: aPort with: anotherPort
	aPort isInput 
		ifTrue: [^ anotherPort isOutput]
		ifFalse: [^ anotherPort isInput ]