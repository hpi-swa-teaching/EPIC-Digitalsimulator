deploying
deploy

	self initMethodTemplates;
		addPreferences;
		setPreferences;
		disableDockingBarShortcuts.
	self program sticky: true.
	(self program submorphs select: [:submorph | submorph isMemberOf: AlignmentMorph])
		first visible: false