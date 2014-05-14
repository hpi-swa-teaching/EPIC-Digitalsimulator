event handling
startDragOnBackground: anEvent
	self wireStub 
		ifNotNil: [ ^ self ].
	anEvent shiftPressed
		ifFalse:	[self deselectAllComponents].
	self selector: (EpicSelector from: anEvent position to: anEvent hand position).	
	self addMorph: self selector
	