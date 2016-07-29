event handling
doubleClick: anEvent onComponent: aComponent
	aComponent isCircuit 
		ifTrue: [self navigationBar createNewTab: aComponent ]