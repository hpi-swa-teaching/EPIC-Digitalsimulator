as yet unclassified
testFillFrameEllipse

	self document
		fillEllipseAt: 100@50
		radius: 20@30
		color: Color red
		borderWidth: 2
		borderColor: Color green.
		
	self assert: self fillFrameEllipse equals: self document asString