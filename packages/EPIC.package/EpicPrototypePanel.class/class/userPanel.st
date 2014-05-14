instance creation
userPanel
	^ (self new)
		color: Color white;
		addComponents: self customComponents;
		autoLayout;
		yourself