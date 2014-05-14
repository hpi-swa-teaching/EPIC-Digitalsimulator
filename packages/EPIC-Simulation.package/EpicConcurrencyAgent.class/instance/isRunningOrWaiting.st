controlling
isRunningOrWaiting
	self monitor 
		critical: [^ self isRunning or: [self isWaiting]]