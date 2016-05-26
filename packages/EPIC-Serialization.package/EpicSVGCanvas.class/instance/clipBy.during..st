as yet unclassified
clipBy: aRectangle during: aBlock
	"Set a clipping rectangle active only during the execution of aBlock.
	Note: In the future we may want to have more general clip shapes - not just rectangles"
	
	| clipGroup oldClipRect |
	clipGroup := self target clipGroupWith: aRectangle.
	self svgTargetElement: clipGroup.
	oldClipRect := self clipRect.
	aBlock value: self.
	self clipRect: oldClipRect.
	self svgTargetElement: self target svgElement