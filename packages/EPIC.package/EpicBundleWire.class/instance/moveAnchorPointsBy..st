accessing
moveAnchorPointsBy: aDelta
	| newAnchors |
	
	newAnchors := OrderedCollection new.
	self anchorPoints do: [ :eachPoint |
			newAnchors add: (EpicAnchor new 
				initializeAt: eachPoint point + aDelta)
	].
	
	self anchorPoints: newAnchors.

	self generateDrawAnchors.