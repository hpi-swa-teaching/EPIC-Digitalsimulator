wiring
isBundleWithWires: aWireList
	| bundleCount |
	
	bundleCount := 0.
	aWireList do: [ :wire | 
		wire isBundle ifTrue: [ bundleCount := bundleCount + 1 ].
		wire bundled ifTrue: [  ^false ].
	].
	
	((bundleCount = 1) and: (aWireList size > 1))
		ifTrue: [ ^true ];
		ifFalse: [ ^false ]