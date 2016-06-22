as yet unclassified
testFillFramePolygon

	self document
		fillPolygon: {0@0 . 1@0 . 0@1 } asOrderedCollection
		fillColor: Color red
		borderWidth: 1
		borderColor: Color green.
		
	self assert: self fillFramePolygon equals: self document asString