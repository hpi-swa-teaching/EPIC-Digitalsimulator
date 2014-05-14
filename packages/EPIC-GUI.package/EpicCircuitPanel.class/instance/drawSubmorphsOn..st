drawing
drawSubmorphsOn: aCanvas
	super drawSubmorphsOn: (ClippingCanvas canvas: aCanvas clipRect: self bounds)