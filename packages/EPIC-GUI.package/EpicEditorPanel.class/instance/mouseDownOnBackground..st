event handling
mouseDownOnBackground: anEvent.
	"Handle Window-RightClick"
	
	anEvent yellowButtonPressed
		ifTrue:  [ self openOptionMenu. ]