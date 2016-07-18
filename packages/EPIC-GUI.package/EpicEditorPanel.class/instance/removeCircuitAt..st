circuit tabbing
removeCircuitAt: anIndex
	self circuits removeAt: anIndex.
	self showCircuit: (self nextCircuitFrom: anIndex). 
	self triggerEvent: #updateNavigationBar.