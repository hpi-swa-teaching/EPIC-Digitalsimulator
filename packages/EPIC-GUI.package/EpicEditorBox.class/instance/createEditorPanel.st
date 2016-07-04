initialization
createEditorPanel
	self 
		editorPanel: EpicEditorPanel  new;
		addMorph: self scrollPane fullFrame: self panelFrame.
	self content addMorph: self editorPanel.
	self editorPanel
		width: 1000;
		height: 1000
	