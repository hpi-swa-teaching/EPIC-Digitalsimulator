simulation testing
testStartingSimulation
	| simulator |
	simulator:= EpicSimulator new.
	
	self assert: [simulator isRunning].
	
	simulator 
		stopSimulation;
		startSimulation.
	
	self assert: [simulator isRunning].
	
	simulator stopSimulation.