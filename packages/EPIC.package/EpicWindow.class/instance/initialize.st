initialization
initialize
	super initialize.
	self extent: 600@300.
	self layoutPolicy: ProportionalLayout new.
	self postOpenInitialize.