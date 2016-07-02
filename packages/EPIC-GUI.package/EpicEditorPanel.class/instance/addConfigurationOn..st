as yet unclassified
addConfigurationOn: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #width
			setTextSelector: #updateWidth:
			label: 'Component width:');
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #height
			setTextSelector: #updateHeight:
			label: 'Component height:')