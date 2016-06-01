geometry
editorFrame
	"Frame for the EditorPanel. Extends to the lower right corner of the window.
	Offset of 20 pixel vertically for the menu bar."
	^ LayoutFrame 
		fractions: (0@0 corner: 1@1) 
		offsets: ((self class prototypeFrameWidth)@20 corner: 0@0)