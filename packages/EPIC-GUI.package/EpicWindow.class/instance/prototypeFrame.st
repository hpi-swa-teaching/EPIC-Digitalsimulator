geometry
prototypeFrame
	"Frame für das PrototypePanel.
	Erstreckt sich bis zum unteren Rand. 20 Pixel Offset für die Menüleiste."
	^ LayoutFrame 
		fractions: (0@0 corner: 0@1)
		offsets: (0@20 corner: (self class prototypeFrameWidth)@0)