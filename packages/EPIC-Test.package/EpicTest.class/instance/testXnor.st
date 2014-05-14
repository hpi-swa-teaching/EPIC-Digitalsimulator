component testing
testXnor
	self assert: [EpicXnor new outputValues first = true].
	
	self simulate: EpicXnor new with: #(true true) expecting: true.
	self simulate: EpicXnor new with: #(true false) expecting: false.
	self simulate: EpicXnor new with: #(false true) expecting: false.
	self simulate: EpicXnor new with: #(false false) expecting: true.