modify
updatePortCount
	(self selectorPorts size < self portCounter)
	ifTrue: [ self addMissingPorts ]
	ifFalse: [ self deleteAdditionalPorts ]