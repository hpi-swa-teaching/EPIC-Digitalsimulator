tab manipulation
setActivePanel: aPanel
	self activePanel ifNotNilDo: [:panel | self removePanel: panel].
	self addPanel: aPanel.
	self scrollPane
		resizeScrollBars;
		resizeScroller;
		setScrollDeltas