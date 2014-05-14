managing simulated objects
addWire: aWire
	aWire startPort 
		removeActionsWithReceiver: aWire forEvent: #valueChanged.
		
	aWire startPort 
		when: #valueChanged 
		send: #delayedOutputPortSimulate: 
		to: self 
		with: aWire startPort.
	
	aWire when: #deleted send: #removeWireFrom: to: self with: aWire startPort 