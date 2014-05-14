instance creation
switchPanel
	^ (self new)
		color: Color white;
		addComponent: EpicClock new;
		addComponent: EpicSwitch new;
		addComponent: EpicPushButton new;
		addComponent: EpicOne new;
		autoLayout;
		yourself