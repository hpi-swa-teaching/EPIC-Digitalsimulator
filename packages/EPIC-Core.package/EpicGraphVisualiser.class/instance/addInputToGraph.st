as yet unclassified
addInputToGraph
	self agent waitForSignalMaxMilliseconds: self delay.
	self refreshGraphWith: self inputValues first.
	self outputPorts first setValue: self inputValues first