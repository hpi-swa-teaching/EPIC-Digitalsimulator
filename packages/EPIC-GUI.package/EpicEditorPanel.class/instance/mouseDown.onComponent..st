event handling
mouseDown: anEvent onComponent: aComponent	
	
	self mouseDown: anEvent onObject: aComponent.
	aComponent activate.
	anEvent yellowButtonPressed ifTrue: [ EpicOptionMenu new on: self with: aComponent ].
	aComponent addConfigurationOn: self mainWindow toolbarBox configurationBox.
	self presumeMoveCommand