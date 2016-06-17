drawing-support
clipBy: aRectangle during: aBlock
	"Set a clipping rectangle active only during the execution of aBlock.
	Note: In the future we may want to have more general clip shapes - not just rectangles"
	
	| clipGroup oldClipRect oldTargetElement |
	clipGroup := self target clipGroupWith: aRectangle.
	oldTargetElement := self target targetElement.
	oldClipRect := self clipRect.
	
	self target targetElement: clipGroup.
	self clipRect: aRectangle.
	aBlock value: self.
	self clipRect: oldClipRect.
	self target targetElement: oldTargetElement