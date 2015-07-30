modify
changePortCount

	| reply |
	reply := FillInTheBlankMorph request: 'How many inputports do you want (4 or 8)?'.
	(reply asInteger isInteger and: (reply asInteger == 8)) ifTrue: [
		self addMissingPorts].
	(reply asInteger isInteger and: (reply asInteger == 4)) ifTrue: [
		self deleteAdditionalPorts]
