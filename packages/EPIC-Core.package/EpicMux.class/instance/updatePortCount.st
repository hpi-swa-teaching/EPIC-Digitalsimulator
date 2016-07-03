modify
updatePortCount
	self 
		resetPorts;
		addUnnamedInputPorts:  (2 raisedTo: self portCounter);
		addUnnamedSelectorPorts: self portCounter;
		simulate