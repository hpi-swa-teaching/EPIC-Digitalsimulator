ui creation
addFiletypesTo: aMenu.
	self filetypeSelectors keys do:  [ :filetype | 
		aMenu add: filetype action: [ 
			self activeFiletype: filetype. 
			self filetypeInput label: filetype ] ]