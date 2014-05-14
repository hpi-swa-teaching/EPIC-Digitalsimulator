serialization
outputPortsAsXMLElement
	| output |
	output := XMLElement named: 'output'.
	
	self circuit innerOutputPorts do: [:eachPort | 
		output addElement: (self portAsXMLElement: eachPort)].
	
	^ output