accessing
inputValues
	^ self inputPorts collect: [:eachPort | eachPort value]