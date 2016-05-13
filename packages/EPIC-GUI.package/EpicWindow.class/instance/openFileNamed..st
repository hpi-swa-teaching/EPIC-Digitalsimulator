input/output
openFileNamed: aFileName
	FileStream fileNamed: aFileName do: [:aStream |
		self halt.
		self editorPanel 
			loadCircuitFrom: (XMLDOMParser parseDocumentFrom: aStream)
	]