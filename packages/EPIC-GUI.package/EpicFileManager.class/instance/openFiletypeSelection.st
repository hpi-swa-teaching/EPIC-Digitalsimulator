ui creation
openFiletypeSelection
	| menu |
	menu := MenuMorph new.
	self addFiletypesTo: menu.
	menu invokeModal.
	
		
		