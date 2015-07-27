instance creation
switchPanel
	^ (self new)
		color: Color white;
		addComponent: EpicHexKeyboard  new;
	      addComponent: EpicRegister new;
		addComponent: EpicClock new;
		addComponent: EpicSwitch new;
		addComponent: EpicPushButton new;
		addComponent: EpicOne new;
		autoLayout;
		yourself