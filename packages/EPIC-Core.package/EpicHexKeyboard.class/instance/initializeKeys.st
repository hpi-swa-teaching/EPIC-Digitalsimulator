initialization
initializeKeys
	0 to: ((2 raisedTo: (self outputPorts size)) -1) do: [:i |
		self keys add: (EpicHexKey putAt: ((10 + ((i \\ 4) * 20))@(10 + ((i // 4) * 20))) with: (i printStringBase: 16) and: i)]