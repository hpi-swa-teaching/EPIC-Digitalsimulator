geometry
moveAnchorPointsBy: aDelta
	self anchorPoints: (
		self anchorPoints collect: [ :eachPoint | 
			(eachPoint isBundleAnchor) ifTrue: [
				EpicBundleAnchor new 
					initializeAt: eachPoint point + aDelta; 
					isBundleEnd: eachPoint isBundleEnd.	
			] ifFalse: [
				EpicAnchor new initializeAt: eachPoint point + aDelta.
			]
		]
	).
	self generateDrawAnchors