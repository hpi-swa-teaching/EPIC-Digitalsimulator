drawing-text
drawString: aString from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: aColor
	| clipGroup oldClipRect oldTargetElement |
	clipGroup := self target clipGroupWith: boundsRect.
	oldTargetElement := self target targetElement.
	oldClipRect := self clipRect.
	
	self target targetElement: clipGroup.
	self clipRect: boundsRect.
	
	self drawString: aString from: 1 to: aString size at: boundsRect topLeft font: fontOrNil color: aColor.
	
	self clipRect: oldClipRect.
	self target targetElement: oldTargetElement