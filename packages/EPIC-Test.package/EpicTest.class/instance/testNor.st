component testing
testNor
	self assert: [EpicNor new outputValues first = true].
	
	self simulate: EpicNor new with: #(true true) expecting: false.
	self simulate: EpicNor new with: #(true false) expecting: false.
	self simulate: EpicNor new with: #(false true) expecting: false.
	self simulate: EpicNor new with: #(false false) expecting: true.