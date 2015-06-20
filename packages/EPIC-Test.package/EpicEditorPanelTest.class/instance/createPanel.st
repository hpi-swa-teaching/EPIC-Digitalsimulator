running
createPanel

	self panel: EpicEditorPanel new.
	self panel commandManager: EpicCommandExecutor new
	
	