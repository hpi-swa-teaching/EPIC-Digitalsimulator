accessing
mouseHoverInOnPosition: aPosition
	self wires do: [:each | each increaseLineWidth].
	self increaseLineWidth