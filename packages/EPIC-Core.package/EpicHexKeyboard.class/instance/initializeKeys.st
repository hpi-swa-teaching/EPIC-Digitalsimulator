initialization
initializeKeys
	
		0 to: ((2 raisedTo: (self outputPorts size)) - 1) do: [ :i |
			self keys add: (EpicHexKey putAt: (self calculatePositions: i) with: (i printStringBase: 16) and: i)]