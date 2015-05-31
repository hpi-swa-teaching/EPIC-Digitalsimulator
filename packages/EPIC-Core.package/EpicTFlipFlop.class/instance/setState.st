as yet unclassified
setState
	((self inputValues second) and: (self inputValues first)) ifTrue:
		[self state: self state not].