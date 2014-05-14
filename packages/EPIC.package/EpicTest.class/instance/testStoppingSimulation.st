simulation testing
testStoppingSimulation
	| simulator |
	simulator:= EpicSimulator new.
	simulator stopSimulation.
	
	self assert: [simulator isStopped]