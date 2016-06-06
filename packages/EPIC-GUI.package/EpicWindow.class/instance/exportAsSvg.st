input/output
exportAsSvg
	EpicFileManager getSaveFilePath
		 ifNotNilDo: [:name |
			self editorBox editorPanel exportAsSVGNamed: name fullName
		]