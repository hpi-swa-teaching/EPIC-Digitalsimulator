output
printSVGToFile: aFileStream 
	| document |
	document := EpicSVGDocument new.
	self fullDrawOn: (EpicSVGCanvas on: document).
	
	document
		extent: self extent;
		viewbox: self fullBounds.
		
	document printOn: aFileStream.
	aFileStream close