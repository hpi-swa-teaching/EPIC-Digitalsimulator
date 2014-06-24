testing
testDynamicFullscreen

	self window ownerChanged.
	self assert:[World bounds = self window bounds]