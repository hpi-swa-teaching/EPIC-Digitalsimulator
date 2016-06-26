as yet unclassified
addConfigurationOn: aConfigurationBox
	aConfigurationBox submorphs first addMorphBack:
		(EpicTextConfiguration on: self getTextSelector: #labelName setTextSelector: #customLabelName: label: 'Component Label: ').