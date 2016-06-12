event handling
clickOnBackground: anEvent
	self wireStub 
		ifNotNilDo: [ :stub | stub addAnchorPoint: anEvent position ]
		ifNil: [
			anEvent shiftPressed
				ifFalse:	[ ^self deselectAllComponents ]
		]