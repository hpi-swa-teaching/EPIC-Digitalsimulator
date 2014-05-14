ports
subComponentPorts
	^ self components 
		gather: [:eachComponent | 
			eachComponent ports
		]