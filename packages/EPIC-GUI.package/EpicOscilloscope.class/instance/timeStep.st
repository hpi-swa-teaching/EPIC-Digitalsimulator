accessing
timeStep
	[self maximalPrintableValues < self values size] whileTrue: [self values removeFirst ].
	
	self values add: self port value.
	self changed