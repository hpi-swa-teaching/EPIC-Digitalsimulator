as yet unclassified
testBasicLine

	self document
		drawLineFrom: 10@20
		to: 30@0
		color: Color green
		width: 2. 
		
	self assert: self basicLine equals: self document asString