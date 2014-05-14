initialization
forwardKeyPressedEvents
	self on: #keyStroke send: #keyPressed: to: self editorPanel
	