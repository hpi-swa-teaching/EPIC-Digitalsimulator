managing simulated objects
addComponent: aComponent
	self components add: aComponent.
	aComponent inputPorts 
		do: [:eachPort | 
			eachPort 
				removeActionsWithReceiver: aComponent forEvent: #valueChanged;
				when: #valueChanged send: #delayedInputPortSimulate: to: self with: eachPort
		].
	aComponent when: #deleted send: #removeComponent: to: self with: aComponent