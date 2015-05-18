component testing
testMux
	| component |
	
	component := EpicMux new.
	self assert: [component outputValues first = false].
	
	component simulateWith: #(true true true true).
	self assert: [component outputValues first = true].
	self assert: [(component toInteger: component selectorPorts) = 1].

	component selectorPorts first setValue: true.
	component simulateWith: #(true true true true).
	self assert: [component outputValues first = true].
	component simulateWith: #(true true false true).
	self assert: [component outputValues first = false].
	self assert: [(component toInteger: component selectorPorts) = 3]