input/output
open: aFileStream
	self editorPanel loadCircuitFrom: 
		(XMLDOMParser parseDocumentFrom: aFileStream)