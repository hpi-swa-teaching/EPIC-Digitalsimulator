accessing
halfOfComponents
	| toggle |
	toggle := false.
	^ self panel components select: [:eachComponent |
		toggle := toggle not.
		toggle
	]