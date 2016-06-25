input/output
exportAsPs
	EpicFileBrowser getSaveFilePath
		ifNotNilDo: [:name |
			self editorBox editorPanel printPSToFileNamed: name fullName ]