selecting
createSelection: aCollectionOfComponents
	^ aCollectionOfComponents select: [:eachComponent |
			self bounds containsRect: eachComponent bounds
		]