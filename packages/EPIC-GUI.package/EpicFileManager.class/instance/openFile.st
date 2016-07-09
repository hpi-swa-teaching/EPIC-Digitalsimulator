services
openFile
	| filetype method |
	filetype := self getSelectedFile filetypeName.
	method := self filetypeSelectors at: filetype.
		
	self window perform: method withArguments: { self getSelectedFile. }