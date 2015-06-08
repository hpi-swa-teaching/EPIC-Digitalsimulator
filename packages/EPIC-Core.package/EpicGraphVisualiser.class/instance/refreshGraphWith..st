as yet unclassified
refreshGraphWith: aBoolean
	self needsUpdate ifTrue: [
		self graph addLast: aBoolean.
		self graph: (self graph copyFrom: 2 to: self graph size)]