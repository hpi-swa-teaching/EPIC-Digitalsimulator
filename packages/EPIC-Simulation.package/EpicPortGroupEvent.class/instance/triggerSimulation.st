simulation
triggerSimulation
	self affectedComponent isSimulating ifTrue: [
		self affectedComponent simulateWith: self restoredInputValues]