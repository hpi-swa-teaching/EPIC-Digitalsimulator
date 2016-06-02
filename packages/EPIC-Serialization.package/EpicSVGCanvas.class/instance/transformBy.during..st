accessing
transformBy: aDisplayTransform during: aBlock

	| transformGroup oldTargetElement |
	transformGroup := self target tranformGroupWith: aDisplayTransform.
	oldTargetElement := self target targetElement.
	
	self target targetElement: transformGroup.
	aBlock value: self.
	
	self target targetElement: oldTargetElement.
	