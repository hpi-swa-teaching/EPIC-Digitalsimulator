modify
deleteAdditionalPorts

	(self outputPorts size == self class maxOutputPorts) ifTrue: [	
		[self outputPorts isEmpty] whileFalse:  
			[self removeMorph: self outputPorts first.
			self  outputPorts removeFirst].
		[self selectorPorts  isEmpty ] whileFalse:  
			[self removeMorph: self  selectorPorts first.
			self  selectorPorts  removeFirst].
		self  addUnnamedOutputPorts:  self class minOutputPorts .
		self  addUnnamedSelectorPorts: self class minSelectorPorts].
		self simulate. 

