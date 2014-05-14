combining
unbundleSelectedWires
	self selectedWires do: [:each |
		each isBundle ifTrue: [each delete]
	].