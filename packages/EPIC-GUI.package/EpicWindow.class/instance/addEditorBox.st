initialization
addEditorBox
	self editorBox: self createEditorBox.
	self editorBox
		layoutFrame: self editorFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill.