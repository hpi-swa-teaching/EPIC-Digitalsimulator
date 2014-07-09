component testing
testRSFlipFlop
	| component |
	component := EpicRSFlipFlop new.
	self assert: [component outputValues first = false].
	self assert: [component outputValues second = true].
	
	self simulate: component with: #(true false) expecting: #(true false).
	self simulate: component with: #(false false) expecting: #(true false).	
	self simulate: component with: #(false true) expecting: #(false true).
	self simulate: component with: #(false false) expecting: #(false true).