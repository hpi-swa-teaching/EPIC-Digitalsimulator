event handling
handleListenEvent: anEvent
	self wireStub ifNotNilDo: [ :stub |
		(anEvent isMouse and: [anEvent isMove])
			ifTrue: [
				(anEvent isMove) ifTrue: [stub setEndPoint: (anEvent position + self owner transform offset).
					self invalidRect: self bounds].
			].
		(anEvent isMouseUp and: [self snapToGrid]) ifTrue: [stub snapToGrid]]