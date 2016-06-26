initialization
forwardGrabAndDrop
	self toolbarBox prototypeBox scrollPane scroller
		when: #componentGrabbed send: #waitForDragContainer: to: self editorPanel