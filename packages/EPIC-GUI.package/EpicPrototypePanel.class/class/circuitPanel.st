instance creation
circuitPanel
	^ (self new)
		color: Color white;
		addComponent: EpicConverter new;
		addComponent: EpicRegister new;
		addComponent: EpicRSFlipFlop new;
		addComponent: EpicTFlipFlop new;
		addComponent: EpicDFlipFlop new;
		addComponent: EpicInputOutputDelay new;
		addComponent: EpicHalfAdder new;
		addComponent: EpicMux new;
		addComponent: EpicDemux new;	
		addComponent: EpicTunnelOpening new;
		autoLayout;
		yourself
