port & wire testing
testWireBundle
	| wireList bundle startBundlePoint endBundlePoint |
	wireList := self getBundleSetup.
	
	bundle := EpicBundleWire new addWires: wireList.
	
	startBundlePoint := bundle startBundlePoint.
	endBundlePoint := bundle endBundlePoint.
	
	self
		assert: (startBundlePoint = ((4 + bundle bundleOffset)@1));
		assert: (endBundlePoint = ((8 - bundle bundleOffset)@4)).
		
	wireList do: [ :wire|
		self
			assert: (wire bundled)..]