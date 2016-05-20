geometry
editorFrame
	"Frame für das EditorPanel. Erstreckt sich zur unteren rechten Ecke des Fensters.
	Offset von 20 Pixel in den Vertikalen für die Menüleiste."
	^ LayoutFrame 
		fractions: (0@0 corner: 1@1) 
		offsets: ((self class prototypeFrameWidth)@20 corner: 0@0)