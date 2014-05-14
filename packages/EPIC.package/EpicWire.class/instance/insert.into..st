dropping/grabbing
insert: aPoint into: aWireSegment
	| index |
	index := self anchorPoints indexOf:  (self getAnchorByPoint:  (aWireSegment startPoint)).
	self addAnchorPoint: aPoint atIndex: (index+1).
	self generateDrawAnchors