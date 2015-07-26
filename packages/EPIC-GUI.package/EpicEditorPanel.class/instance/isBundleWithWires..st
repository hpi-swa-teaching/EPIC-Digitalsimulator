wiring
isBundleWithWires: aWireList

	(aWireList anySatisfy: [ :eachWire | eachWire bundled]) ifTrue: [ ^ false ].
	
	^ (aWireList count: [ :eachWire | eachWire isBundle ]) = 1