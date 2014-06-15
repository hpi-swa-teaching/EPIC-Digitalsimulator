running
tearDown
	self window delete.
	World submorphsDo: [:each | each visible: true]