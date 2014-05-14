initialization
initialize
	super initialize.
	self components: OrderedCollection new;
		simulationQueue: Heap new;
		simulationTime: 0;
		queueMutex: Mutex new;
		agent: EpicConcurrencyAgent new;
		startSimulation