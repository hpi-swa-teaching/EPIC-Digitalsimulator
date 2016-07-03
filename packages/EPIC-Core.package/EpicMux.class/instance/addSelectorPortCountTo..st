configuration menu
addSelectorPortCountTo: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #portCounter
			setTextSelector: #portCounter: 
			label: 'Selector Ports:')