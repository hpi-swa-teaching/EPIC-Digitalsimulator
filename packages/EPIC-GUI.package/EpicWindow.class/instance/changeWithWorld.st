accessing
changeWithWorld

	changeWithWorld ifNil: [self changeWithWorld: false].
	^ changeWithWorld