combining
bundleSelectedWires
	| wireList selectedBundle bundleCommand |
	(self isUnbundledWireList: self selectedWires) ifTrue: [
		bundleCommand := self createBundleCommand.
		self commandExecutor executeCommand: bundleCommand].

	(self isBundleWithWires: self selectedWires) ifTrue:[
		selectedBundle := self selectedWires detect: [ :detected | detected isBundle ].
		wireList := self selectedWires.
		wireList remove: selectedBundle.
		bundleCommand := self createAddWireToBundleCommandFor: selectedBundle with: wireList.
		self commandExecutor executeCommand: bundleCommand]