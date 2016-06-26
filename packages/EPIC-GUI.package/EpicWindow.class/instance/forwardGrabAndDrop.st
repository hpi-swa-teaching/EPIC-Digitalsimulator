initialization
forwardGrabAndDrop
	self prototypeBox scrollPane scroller
		when: #componentGrabbed send: #waitForDragContainer: to: self editorPanel