modify
resetPorts
	[self inputPorts isEmpty] whileFalse:
		[self removeMorph: self inputPorts first.
		self  inputPorts removeFirst].
	[self selectorPorts  isEmpty ] whileFalse:  
		[self removeMorph: self  selectorPorts first.
		self  selectorPorts  removeFirst].
