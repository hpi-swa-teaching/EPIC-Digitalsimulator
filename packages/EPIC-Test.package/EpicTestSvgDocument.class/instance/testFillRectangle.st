as yet unclassified
testFillRectangle

	self document
		fillRectangle: (Rectangle origin: 60@70 corner: 70@90)
		color: Color red.
		
	self assert: self fillRectangle equals: self document asString