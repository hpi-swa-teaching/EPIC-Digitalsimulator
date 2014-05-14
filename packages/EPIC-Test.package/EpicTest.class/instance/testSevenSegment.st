component testing
testSevenSegment
	| component |
	component := EpicSevenSegment  new.
	self assert: [component centerSegment isPowered not].
	self assert: [component topSegment isPowered not].
	self assert: [component bottomSegment isPowered not].

	component simulateWith: #(true true true true true true false).
	self assert: [component centerSegment isPowered not].
	self assert: [component topSegment isPowered].
	self assert: [component bottomSegment isPowered].
	
	component simulateWith: #(true false false false false false false).
	self assert: [component centerSegment isPowered not].
	self assert: [component topSegment isPowered].
	self assert: [component bottomSegment isPowered not].