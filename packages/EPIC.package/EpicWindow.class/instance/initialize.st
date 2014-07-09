initialization
initialize
	super initialize.
	self extent: 600@400.
	self layoutPolicy: ProportionalLayout new.
	self postOpenInitialize.