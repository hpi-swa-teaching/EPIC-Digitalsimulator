initialization
createTabNamed: aName at: anIndex
	^ (PluggableButtonMorphPlus new
		label: '      ', aName;
		action: [self openTab: anIndex ];
		update: self;
		yourself)
		addMorphBack:
			(PluggableButtonMorphPlus new
			label: 'x';
			action: [self removeTab: anIndex ];
			update: self;
			yourself)