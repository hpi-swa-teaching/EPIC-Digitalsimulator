port & wire testing
testWireAnchorInsertion
	| wire drawAnchorPoints |
	wire := self getWire.
	
	wire
		addAnchorPoint: 0@0;
		addAnchorPoint: 1@1;
		addAnchorPoint: 3@3;
		addAnchorPoint: 2@2 atIndex: 3;
		addBundleAnchorPoint: 5@5 atIndex: 3;
		addBundleEndAnchorPoint: 6@6 atIndex: 5.
		
	drawAnchorPoints := wire generateDrawAnchors.
	self
		assert: (drawAnchorPoints size = 2);
		assert: (((drawAnchorPoints at: 1) at: 3)  = (1@1));
		assert: (((drawAnchorPoints at: 2) at: 3) = (5@5)).