simulation
restoredInputValues
	^ self portEvents 
		inject: self affectedComponent inputValues 
		into: [:inputValues :eachPortEvent | eachPortEvent restore: inputValues]