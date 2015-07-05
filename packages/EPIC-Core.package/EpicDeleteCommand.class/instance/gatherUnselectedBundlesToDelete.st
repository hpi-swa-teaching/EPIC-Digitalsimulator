as yet unclassified
gatherUnselectedBundlesToDelete
	
	self wires do: [ :eachWire |
		eachWire bundled ifTrue: [
			self checkBundleDeletion: eachWire includingBundles first]]