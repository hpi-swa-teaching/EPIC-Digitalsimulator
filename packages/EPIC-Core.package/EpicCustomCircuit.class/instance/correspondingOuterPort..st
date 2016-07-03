accessing ports
correspondingOuterPort: anInnerPort
	^ anInnerPort isInput 
		ifTrue: [self outputPorts at: (self innerOutputPorts indexOf: anInnerPort)]
		ifFalse: [self inputPorts at: (self innerInputPorts indexOf: anInnerPort)]