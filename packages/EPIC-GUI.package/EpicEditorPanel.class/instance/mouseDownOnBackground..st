event handling
mouseDownOnBackground: anEvent.
	"Handle Window-RightClick"
	
	self mainWindow toolbarBox configurationBox clear.
	anEvent yellowButtonPressed
		ifTrue:  [ EpicOptionMenu new on: self ]