wire segments
splitAt: aPoint 
	| splittedCollectionOfAnchorPoints wireStub |

	splittedCollectionOfAnchorPoints := OrderedCollection new.
	splittedCollectionOfAnchorPoints add: OrderedCollection new;
									   add: OrderedCollection new.

	wireStub := 1.
	
	self allAnchorPoints overlappingPairsDo: [:point1 :point2 | 
			(aPoint onLineFrom: point1 to: point2 within: 20)
				ifTrue: [
					wireStub := 2.
				 ].				
			(splittedCollectionOfAnchorPoints at: wireStub) add: point2.
		].
	splittedCollectionOfAnchorPoints second removeLast.

	^splittedCollectionOfAnchorPoints