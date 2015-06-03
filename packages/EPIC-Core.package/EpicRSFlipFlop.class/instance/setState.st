as yet unclassified
setState
	(self inputValues first xor: self inputValues second) ifFalse: [^ self].
	self inputValues first ifTrue: [self state: true].
	self inputValues second ifTrue: [self state: false]