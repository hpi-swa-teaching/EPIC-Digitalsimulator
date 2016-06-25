input/output
exportAsPng
	EpicFileBrowser getSaveFilePath
		 ifNotNilDo: [:name |
			self editorBox editorPanel exportAsPNGNamed: name fullName ]