accessing ports
correspondingPort
	^ (self component notNil and: [self component isCircuit]) 
		ifTrue: [ self component correspondingPort: self ]
		ifFalse: [ nil ]