component testing
testNand
	self assert: [EpicNand new outputValues first = true].
	
	self simulate: EpicNand new with: #(true true) expecting: false.
	self simulate: EpicNand new with: #(true false) expecting: true.
	self simulate: EpicNand new with: #(false true) expecting: true.
	self simulate: EpicNand new with: #(false false) expecting: true