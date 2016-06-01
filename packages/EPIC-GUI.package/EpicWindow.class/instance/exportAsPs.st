input/output
exportAsPs
	EpicFileManager getSaveFilePath
		ifNotNilDo: [:name |
			self editorBox editorPanel printPSToFileNamed: name fullName
		]