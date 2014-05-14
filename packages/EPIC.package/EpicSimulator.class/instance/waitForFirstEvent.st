waiting
waitForFirstEvent
	| firstPortEvent |
	self agent 
		while: 	
			[firstPortEvent := self peekFrontOfQueue. 
			firstPortEvent timeStamp > self simulationTime]
		run: 
			[self waitBounded: firstPortEvent timeStamp - self simulationTime]		