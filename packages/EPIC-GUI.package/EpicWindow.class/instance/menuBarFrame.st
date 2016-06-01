geometry
menuBarFrame
	"Frame for the menu bar. Full window width and 20 pixel high."
	^ LayoutFrame 
		fractions: (0@0 corner: 1@0)
		offsets: (0@0 corner: 0@20)