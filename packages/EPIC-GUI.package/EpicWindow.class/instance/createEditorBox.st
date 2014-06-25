panel creation
createEditorBox
	^ EpicEditorBox new
		layoutFrame: self editorFrame;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself