tab actions
updateNavigationBar
	self updateTabs.
	self clearNavigationBar.
	self tabs do: [ :aTab |
		self addMorphBack: aTab ].
	self invalidRect: self bounds.