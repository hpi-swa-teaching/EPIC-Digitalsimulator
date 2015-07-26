combining
createNewBundle
	| bundleCommand |
	(self isUnbundledWireList: self selectedWires) ifTrue: [
		bundleCommand := self createBundleCommand.
		self commandExecutor executeCommand: bundleCommand].