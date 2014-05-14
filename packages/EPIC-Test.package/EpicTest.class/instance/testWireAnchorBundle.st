port & wire testing
testWireAnchorBundle
	| wire anchor1 anchor2 |
	wire := self getWire.
	
	wire
		addAnchorPoint: 0@0;
		addBundleAnchorPoint: 1@1 atIndex: 2.
		
	anchor1 := (wire anchorPoints at: 1).
	anchor2 := (wire anchorPoints at: 2).
	self
		assert: (anchor1 isBundleAnchor not );
		assert: (anchor2 isBundleAnchor );
		assert: (anchor2 isBundleEnd not).