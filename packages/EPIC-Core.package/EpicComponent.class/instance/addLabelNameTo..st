configuration menu
addLabelNameTo: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicTextConfiguration
			on: self
			getTextSelector: #labelName
			setTextSelector: #customLabelName:
			label: 'Component Label:')