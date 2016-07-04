event handling
mouseDownOnBackground: anEvent.
	"Handle Window-RightClick"
	
	self mainWindow toolbarBox configurationBox clear.
	self addConfigurationOn: self mainWindow toolbarBox configurationBox.
	anEvent yellowButtonPressed
		ifTrue:  [ EpicOptionMenu new on: self ]