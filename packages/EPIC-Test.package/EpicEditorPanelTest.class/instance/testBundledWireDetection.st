bundeling
testBundledWireDetection
	| wireList wire1 bundleWireList bundle |
	
	wire1 := self getWire.
	bundleWireList := OrderedCollection new add: wire1; yourself.
	bundle := EpicBundleWire new addWires: bundleWireList.
	
	wireList := OrderedCollection new.
	wireList add: self getWire.
	wireList add: wire1.
	
	self
		assert: ((self panel isBundleWithWires: wireList) = false);
		assert: ((self panel isBundleWithWires: wireList) = false)