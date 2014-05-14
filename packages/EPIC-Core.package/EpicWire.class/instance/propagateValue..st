simulation
propagateValue: aValue
	self endPort ifNotNilDo:[:a| self endPort setValue: aValue.
							self changed]