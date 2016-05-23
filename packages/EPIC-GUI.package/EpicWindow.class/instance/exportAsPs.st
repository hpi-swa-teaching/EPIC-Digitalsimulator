input/output
exportAsPs
	(EpicCircuitNamingDialog 
		getCircuitNameWithTitle: 'Save as' 
		label: 'Enter circuit name') ifNotNilDo: [:name |
			self editorBox editorPanel printPSToFileNamed: name
		]