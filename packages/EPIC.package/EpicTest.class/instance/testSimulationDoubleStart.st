simulation testing
testSimulationDoubleStart
	| simulator |
	simulator:= EpicSimulator new.
	self should: [simulator startSimulation] raise: Error.
	
	simulator stopSimulation.