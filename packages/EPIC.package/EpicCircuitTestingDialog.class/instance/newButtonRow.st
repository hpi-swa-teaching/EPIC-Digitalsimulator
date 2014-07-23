as yet unclassified
newButtonRow
	"Answer a new ok/cancel button row."

	|answer e|
	e := 0@0.
	self buttons do: [:b | e := e max: b minExtent].
	self buttons do: [:b | b extent: e].
	answer := Morph new
		color: Color transparent;
		changeTableLayout;
		cellInset: 8;
		listDirection: #leftToRight;
		listCentering: #bottomRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	self buttons do: [:b | answer addMorphBack: b].
	^answer