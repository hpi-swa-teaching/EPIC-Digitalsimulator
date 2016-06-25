initialization
on: anEditorPanel with: anComponent
	self defaultTarget: anEditorPanel.
	anComponent optionsOn: self.
	self invokeModal.