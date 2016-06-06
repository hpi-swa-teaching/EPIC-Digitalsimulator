accessing
transformBy: aDisplayTransform clippingTo: aClipRect during: aBlock smoothing: cellSize

	self clipBy: aClipRect during: [ :myself |
		myself transformBy: aDisplayTransform during: aBlock]