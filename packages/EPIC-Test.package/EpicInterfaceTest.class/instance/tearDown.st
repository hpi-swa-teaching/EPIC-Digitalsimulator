running
tearDown

	self window delete.
	World submorphsDo: [:each | each visible: true].
	self resetPreferences.
	World activeHand keyboardListeners: self keyboardListeners.
