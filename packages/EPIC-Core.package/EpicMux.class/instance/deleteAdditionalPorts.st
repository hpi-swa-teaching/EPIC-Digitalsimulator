modify
deleteAdditionalPorts
	[self inputPorts isEmpty] whileFalse:
		[self removeMorph: self inputPorts first.
		self  inputPorts removeFirst].
	[self selectorPorts  isEmpty ] whileFalse:  
		[self removeMorph: self  selectorPorts first.
		self  selectorPorts  removeFirst].
	self  addUnnamedInputPorts:  (2 raisedTo: self portCounter) .
	self  addUnnamedSelectorPorts: self portCounter.
	self simulate. 

