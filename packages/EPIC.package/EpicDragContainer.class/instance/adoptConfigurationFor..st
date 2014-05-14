configuration
adoptConfigurationFor: aComponent
	EpicConfiguration 
		registerInstance: self
		with: (EpicConfiguration instanceFor: aComponent)