accessing
setEditorPanel: anEditorPanel
	self editorPanel: anEditorPanel.
	self editorPanel
		when: #circuitPushed send: #pushStackButton to: self; 
		when: #circuitPopped send: #popStackButton to: self;
		when: #circuitResetted send: #resetStackButtons to: self.
	self pushStackButton