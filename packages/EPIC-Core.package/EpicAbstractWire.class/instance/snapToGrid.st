accessing
snapToGrid
	self anchorPoints do: [:each | each snapToGrid].
	self generateDrawAnchors