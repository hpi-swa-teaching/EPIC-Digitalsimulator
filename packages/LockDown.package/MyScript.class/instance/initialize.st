as yet unclassified
initialize

	World submorphs do: [:each | each visible: false].
	self program: (EPIC startProgram).
	self program sticky: true.
	(self program submorphs select: [:submorph | submorph isMemberOf: AlignmentMorph])
		first visible: false.