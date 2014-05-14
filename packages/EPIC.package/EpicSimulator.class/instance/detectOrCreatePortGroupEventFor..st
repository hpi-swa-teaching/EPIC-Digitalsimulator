simulation
detectOrCreatePortGroupEventFor: aPortEvent
	self queueMutex critical: [
		^ self simulationQueue 
			detect: 
				[:event |( event 
					isPortEvent 
					and: [event timeStamp = aPortEvent timeStamp])					
					and: [event affectedComponent = aPortEvent affectedComponent]]
			ifNone: [self simulationQueue add: 
				(EpicPortGroupEvent 
					of: aPortEvent affectedComponent 
					when: aPortEvent timeStamp)]
	]