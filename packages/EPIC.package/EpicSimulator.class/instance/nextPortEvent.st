simulation
nextPortEvent
	self agent 
		run: [self waitUntilEventsArise];
		run: [self waitForFirstEvent].
	^ self agent shouldAbort 
		ifFalse: [self popFrontOfQueue]
		ifTrue: [EpicNilEvent new]