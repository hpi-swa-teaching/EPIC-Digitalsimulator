scheduling
startConcurrent: aBlock
	self switchToRunning.	
	[aBlock ensure: [self setToIdle]] fork