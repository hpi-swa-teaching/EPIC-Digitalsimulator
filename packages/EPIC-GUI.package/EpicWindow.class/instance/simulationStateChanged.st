simulation observation
simulationStateChanged
	self simulationMenu activateAllEntries.
	self simulator isRunning 
		ifTrue: [self simulationMenu deactivateEntries: #(1)].
	self simulator isStopped
		ifTrue: [self simulationMenu deactivateEntries: #(2)]