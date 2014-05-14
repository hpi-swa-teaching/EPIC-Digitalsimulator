simulation
giveBundleForPoint: aPoint
	|bundleAnchor result|
	(self wireSegmentInRange: aPoint)ifNotNilDo: [:segment |
		bundleAnchor := self getAnchorByPoint: (segment startPoint).
		bundleAnchor isNil
			ifTrue:  [result := nil]
			ifFalse:[
				bundleAnchor isBundleAnchor 
					ifFalse:  [result := nil]
					ifTrue:[
						bundleAnchor isBundleEnd
							ifTrue:  [result := nil]
							ifFalse: [
								result := self includingBundles detect: [:each |
									each allDrawAnchorPoints includes: segment startPoint 
								] ifNone: [
									nil
								]
							]
					]
			]
	].
	^result