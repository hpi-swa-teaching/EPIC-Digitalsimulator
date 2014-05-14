port & wire testing
testWireBundleSetup
	| wireList |
	wireList := self getBundleSetup.
	
	self
		assert: ((wireList at: 1) startPoint = (0@0));
		assert: ((wireList at: 1) endPoint = (8@2));
		assert: ((wireList at: 2) startPoint = (4@2));
		assert: ((wireList at: 2) endPoint = (10@6)).
	
	wireList do: [ :wire|
		self
			assert: (wire bundled not);
			assert: (wire allDrawAnchorPoints size = 2 ).].