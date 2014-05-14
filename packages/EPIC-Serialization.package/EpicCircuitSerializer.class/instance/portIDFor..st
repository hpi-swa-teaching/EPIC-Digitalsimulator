helper messages
portIDFor: aPort
	(self isInnerInputPort: aPort)
		ifTrue: [^ 'innerInput', (aPort component innerInputPorts indexOf: aPort) asString].
	(self isInnerOutputPort: aPort)
		ifTrue: [^ 'innerOutput', (aPort component innerOutputPorts indexOf: aPort) asString].
	(self isOuterInputPort: aPort)
		ifTrue: [^ 'input', (aPort component inputPorts indexOf: aPort) asString].
	(self isOuterOutputPort: aPort)
		ifTrue: [^ 'output', (aPort component outputPorts indexOf: aPort) asString].