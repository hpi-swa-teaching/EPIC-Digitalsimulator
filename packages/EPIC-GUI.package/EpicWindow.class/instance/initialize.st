initialization
initialize
	super initialize.
	self extent: 1000@600.
	self layoutPolicy: ProportionalLayout new.
	self postOpenInitialize.