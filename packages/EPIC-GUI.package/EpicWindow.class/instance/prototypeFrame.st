geometry
prototypeFrame
	"Frame für das PrototypePanel. Geht von der oberen linken Ecke des Fensters über
	286px Breite bis zum unteren Rand. 20 Pixel Offset für die Menüleiste."
	^ LayoutFrame 
		fractions: (0@0 corner: 0@1)
		offsets: (0@20 corner: 286@0)