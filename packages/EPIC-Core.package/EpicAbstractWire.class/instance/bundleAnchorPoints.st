accessing
bundleAnchorPoints
	^ self anchorPoints select: [ :anAnchorPoint | anAnchorPoint isBundleAnchor]