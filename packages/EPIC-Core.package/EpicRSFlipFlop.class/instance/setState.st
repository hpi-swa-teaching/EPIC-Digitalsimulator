as yet unclassified
setState
	self clockState ifFalse: 
		[(self inputValues first xor: self inputValues third) ifFalse: [^ self].
		self inputValues first ifTrue: [self state: true].
		self inputValues third ifTrue: [self state: false]]