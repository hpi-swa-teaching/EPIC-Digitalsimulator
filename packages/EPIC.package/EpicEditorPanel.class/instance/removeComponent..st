accessing
removeComponent: aComponent
	super removeComponent: aComponent.
	self circuit removeSubComponent: aComponent.