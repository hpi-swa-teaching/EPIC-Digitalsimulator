dropping/grabbing
mouseHoverInOnPosition: aPosition
	self hoverBundle: (self giveBundleForPoint: aPosition).
	self hoverBundle isNil
		ifFalse:[
			self hoverBundle wires do: [:each | each increaseLineWidth].
			self hoverBundle increaseLineWidth 
		]
		ifTrue:[
			self increaseLineWidth 
		]