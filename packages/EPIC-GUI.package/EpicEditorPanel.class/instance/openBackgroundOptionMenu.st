option menu
openBackgroundOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self
		addMenuTitle: menu;
		addUndoItem: menu;
		addCopyPasteItem: menu;
		addDeleteItem: menu.
	menu invokeModal.
	