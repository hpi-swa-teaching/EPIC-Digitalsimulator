initialization
initialize
	super initialize.
	self extent: 600@600.
	self layoutPolicy: ProportionalLayout new.
	self postOpenInitialize.