component testing
testRegister
	| component |
	
	component := EpicRegister new.
	self assert: [component state = #(false false false false) asOrderedCollection].
	self assert: [component outputValues asArray = #(false false false false)].
	
	component inputPorts first value: true.
	component inputPorts second value: false.
	component inputPorts third value: false.
	component inputPorts fourth value: false.
	component inputPorts fifth value: true.		
	component simulateWith: #(true false false false true).
	self assert: [component state = #(true false false false) asOrderedCollection].
	self assert: [component outputValues asArray = #(true false false false)].

	component inputPorts fifth value: false.
	component simulateWith: #(true false false false false).
	self assert: [component state = #(true false false false) asOrderedCollection].
	self assert: [component outputValues asArray = #(true false false false)].

	component inputPorts second value: true.
	component inputPorts fifth value: true.
	component simulateWith: #(true true false false true).
	self assert: [component state = #(true true false false) asOrderedCollection].
	self assert: [component outputValues asArray = #(true true false false)].