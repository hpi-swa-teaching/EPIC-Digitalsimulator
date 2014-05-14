combining
bundleSelectedWires
	| bundleMorph wireList selectedBundle|
	(self isUnbundledWireList: self selectedWires) ifTrue: [
		bundleMorph := EpicBundleWire new bundle: self selectedWires.
		bundleMorph eventHandler: self wireHandler.
		bundleMorph eventHandler: self wireHandler.
		bundleMorph when: #deleted send: #removeWire: to: self with: bundleMorph.
		self addMorphNearBack: bundleMorph.
		self triggerEvent: #wireAdded with: bundleMorph.
		self addMorphFront: bundleMorph
	].
	(self isBundleWithWires: self selectedWires) ifTrue:[
		selectedBundle := self selectedWires detect: [ :detected | detected isBundle ].
		wireList := self selectedWires.
		wireList remove: selectedBundle.
		selectedBundle addWires: wireList.
	]