component testing
testDFlipFlop
	| component |
	component := EpicDFlipFlop new.
	self assert: [component outputValues first = false].
	self assert: [component outputValues second = true].
	"simulate data true"
	self simulate: component with: #(true false) expecting: #(false true).
	self simulate: component with: #(true true) expecting: #(true false).	
	self simulate: component with: #(false true) expecting: #(true false).	
	self simulate: component with: #(false false) expecting: #(true false).	
	self simulate: component with: #(true false) expecting: #(true false).	
	"simulate data false"
	component := EpicDFlipFlop new.
	self simulate: component with: #(false false) expecting: #(false true).
	self simulate: component with: #(false true) expecting: #(false true).	
	self simulate: component with: #(true true) expecting: #(false true).	
	self simulate: component with: #(false false) expecting: #(false true).	
	self simulate: component with: #(true false) expecting: #(false true).	