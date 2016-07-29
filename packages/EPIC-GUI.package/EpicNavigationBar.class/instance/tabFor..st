initialization
tabFor: aCircuit
	^ (PluggableButtonMorphPlus new
		label: '      ', aCircuit fullyQualifiedName;
		action: [self openCircuit: aCircuit ];
		update: self;
		yourself)
		addMorphBack:
			(PluggableButtonMorphPlus new
			label: 'x';
			action: [self removeCircuit: aCircuit ];
			update: self;
			yourself)