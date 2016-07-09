services
saveFile
	| filePath method |
	filePath := self saveFilePath.
	method := self filetypeSelectors at: self activeFiletype.
		
	self window perform: method withArguments: { FileStream newFileNamed: filePath }