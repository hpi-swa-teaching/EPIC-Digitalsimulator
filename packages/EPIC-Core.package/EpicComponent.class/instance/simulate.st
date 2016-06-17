simulation
simulate
	self simulateWith: 
		(self inputPorts 
			collect: [:eachInputPort | eachInputPort value]
		)