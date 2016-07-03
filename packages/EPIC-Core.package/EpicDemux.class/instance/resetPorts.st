modify
resetPorts
	[self outputPorts isEmpty] whileFalse:
		[self removeMorph: self outputPorts first.
		self  outputPorts removeFirst].
	[self selectorPorts  isEmpty ] whileFalse:  
		[self removeMorph: self  selectorPorts first.
		self  selectorPorts  removeFirst].
