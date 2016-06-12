option menu
openComponentOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self
		addUndoItem: menu;
		addHelpItem: menu;
		addCopyPasteItem: menu;
		addComponentItems: menu;
		addDeleteItem: menu.
	menu invokeModal.