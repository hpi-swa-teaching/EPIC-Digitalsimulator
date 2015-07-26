simulation
changePortCount

	| reply |
	reply := FillInTheBlankMorph request: 'How many inputports do you want (4 or 8)?'.
	(reply asInteger isInteger and: (reply asInteger == 4 or: reply asInteger == 8)) ifTrue: [
		[self inputPorts  isEmpty] whileFalse:  
			[self removeMorph: self inputPorts first.
				self inputPorts removeFirst].
		[self selectorPorts  isEmpty ] whileFalse:  
			[self removeMorph: self selectorPorts first.
				self selectorPorts removeFirst].
			self addUnnamedInputPorts: reply asInteger.
			self addUnnamedSelectorPorts: (reply asInteger log: 2).].
	self simulate.