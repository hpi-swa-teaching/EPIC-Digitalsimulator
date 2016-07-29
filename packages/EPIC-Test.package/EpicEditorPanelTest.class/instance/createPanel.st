running
createPanel

	self panel: EpicEditorPanel new.
	self panel commandExecutor: EpicCommandExecutor new.
	self panel 
		circuit: EpicCustomCircuit new;
		postOpenInitialize.
	
	
	