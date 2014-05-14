managing simulated objects
removeWireFrom: aPort
	aPort numberOfWires = 0 ifTrue:
		[aPort removeActionsWithReceiver: self 
							forEvent: #valueChanged]