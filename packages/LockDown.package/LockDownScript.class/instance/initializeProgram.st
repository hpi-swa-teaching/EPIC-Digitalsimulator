initialization
initializeProgram

	World submorphs do: [:each | each visible: false].
	self program: (self startingClass startProgram)
	