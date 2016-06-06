*EPIC-Serialization
exportAsSVGNamed: aString

	| document stream |
	document := EpicSVGDocument new.
	self fullDrawOn: (EpicSVGCanvas on: document).
	
	document
		extent: self extent;
		viewbox: self fullBounds.
		
	stream := FileStream newFileNamed: aString.
	document printOn: stream.
	stream close