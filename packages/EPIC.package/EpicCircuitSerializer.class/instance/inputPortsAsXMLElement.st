serialization
inputPortsAsXMLElement
	| input |
	input := XMLElement named: 'input'.
	
	self circuit innerInputPorts do: [:eachPort | 
		input addElement: (self portAsXMLElement: eachPort)].
	
	^ input