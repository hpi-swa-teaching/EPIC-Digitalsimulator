wiring
isUnbundledWireList: aWireList

	^ aWireList allSatisfy: [ :eachWire | 
		(eachWire isBundle or: (eachWire bundled)) not]