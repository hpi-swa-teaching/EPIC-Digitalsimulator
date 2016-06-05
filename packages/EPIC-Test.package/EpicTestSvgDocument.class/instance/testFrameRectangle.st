as yet unclassified
testFrameRectangle

	self document
		frameRectangle: (Rectangle origin: 60@70 corner: 70@90)
		borderWidth: 2
		borderColor: Color green.
		
	self assert: self frameRectangle equals: self document asString