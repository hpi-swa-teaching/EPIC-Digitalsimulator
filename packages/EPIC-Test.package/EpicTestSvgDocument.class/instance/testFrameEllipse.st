as yet unclassified
testFrameEllipse

	self document
		frameEllipseAt: 100@50
		radius: 20@30
		borderWidth: 2
		borderColor: Color green.
		
	self assert: self frameEllipse equals: self document asString