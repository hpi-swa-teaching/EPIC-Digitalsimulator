component testing
testInputOutputDelay
	
	self simulate: EpicInputOutputDelay  new with: #(true) expecting: [ (Delay forMilliseconds: self millisecondsToWait). true]
	