combining
bundleSelectedWires
	| bundle wireList selectedBundle bundleCommand|
	(self isUnbundledWireList: self selectedWires) ifTrue: [
		bundleCommand := self createBundleCommand.
		self commandExecutor executeCommand: bundleCommand.
		bundle := bundleCommand bundledWire.
		bundle eventHandler: self wireHandler.
		bundle eventHandler: self wireHandler.
		bundle when: #deleted send: #removeWire: to: self with: bundle.
		self addMorphNearBack: bundle.
		self triggerEvent: #wireAdded with: bundle.
		self addMorphFront: bundle	].

	(self isBundleWithWires: self selectedWires) ifTrue:[
		selectedBundle := self selectedWires detect: [ :detected | detected isBundle ].
		wireList := self selectedWires.
		wireList remove: selectedBundle.
		selectedBundle addWires: wireList]