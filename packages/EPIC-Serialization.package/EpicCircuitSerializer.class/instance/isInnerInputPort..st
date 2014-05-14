helper messages
isInnerInputPort: aPort
	^ aPort component isCircuit 
		and: [aPort component innerInputPorts includes: aPort]