accessing
frameAndFillRectangle: aRectangle fillColor: aFillColor borderWidth: aWidth borderColor: aBorderColor
	"SVG borders are part of the element dimension and Squeak also strokes inside
	--> no adjustment needed"
	
	self target
		fillRectangle: aRectangle
		fillColor: aFillColor
		borderWidth: aWidth
		borderColor: aBorderColor
	