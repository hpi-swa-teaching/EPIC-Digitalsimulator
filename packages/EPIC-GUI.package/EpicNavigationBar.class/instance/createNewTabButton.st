initialization
createNewTabButton
	^ PluggableButtonMorphPlus new
		label: '+';
		action: [self createNewTab ];
		update: self;
		yourself