grid
toggleSnapToGrid

	self editorPanel toggleSnapToGrid.
	(self settingsMenu submorphs at: 1) contents: self getSnapToGridLabel.
	(EpicConfiguration instanceFor: self) toggleSnapToGrid