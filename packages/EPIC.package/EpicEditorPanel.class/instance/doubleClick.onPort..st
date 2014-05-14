event handling
doubleClick: anEvent onPort: aPort
	(EpicCircuitNamingDialog 
		getPortNameWithTitle: 'Change Port Name' 
		label: 'Please enter a new name for this port' 
	) ifNotNilDo: [ :portName |
		aPort setLabel: portName
	]