initialization
calculateEndPoint

	| xPosition yPosition|
	xPosition := (self wires collect: [ :eachWire | eachWire endPoint x]) min -
				 self bundleOffset.
	yPosition := (self wires collect: [ :eachWire | eachWire endPoint y]) average rounded.
	^ (xPosition @ yPosition)