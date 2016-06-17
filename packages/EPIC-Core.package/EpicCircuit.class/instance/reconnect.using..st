combining
reconnect: aWire using: anOuterPort
	| innerPort |
	innerPort := self correspondingInnerPort: anOuterPort.
	anOuterPort isInput
		ifTrue: [self reconnect: aWire withIntermediate: anOuterPort and: innerPort]
		ifFalse: [self reconnect: aWire withIntermediate: innerPort and: anOuterPort]