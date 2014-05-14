dropping/grabbing
moveGrabbedAnchorBy: anOffset
	self grabbedPoint ifNotNilDo: [ :point|
		(self anchorPoints 
			at: self grabbedPointIndex) 
			changeAnchorBy: anOffset
	].
	self updateBounds