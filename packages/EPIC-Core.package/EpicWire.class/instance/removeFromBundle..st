deletion
removeFromBundle: aBundle

	(self includingBundles includes: aBundle) ifTrue: [
		self 
			resetAnchorPoints;
			generateDrawAnchors;
			updateBounds.
		self includingBundles remove: aBundle]