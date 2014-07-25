instance creation
gatePanel
	^ (self new)
		color: Color white;
		addComponent: EpicNot new;
		addComponent: EpicEqual new;
		addComponent: EpicOr new;
		addComponent: EpicNor new;
		addComponent: EpicXor new;
		addComponent: EpicXnor new;
		addComponent: EpicAnd new;
		addComponent: EpicNand new;
		autoLayout;
		yourself