input/output
exportAsPng
	EpicFileManager getSaveFilePath
		 ifNotNilDo: [:name |
			self editorBox editorPanel exportAsPNGNamed: name fullName
		]