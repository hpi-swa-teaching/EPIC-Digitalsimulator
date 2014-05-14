initialization
setClonedComponent: aComponent
		| newComponent |
		newComponent := aComponent duplicate.
		newComponent position: aComponent position.
		self component: newComponent;
			bounds: aComponent bounds;
			position: aComponent position;
			addMorph: newComponent