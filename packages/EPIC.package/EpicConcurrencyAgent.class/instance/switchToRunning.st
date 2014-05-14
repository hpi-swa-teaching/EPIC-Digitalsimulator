controlling
switchToRunning
	self monitor critical: 
		[self isIdle ifFalse: [self error: 'Agent is not idle!'].
		self status: #running]