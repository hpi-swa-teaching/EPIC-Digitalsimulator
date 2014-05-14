accessing
setLineWidth: aNumber
	self
		lineWidth: ((aNumber 
				max: self class minimumLineWidth
			) min: self class maximumLineWidth
		);
		changed