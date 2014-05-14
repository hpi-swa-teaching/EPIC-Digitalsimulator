selection
selectedObjects
	^ self componentsAndWires
		 select: [:eachComponentOrWire | eachComponentOrWire isSelected]