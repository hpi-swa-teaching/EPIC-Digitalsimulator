layout
relayout
	| innerBounds |
	innerBounds := self bounds insetBy: 6.
	self circuit 
		layoutPorts: self circuit innerInputPorts 
		onLineFrom: innerBounds topLeft to: innerBounds bottomLeft;
		layoutPorts: self circuit innerOutputPorts 
		onLineFrom: innerBounds topRight to: innerBounds bottomRight