geometry
privateMoveBy: delta
	super privateMoveBy: delta.
	self circuit innerOrigin: self circuit innerOrigin + delta