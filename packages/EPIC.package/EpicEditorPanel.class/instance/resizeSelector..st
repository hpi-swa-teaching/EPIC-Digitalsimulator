event handling
resizeSelector: anEvent
	self selector 
		ifNotNil: [self selector updatePosition: anEvent position]
