accessing ports
correspondingInnerPort: anOuterPort
	^ anOuterPort isInput 
		ifTrue: [self innerInputPorts at: (self inputPorts indexOf: anOuterPort)]
		ifFalse: [self innerOutputPorts at: (self outputPorts indexOf: anOuterPort)]