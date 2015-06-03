component testing
testDFlipFlop
	| component |
	
	component := EpicDFlipFlop new.
	self assert: [component state = false].
	self assert: [component outputValues asArray = #(false true)].

	component inputPorts first value: true.
	component inputPorts second value: false.
	component simulateWith: #(true false).
	self assert: [component state = false].
	self assert: [component outputValues asArray = #(false true)].

	component inputPorts first value: true.
	component inputPorts second value: true.
	component simulateWith: #(true true).
	self assert: [component state = true].
	self assert: [component outputValues asArray = #(true false)].

	component inputPorts first value: false.
	component inputPorts second value: true.
	component simulateWith: #(false true).
	self assert: [component state = true].
	self assert: [component outputValues asArray = #(true false)].

	