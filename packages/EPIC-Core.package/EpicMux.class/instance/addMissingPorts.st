modify
addMissingPorts
	| difference |
	difference := ((2 raisedTo: self portCounter) - self outputPorts size) abs.

	(difference ~= 0) ifTrue: [
		self addUnnamedInputPorts: difference.
		self addUnnamedSelectorPorts: (self selectorPorts size - self portCounter) abs ].
	self simulate.