as yet unclassified
setState
	self inputValues second ifTrue: [
		((self inputValues first) and: (self inputValues third)) ifTrue: [^ self].
		self inputValues first ifTrue: [self state: true].
		self inputValues third ifTrue: [self state: false]]