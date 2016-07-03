configuration menu
addDimensionsTo: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #width
			setTextSelector: #width:
			label: 'Component width:');
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #height
			setTextSelector: #height:
			label: 'Component height:')