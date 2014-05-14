controlling
abort
	self monitor 
		critical: [ self isIdle
			ifFalse: [ self 
				status: #aborting;
				wakeUp
			]
		]