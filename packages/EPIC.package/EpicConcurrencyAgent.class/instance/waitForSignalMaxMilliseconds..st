waiting
waitForSignalMaxMilliseconds: aNumber
	self monitor critical: 
		[self shouldAbort ifTrue: [^self].	
		self status: #waiting.
		self monitor waitFor: #wakeUp maxMilliseconds: aNumber.
		self shouldAbort ifTrue: [^self].
		self status: #running]
	