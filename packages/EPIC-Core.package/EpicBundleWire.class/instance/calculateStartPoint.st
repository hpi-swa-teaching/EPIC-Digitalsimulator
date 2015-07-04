as yet unclassified
calculateStartPoint

	| xPosition yPosition|
	xPosition := (self wires collect: [ :eachWire | eachWire startPoint x]) max +
				 self bundleOffset.
	yPosition := (self wires collect: [ :eachWire | eachWire startPoint y]) average rounded.
	^ (xPosition @ yPosition)