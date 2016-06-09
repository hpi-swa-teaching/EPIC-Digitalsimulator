event handling
mouseDownOnBackground: anEvent.
	anEvent yellowButtonPressed
		ifTrue:  [ self openBackgroundOptionMenu ]