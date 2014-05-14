wiring
isUnbundledWireList: aWireList

	aWireList do: [ :wire | 
		(wire isBundle or: (wire bundled)) ifTrue: [
			^false ]].
	
	^true