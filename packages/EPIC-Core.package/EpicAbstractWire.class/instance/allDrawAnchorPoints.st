accessing
allDrawAnchorPoints
	| allDrawAnchorPoints |
	allDrawAnchorPoints := OrderedCollection new.
	self drawAnchorPoints do: [ :section|
		allDrawAnchorPoints addAll: section].
	^allDrawAnchorPoints