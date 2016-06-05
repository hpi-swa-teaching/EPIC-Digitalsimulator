as yet unclassified
testBasicTransformGroup

	| transformMatrix |
	transformMatrix := MatrixTransform2x3 new.
	transformMatrix
			a11: 1;
			a21: 2;
			a12: 3;
			a22: 4;
			a13: 5;
			a23: 6.
			
	self document transformGroupWith: transformMatrix.
	self assert: self basicTransformGroup equals: self document asString