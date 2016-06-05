as yet unclassified
testFillFrameRectangle

	self document
		fillRectangle: (Rectangle origin: 60@70 corner: 70@90)
		fillColor: Color red
		borderWidth: 2
		borderColor: Color green.
		
	self assert: self fillFrameRectangle equals: self document asString