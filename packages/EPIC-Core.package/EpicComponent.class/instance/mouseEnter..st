event handling
mouseEnter: anEvent
	self toggleLabelOnHover ifTrue: [self addLabel]