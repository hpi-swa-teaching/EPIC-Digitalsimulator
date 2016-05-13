input/output
openFileNamed: aFileName
	FileStream fileNamed: aFileName do: [:aStream |
		self editorPanel 
			loadCircuitFrom: (XMLDOMParser parseDocumentFrom: aStream)
	]