drawing
drawOn: aCanvas
	aCanvas fillRectangle:  self bounds color: self fillColor.
	aCanvas frameRectangle:  self bounds color: Color black.
	"aCanvas drawString: self portname at: self center - (50@7)."
	"visuellerKabelStummelHack"
	"aCanvas clipBy: self bounds during: 
		[:canvas | self wires do: [:eachWire | eachWire drawOn: canvas]]"