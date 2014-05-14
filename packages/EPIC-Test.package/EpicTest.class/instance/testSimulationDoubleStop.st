simulation testing
testSimulationDoubleStop
	| simulator |
	simulator:= EpicSimulator new.
	simulator stopSimulation.
	
	self shouldnt: [simulator stopSimulation] raise: Error