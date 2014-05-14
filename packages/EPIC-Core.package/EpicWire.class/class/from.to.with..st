instance creation
from: aStartPort to: anEndPort with: aCollectionOfAnchorPoints
	self assureDifferentTypesOf: aStartPort and: anEndPort.
	aStartPort isInput ifTrue: [
		^ self 
			from: anEndPort to: aStartPort 
			with: aCollectionOfAnchorPoints reversed
	].
	^ self new
		setStartPort: aStartPort;
		setEndPort: anEndPort;
		anchorPoints: aCollectionOfAnchorPoints;
		propagateValue;
		updateBounds;
		yourself