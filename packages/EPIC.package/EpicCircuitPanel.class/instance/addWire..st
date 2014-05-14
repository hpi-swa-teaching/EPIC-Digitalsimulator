accessing
addWire: aWire
	self 
		showWire: aWire;
		triggerEvent: #wireAdded with: aWire