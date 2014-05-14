managing simulated objects
removeComponent: aComponent
	self components remove: aComponent.
	aComponent removeActionsWithReceiver: self