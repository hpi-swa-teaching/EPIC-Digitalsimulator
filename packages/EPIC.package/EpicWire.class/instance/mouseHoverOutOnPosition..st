dropping/grabbing
mouseHoverOutOnPosition: aPosition
	self hoverBundle
			ifNil: [self decreaseLineWidth ]
			ifNotNilDo: [:hb | 
				hb wires do: [:each | each decreaseLineWidth].
				hb decreaseLineWidth.
		].
	self hoverBundle: nil