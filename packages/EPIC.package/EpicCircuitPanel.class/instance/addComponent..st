accessing
addComponent: aComponent

	self 
		showComponent: aComponent;
		triggerEvent: #componentAdded with: aComponent