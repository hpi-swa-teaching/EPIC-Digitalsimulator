deploying
deploy

	self program sticky: true.
	(self program submorphs select: [:submorph | submorph isMemberOf: AlignmentMorph])
		first visible: false.
	self program changeWithWorld: true