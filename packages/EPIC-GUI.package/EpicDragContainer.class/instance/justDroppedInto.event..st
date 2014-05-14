dropping/grabbing
justDroppedInto: aMorph event: anEvent
	self component position: self position.	
	aMorph addComponent: self component.
	self component: nil.
	self delete