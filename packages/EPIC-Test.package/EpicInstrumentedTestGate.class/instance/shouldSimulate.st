simulation
shouldSimulate
	^ self maxSimulationCycles = -1 or: 
		[self simulationCycles < self maxSimulationCycles]