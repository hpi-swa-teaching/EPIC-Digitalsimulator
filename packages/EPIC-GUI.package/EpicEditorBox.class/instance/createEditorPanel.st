initialization
createEditorPanel
	self 
		editorPanel: EpicEditorPanel  new;
		addMorph: self scrollPane fullFrame: self panelFrame.
	self content addMorph: self editorPanel.
	self editorPanel extent: self defaultEditorsize.
	self content color: Color darkGray