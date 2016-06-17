testing
isVisible: aRectangle

	self clipRect ifNil: [ ^ true ].
	^ super isVisible: aRectangle