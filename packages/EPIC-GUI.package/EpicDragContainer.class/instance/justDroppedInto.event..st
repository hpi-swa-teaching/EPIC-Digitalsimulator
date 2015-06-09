dropping/grabbing
justDroppedInto: aMorph event: anEvent
	self component position: self position.
	aMorph handleOutsideCommand: ((EpicAddComponentCommand newFor: aMorph) component: self component).
	self component: nil.
	self delete