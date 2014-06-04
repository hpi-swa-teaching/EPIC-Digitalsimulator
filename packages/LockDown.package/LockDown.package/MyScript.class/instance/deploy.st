as yet unclassified
deploy

	World submorphs do: [:each | each visible: false].
	self program: (EPIC startProgram).
	self program sticky: true.
	"self startStepping."