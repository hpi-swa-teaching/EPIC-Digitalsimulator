event handling
mouseMove: anEvent onPort: aPort
	self wireStub 
		ifNotNil: [self wireStub setEndPoint: anEvent position]