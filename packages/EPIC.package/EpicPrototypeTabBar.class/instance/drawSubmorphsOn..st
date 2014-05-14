drawing
drawSubmorphsOn: aCanvas 
	aCanvas clipBy: self bounds during: [:canvas | super drawSubmorphsOn: canvas]