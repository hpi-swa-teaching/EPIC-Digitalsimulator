geometry
configurationFrame
	"Frame for the PrototypePanel.
	Extends to the lower border. 20 pixel offset for the menu bar."
	
	^ LayoutFrame 
		fractions: (0@0.6 corner: 0@1)
		offsets: (0@0 corner: (self class prototypeFrameWidth)@0)