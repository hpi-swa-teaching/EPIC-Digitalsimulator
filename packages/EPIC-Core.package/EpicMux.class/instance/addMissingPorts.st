modify
addMissingPorts

	(self inputPorts size == self class minInputPorts) ifTrue: [	
		self  addUnnamedInputPorts:  self class minInputPorts.
		self  addUnnamedSelectorPorts: 1].
	self simulate. 