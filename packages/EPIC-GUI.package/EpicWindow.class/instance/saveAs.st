input/output
saveAs
	EpicFileManager getSaveFilePath
		 ifNotNilDo: [:name |
			self saveAs: name
		]