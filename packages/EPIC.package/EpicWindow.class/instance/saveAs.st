input/output
saveAs
	(EpicCircuitNamingDialog 
		getCircuitNameWithTitle: 'Save as' 
		label: 'Enter circuit name') ifNotNilDo: [:name |
			self saveAs: name
		]