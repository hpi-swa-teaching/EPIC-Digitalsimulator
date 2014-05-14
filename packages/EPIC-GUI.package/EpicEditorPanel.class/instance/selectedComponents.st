selection
selectedComponents
	^ self components select: [:eachComponent | eachComponent isSelected]