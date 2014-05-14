instance creation
verticalAt: aPosition
	| instance |
	instance := self new.
	instance extent: self verticalExtent.
	instance center: aPosition.
	^instance 