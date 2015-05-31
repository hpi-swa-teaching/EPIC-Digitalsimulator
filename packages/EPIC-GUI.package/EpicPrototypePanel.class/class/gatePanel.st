instance creation
gatePanel
	^ (self new)
		color: Color white;
		addComponent: EpicRSFlipFlop new;
		addComponent: EpicTFlipFlop new;
		addComponent: EpicDFlipFlop new;
		addComponent: EpicNot new;
		addComponent: EpicEqual new;
		addComponent: EpicOr new;
		addComponent: EpicNor new;
		addComponent: EpicXor new;
		addComponent: EpicXnor new;
		addComponent: EpicAnd new;
		addComponent: EpicNand new;
		addComponent: EpicMux new;
		addComponent: EpicDemux new;
		addComponent: EpicHalfAdder new;
		autoLayout;
		yourself
