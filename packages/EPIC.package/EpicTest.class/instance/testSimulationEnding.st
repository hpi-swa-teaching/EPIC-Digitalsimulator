simulation testing
testSimulationEnding
	| simulator gate semaphore |
	simulator:= EpicSimulator new.	
	gate := EpicInstrumentedTestGate new.
	semaphore := Semaphore new.
	
	self assert: [gate simulationCycles = 0].
	
	gate maxSimulationCycles: self cyclesToTest.
	gate when: #cycleLimitReached evaluate: [semaphore signal].
	
	simulator addComponent: gate.
	
	self assert: [simulator eventsAreWaiting not].
	
	simulator addWire: (EpicWire from: gate outputPorts first to: gate inputPorts first).
	
	self assert: [(semaphore waitTimeoutSeconds: 1) not].
	self assert: [semaphore isSignaled not].
	
	self assert: [simulator eventsAreWaiting not]
	