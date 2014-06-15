testing
testDynamicFullscreen

	self window ownerChanged.
	self assert:[World bounds = self window bounds].
	
	World bounds: (Rectangle origin: 10@10 corner: 500@500).
	self window ownerChanged.
	self assert:[World bounds = self window bounds]