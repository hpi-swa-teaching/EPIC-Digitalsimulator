I am a simulator and ensure the correct (chronological) execution of the value changes between circuits.

Instance Variables
	agent:		<EpicConcurrencyAgent>
	components:		<OrderedCollection>
	queueMutex:		<Mutex>
	simulationQueue:		<Heap>
	simulationTime:		<Number>
	wires:		<OrderedCollection>

agent
	- an EpicConcurrencyAgent that controls parallel executions of the simulator

components
	- circuit elements that the simulator simulates and monitors

queueMutex
	- mutex for the synchronised access to the simulationQueue

simulationQueue
	- queue of all outstanding SimulationsEvents (always sorted by time)

simulationTime
	- current (logical) simulation time that is incremented step wise

wires
	- wires whose changes the simulator simulates temporally correct