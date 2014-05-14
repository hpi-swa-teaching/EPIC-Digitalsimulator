controlling
wakeUp
	self monitor critical: 
		[self monitor signal: #wakeUp]