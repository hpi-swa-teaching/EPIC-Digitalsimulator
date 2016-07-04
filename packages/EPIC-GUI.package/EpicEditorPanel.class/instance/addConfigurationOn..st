as yet unclassified
addConfigurationOn: aConfigurationBox
	aConfigurationBox configurationPanel
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #width
			setTextSelector: #updateWidth:
			label: 'Canvas width:');
		addMorphBack: (EpicNumericTextConfiguration
			on: self
			getTextSelector: #height
			setTextSelector: #updateHeight:
			label: 'Canvas height:')