deploying
deploy

	self initMethodTemplates.
	self addPreferences.
	self setPreferences.
	self disableDockingBarShortcuts.
	self program sticky: true.
	(self program submorphs select: [:submorph | submorph isMemberOf: AlignmentMorph])
		first visible: false.