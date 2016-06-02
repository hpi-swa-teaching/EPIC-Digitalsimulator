as yet unclassified
testBasicText

	self document
		drawString: 'Basic Text'
		at: 10@30
		fontInfo: {'DejaVu Sans' . 12} asOrderedCollection
		color: Color red.
		
	self assert: self basicText equals: self document asString