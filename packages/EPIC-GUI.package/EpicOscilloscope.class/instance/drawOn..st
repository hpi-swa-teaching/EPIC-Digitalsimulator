initialization
drawOn: aCanvas 
	| level startPoint endPoint |
	aCanvas drawString: self port label at: self position + (0@(self extent y / 2 - 5) rounded).
	1 to: self values size do: [:index | (self values at: index) ifTrue:[ level:= -10 ] ifFalse: [ level := 10 ].
					startPoint := ((index - 1 * EpicOscilloscope paintedIntervalLength) min: self extent x)@(self extent y / 2 +level) rounded.
					endPoint := ((index * EpicOscilloscope paintedIntervalLength) min: self extent x)@(self extent y / 2 +level) rounded.
					aCanvas
						line: (self position + startPoint)
						to: (self position + endPoint)
						width: 1
						color: Color darkGray. ]