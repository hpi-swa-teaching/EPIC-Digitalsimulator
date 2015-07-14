initialization
initialize
	super initialize.
	self components: OrderedCollection new;
		simulationQueue: Heap new;
		simulationTime: 1000;
		queueMutex: Mutex new;
		agent: EpicConcurrencyAgent new;
		initialStartSimulation