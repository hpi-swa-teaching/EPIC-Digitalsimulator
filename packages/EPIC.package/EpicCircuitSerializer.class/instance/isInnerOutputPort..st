helper messages
isInnerOutputPort: aPort
	^ aPort component isCircuit 
		and: [aPort component innerOutputPorts includes: aPort]