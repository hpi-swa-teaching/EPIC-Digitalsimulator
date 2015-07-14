simulation testing
testSimulationDoubleStart
	| simulator |
	simulator:= EpicSimulator new.
	self should: [simulator initialStartSimulation] raise: Error.
	
	simulator stopSimulation.