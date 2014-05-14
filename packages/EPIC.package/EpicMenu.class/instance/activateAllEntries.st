entry activation
activateAllEntries
	self items
		do: [:eachItem |
			eachItem
				isEnabled: true;
				changed
		]