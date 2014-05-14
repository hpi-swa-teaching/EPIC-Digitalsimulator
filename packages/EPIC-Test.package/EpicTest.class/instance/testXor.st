component testing
testXor
	self assert: [EpicXor new outputValues first = false].
	
	self simulate: EpicXor new with: #(true true) expecting: false.
	self simulate: EpicXor new with: #(true false) expecting: true.
	self simulate: EpicXor new with: #(false true) expecting: true.
	self simulate: EpicXor new with: #(false false) expecting: false.