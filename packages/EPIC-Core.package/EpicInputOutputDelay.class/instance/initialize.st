initialization
initialize 

	self value: self class initialValue.
	self millisecondsToWait: self class initialMillisecondsToWait.
	self changedInputs: OrderedCollection new.	
	super initialize 