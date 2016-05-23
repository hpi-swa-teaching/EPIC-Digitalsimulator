input/output
exportAsPng
	(EpicCircuitNamingDialog 
		getCircuitNameWithTitle: 'Save as' 
		label: 'Enter circuit name') ifNotNilDo: [:name |
			self editorBox editorPanel exportAsPNGNamed: name
		]