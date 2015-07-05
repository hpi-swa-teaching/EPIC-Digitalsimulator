bundeling
testSeveralBundlesDetection
	| wireList wire1 wire2 bundle1 bundle2 |
	
	wire1 := self getWire.
	wire2 := self getWire.
	bundle1 := EpicBundleWire new addWires: {wire1} asOrderedCollection.
	bundle2 := EpicBundleWire new addWires: {wire2} asOrderedCollection.
	
	wireList := OrderedCollection new.
	wireList
		add: self getWire;
		add: bundle1;
		add: self getWire;
		add: bundle2.
	
	self
		assert: ((self panel isBundleWithWires: wireList) = false);
		assert: ((self panel isBundleWithWires: wireList) = false).