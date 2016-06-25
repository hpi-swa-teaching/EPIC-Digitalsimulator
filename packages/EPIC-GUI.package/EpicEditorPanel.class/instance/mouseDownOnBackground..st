event handling
mouseDownOnBackground: anEvent.
	"Handle Window-RightClick"
	
	anEvent yellowButtonPressed
		ifTrue:  [ EpicOptionMenu new on: self ]