modify
deleteAdditionalPorts
	[self outputPorts isEmpty] whileFalse:
		[self removeMorph: self outputPorts first.
		self  outputPorts removeFirst].
	[self selectorPorts  isEmpty ] whileFalse:  
		[self removeMorph: self  selectorPorts first.
		self  selectorPorts  removeFirst].
	self  addUnnamedOutputPorts:  (2 raisedTo: self portCounter) .
	self  addUnnamedSelectorPorts: self portCounter.
	self simulate. 

