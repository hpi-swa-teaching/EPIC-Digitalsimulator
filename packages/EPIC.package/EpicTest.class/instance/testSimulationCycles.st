simulation testing
testSimulationCycles
	| simulator gate semaphore timeouted|
	simulator:= EpicSimulator new.	
	gate := EpicInstrumentedTestGate new.
	semaphore := Semaphore new.
	
	self assert: [gate simulationCycles = 0].
	
	gate maxSimulationCycles: self cyclesToTest.
	gate when: #cycleLimitReached evaluate: [semaphore signal].
	
	simulator addComponent: gate.
	
	self assert: [gate simulationCycles = 0].
	
	simulator addWire: (EpicWire from: gate outputPorts first to: gate inputPorts first).
		
	timeouted := (semaphore waitTimeoutSeconds: 10).	
	self assert: [ timeouted not].	
	self assert: [semaphore isSignaled not].
	
	self assert: [gate simulationCycles = self cyclesToTest]
	