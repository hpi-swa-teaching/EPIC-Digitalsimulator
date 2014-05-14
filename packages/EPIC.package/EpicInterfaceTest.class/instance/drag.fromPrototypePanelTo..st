dragging/dropping
drag: aMorph fromPrototypePanelTo: aPosition
	| hand |
	hand := self currentHand.
	self window prototypeBox activePanel 
		startDrag: (self dragEventFor: hand to: aMorph position)
		onComponent: aMorph.
	hand
		position: aPosition;
		dropMorphs: (self dropEventFor: hand)