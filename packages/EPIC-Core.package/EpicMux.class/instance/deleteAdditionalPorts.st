modify
deleteAdditionalPorts

	(self inputPorts size == self class maxInputPorts) ifTrue: [	
		[self inputPorts isEmpty] whileFalse: [
			self removeMorph: self inputPorts first.
			self  inputPorts removeFirst].
		[self selectorPorts  isEmpty ] whileFalse: [
			self removeMorph: self  selectorPorts first.
			self  selectorPorts  removeFirst].
		self  addUnnamedInputPorts:  self class minInputPorts.
		self  addUnnamedSelectorPorts: self class minSelectorPorts].
	self simulate. 

