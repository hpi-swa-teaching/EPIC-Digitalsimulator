instance creation
horizontalAt: aPosition
	| instance |
	instance := self new.
	instance extent: self horizontalExtent.
	instance center: aPosition.
	^instance 