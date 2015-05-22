component testing
testHalfAdder
	self assert: [EpicHalfAdder new outputValues first = false].
	self assert: [EpicHalfAdder new outputValues second = false].
	
	self simulate: EpicHalfAdder new with: #(true true) expecting: (OrderedCollection withAll: #(false true)).
	self simulate: EpicHalfAdder new with: #(true false) expecting: (OrderedCollection withAll: #(true false)).
	self simulate: EpicHalfAdder new with: #(false true) expecting: (OrderedCollection withAll: #(true false)).
	self simulate: EpicHalfAdder new with: #(false false) expecting: (OrderedCollection withAll: #(false false)).