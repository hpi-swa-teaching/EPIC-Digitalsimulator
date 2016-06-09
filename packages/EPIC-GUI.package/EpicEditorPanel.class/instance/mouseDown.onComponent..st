event handling
mouseDown: anEvent onComponent: aComponent	
	self mouseDown: anEvent onObject: aComponent.
	aComponent activate.
	anEvent yellowButtonPressed
		ifTrue:  [ self openComponentOptionMenu ].
		
	self presumeMoveCommand