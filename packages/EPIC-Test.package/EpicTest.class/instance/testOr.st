component testing
testOr
	self assert: [EpicOr new outputValues first = false].
	
	self simulate: EpicOr new with: #(true true) expecting: true.
	self simulate: EpicOr new with: #(true false) expecting: true.
	self simulate: EpicOr new with: #(false true) expecting: true.
	self simulate: EpicOr new with: #(false false) expecting: false.