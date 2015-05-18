component testing
testDemux
	| component |
	
	component := EpicDemux new.
	self assert: [component outputValues asArray = #(false false false false)].
	
	component simulateWith: #(true).
	self assert: [component outputValues asArray = #(true false false false)].
	self assert: [(component toInteger: component selectorPorts) = 1].

	component selectorPorts first setValue: true.
	component simulateWith: #(true).
	self assert: [component outputValues asArray = #(false false true false)].
	self assert: [(component toInteger: component selectorPorts) = 3]