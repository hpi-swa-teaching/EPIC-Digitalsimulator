panel creation
addEditorBox

	self editorBox: (EpicEditorBox new
		layoutFrame: self editorFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill).
	self editorBox editorPanel commandExecutor: self commandExecutor