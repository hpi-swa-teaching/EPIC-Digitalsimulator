input/output
exportAsSvg
	EpicFileBrowser getSaveFilePath
		 ifNotNilDo: [:name |
			self editorBox editorPanel exportAsSVGNamed: name fullName ]