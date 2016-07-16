execution
createNewTabButton
	^ PluggableButtonMorphPlus new
		label: 'new';
		action: [self getCreateNewTabFunction];
		yourself