modify
addMissingPorts

	(self outputPorts size == self class minOutputPorts) ifTrue: [	
		self  addUnnamedOutputPorts:  self class minOutputPorts.
		self  addUnnamedSelectorPorts: 1].
	self simulate. 