geometry
editorFrame
	"Frame für das EditorPanel. Geht bei 40% der Fensterbreite los und erstreckt sich
	von dort aus zur unteren rechten Ecke des Fensters. Offset von 20 Pixel in den
	Vertikalen für die Menüleiste."
	^ LayoutFrame 
		fractions: (0.4@0 corner: 1@1) 
		offsets: (0@20 corner: 0@0)