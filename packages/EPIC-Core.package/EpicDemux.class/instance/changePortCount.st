simulation
changePortCount

| reply |


reply := FillInTheBlankMorph request: 'How many outputports do you want (4 or 8)?'.
(reply asInteger isInteger and: (reply asInteger == 4 or: reply asInteger == 8)) ifTrue: [
	[self outputPorts  isEmpty] whileFalse:  
	[self removeMorph: self outputPorts first.
	self  outputPorts removeFirst].
	[self selectorPorts  isEmpty ] whileFalse:  
	[self removeMorph: self  selectorPorts first.
	self  selectorPorts  removeFirst].
	self  addUnnamedOutputPorts:  reply asInteger.
	self  addUnnamedSelectorPorts: (reply asInteger log: 2 ).
	].
self simulate. 