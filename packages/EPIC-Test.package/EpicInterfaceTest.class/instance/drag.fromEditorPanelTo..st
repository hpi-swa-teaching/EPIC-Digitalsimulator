dragging/dropping
drag: aMorph fromEditorPanelTo: aPosition
	| hand |
	hand := self currentHand.
	self editorPanel 
		startDrag: (self dragEventFor: hand to: aMorph position)
		onPort: aMorph.
	self editorPanel
		mouseMove: (self dragEventFor: hand to: self editorPanel center)
		onPort: aMorph.
	self editorPanel
		mouseMove: (self dragEventFor: hand to: 0@0)
		onPort: aMorph.
	hand position: aPosition.
	self editorPanel
		mouseUp: (self dropEventFor: hand)
		onPort: aMorph