drawing
drawGraphOn: aCanvas
	| points |
	points := self toPoints: self graph.
	2 to: points size do: [:i |
		aCanvas 
			line: ((points at: i) + self bounds origin) 
			to: ((points at: (i - 1)) + self bounds origin)
			color: Color black]