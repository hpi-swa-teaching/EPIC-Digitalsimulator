option menu
openOptionMenu
	| menu |
	menu := MenuMorph new defaultTarget: self.
	self addMenuTitle: menu.
	self addMenuItems: menu.
	menu invokeModal.
	