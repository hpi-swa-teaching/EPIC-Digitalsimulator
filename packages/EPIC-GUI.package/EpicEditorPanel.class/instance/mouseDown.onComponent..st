event handling
mouseDown: anEvent onComponent: aComponent	
	self mouseDown: anEvent onObject: aComponent.
	aComponent activate.
	self presumeMoveCommand