modify
updatePortCount
	self 
		resetPorts;
		addUnnamedOutputPorts:  (2 raisedTo: self portCounter);
		addUnnamedSelectorPorts: self portCounter;
		simulate. 