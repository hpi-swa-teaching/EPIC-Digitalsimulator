initialize
putAt: aPosition with: label and: value
	| instance |
	instance := self new.
	instance label: label.
	instance value: value.
	instance extent:  (20@20).
	instance center: aPosition.
	^instance 