timing
increaseSimulationTimeDuring: aBlock
	| time |
	time := DateAndTime now.
	aBlock value.
	self increaseSimulationTime: 
		(DateAndTime now - time) asMilliSeconds  / self class timeMultiplier
	