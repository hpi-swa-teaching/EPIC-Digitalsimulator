as yet unclassified
addConfigurationOn: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicTextConfiguration
			on: self
			getTextSelector: #labelName
			setTextSelector: #customLabelName:
			label: 'Component Label:');
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