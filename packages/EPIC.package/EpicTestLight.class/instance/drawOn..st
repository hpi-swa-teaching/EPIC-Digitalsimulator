drawing
drawOn: aCanvas

	self owner setTestLight.

	aCanvas fillRectangle: self bounds color: Color darkGray.
	aCanvas frameRectangle: self bounds color: Color black. 
	
	self active ifTrue: [
			self passed ifTrue: [
					aCanvas fillOval: (self position + (5@5) corner: self position +(35@35)) color: Color gray. 
					aCanvas fillOval: (self position + (5@45) corner: self position +(35@75)) color: Color green.
				] ifFalse: [
					aCanvas fillOval: (self position +(5@5) corner: self position +(35@35)) color: Color red. 
					aCanvas fillOval: (self position + (5@45) corner: self position +(35@75)) color: Color gray.
				]
		] ifFalse: [
			aCanvas fillOval: (self position + (5@5) corner: self position +(35@35)) color: Color gray. 
			aCanvas fillOval: (self position + (5@45) corner: self position +(35@75)) color: Color gray.
		]