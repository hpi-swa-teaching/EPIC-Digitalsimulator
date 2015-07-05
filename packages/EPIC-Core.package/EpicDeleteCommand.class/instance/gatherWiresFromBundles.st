as yet unclassified
gatherWiresFromBundles

	self wiresInBundles: Dictionary new.
	self bundles do: [ :eachBundle |
		self wiresInBundles at: eachBundle put: eachBundle wires]