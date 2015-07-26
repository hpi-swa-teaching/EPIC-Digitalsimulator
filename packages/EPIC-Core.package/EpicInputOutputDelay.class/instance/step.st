simulation
step

	changedInputs ifNotEmpty: 	[	
		(self timeStampInMilliseconds > self changedInputs first) ifTrue: [
			self value: self value not.
		      self outputPorts first setValue: self value.
			self changedInputs removeFirst]]
	