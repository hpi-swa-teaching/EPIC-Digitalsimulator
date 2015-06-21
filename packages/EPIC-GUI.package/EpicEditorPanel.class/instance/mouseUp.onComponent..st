event handling
mouseUp: anEvent onComponent: aComponent
	self selectedComponents do: [:eachComponent | 
		self snapToGridIfAppropriate: eachComponent].
	aComponent deactivate.
	self commandManager executePresumedCommand
	
	
	