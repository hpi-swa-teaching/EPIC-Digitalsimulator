drawing
delete
	| inBundle |
	self wires do: [:eachWire |
		inBundle := false.
		eachWire anchorPoints: (eachWire anchorPoints collect: [:eachPoint |
			inBundle ifTrue: [
				eachPoint isBundleAnchor ifTrue: [
					eachPoint isBundleEnd ifTrue: [inBundle := false].
					EpicAnchor new initializeAt: eachPoint point
				]ifFalse: [nil]
			] ifFalse: [
				eachPoint isBundleAnchor ifTrue:[
					inBundle := true.
					EpicAnchor new initializeAt: eachPoint point
				]ifFalse:[
					eachPoint
				]
			]
		]).
		eachWire anchorPoints: (eachWire anchorPoints select: [:eachItem | eachItem notNil]).
		eachWire generateDrawAnchors.
		eachWire updateBounds.
		eachWire includingBundles remove: self
	].
	super delete