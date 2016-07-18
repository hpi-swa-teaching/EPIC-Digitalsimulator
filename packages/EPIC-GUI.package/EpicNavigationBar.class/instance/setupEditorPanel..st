initialization
setupEditorPanel: anEditorPanel
	self editorPanel: anEditorPanel.
	self editorPanel
		when: #updateNavigationBar send: #updateNavigationBar to: self