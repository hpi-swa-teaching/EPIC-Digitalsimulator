component testing
testNot
	self assert: [EpicNot new outputValues first = true].
	
	self simulate: EpicNot new with: #(true) expecting: false.
	self simulate: EpicNot new with: #(false) expecting: true