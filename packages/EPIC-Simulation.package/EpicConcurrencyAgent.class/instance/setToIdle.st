controlling
setToIdle
	self monitor 
		critical: [
			self status: #idle.
			self monitor signal: #idle
		]