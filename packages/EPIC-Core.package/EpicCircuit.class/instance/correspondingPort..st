accessing ports
correspondingPort: aPort
	^ aPort isInnerPort
		ifTrue: [ self correspondingOuterPort: aPort ]
		ifFalse: [ self correspondingInnerPort: aPort ]