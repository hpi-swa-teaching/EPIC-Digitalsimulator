accessing ports
addPort: aPort
	aPort isInput 
		ifTrue: [self addInputPort: aPort]
		ifFalse: [self addOutputPort: aPort]