component testing
testLamp
	| lamp |
	lamp := EpicLamp new.
	self assert: [lamp isPowered not].
	
	lamp simulateWith: #(true).
	self assert: [lamp isPowered].
	
	lamp simulateWith: #(false).
	self assert: [lamp isPowered not]