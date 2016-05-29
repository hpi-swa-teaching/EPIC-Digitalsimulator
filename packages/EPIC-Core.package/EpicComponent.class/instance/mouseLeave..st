event handling
mouseLeave: anEvent
	self toggleLabelOnHover ifTrue: [self removeLabel]