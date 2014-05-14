event handling
mouseDown: anEvent onObject: anObject	
	(anObject isSelected or: [anEvent shiftPressed]) ifFalse:
		[self deselectAllComponents].
	
	anEvent shiftPressed 
		ifTrue: [anObject toggleSelected]
		ifFalse: [anObject select]
	