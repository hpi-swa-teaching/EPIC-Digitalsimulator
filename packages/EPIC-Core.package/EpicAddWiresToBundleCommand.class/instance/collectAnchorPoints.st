as yet unclassified
collectAnchorPoints

	self anchorPoints: Dictionary new.
	self wires do: [ :eachWire |
		self anchorPoints at: eachWire put: eachWire anchorPoints deepCopy]