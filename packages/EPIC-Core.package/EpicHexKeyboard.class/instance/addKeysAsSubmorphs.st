initialization
addKeysAsSubmorphs
	1 to: (2 raisedTo: (self outputPorts size)) do: [:i |
		self addMorph: (self keys at: i)]