testing
isInputPort: aPort
	^(self inputPorts includes: aPort) or: (self selectorPorts includes: aPort)