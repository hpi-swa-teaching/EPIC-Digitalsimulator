input/output
saveAs
	EpicFileBrowser getSaveFilePath
		 ifNotNilDo: [:name |
			self saveAs: name ]