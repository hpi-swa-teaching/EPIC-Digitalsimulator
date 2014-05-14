selection
selectedWires
	^ self wires
		 select: [:eachWire | eachWire isSelected]