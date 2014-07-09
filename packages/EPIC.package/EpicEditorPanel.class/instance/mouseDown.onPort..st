event handling
mouseDown: anEvent onPort: aPort
	anEvent yellowButtonPressed ifTrue: [
		self	 showContextMenu: anEvent ForPort: aPort. ]