initialization
connectSimulator
	self editorPanel 
		when: #componentAdded send: #addComponent: to: self simulator;
		when: #wireAdded send: #addWire: to: self simulator
	