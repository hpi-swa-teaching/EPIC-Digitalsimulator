combining
addWiresToBundle
	| wireList selectedBundle bundleCommand |
	selectedBundle := self selectedWires detect: [ :detected | detected isBundle ].
	wireList := self selectedWires.
	wireList remove: selectedBundle.
	bundleCommand := self createAddWireToBundleCommandFor: selectedBundle with: wireList.
	self commandExecutor executeCommand: bundleCommand