component testing
testAnd
	self assert: [EpicAnd new outputValues first = false].
	
	self simulate: EpicAnd new with: #(true true) expecting: true.
	self simulate: EpicAnd new with: #(true false) expecting: false.
	self simulate: EpicAnd new with: #(false true) expecting: false.
	self simulate: EpicAnd new with: #(false false) expecting: false