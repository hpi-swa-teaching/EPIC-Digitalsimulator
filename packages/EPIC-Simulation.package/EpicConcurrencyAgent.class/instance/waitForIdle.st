waiting
waitForIdle 
	self monitor 
		critical: [ self isIdle 
			ifFalse: [self monitor waitFor: #idle]
		]
	