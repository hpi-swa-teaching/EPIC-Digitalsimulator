selection
deleteSelectedComponents
	self selectedObjects 
		do: [:eachObject | eachObject delete]