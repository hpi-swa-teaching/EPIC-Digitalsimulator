command handling
fetchWireAnchors
	
	self wireStartAnchors: Dictionary new.
	self wires do:[ :aWire |
		self wireStartAnchors at: aWire put: aWire anchorPoints]