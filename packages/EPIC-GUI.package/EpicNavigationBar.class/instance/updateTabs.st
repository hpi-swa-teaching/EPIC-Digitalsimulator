tab actions
updateTabs
	self tabs removeAll.
	self editorPanel circuits do: [ :circuit | 
		self tabs addLast: (self createTabNamed: circuit fullyQualifiedName 
			at: self tabs size + 1)].
	self tabs addLast: self createNewTabButton.