deletion testing
testPartialComponentDeletion
	| componentsToDelete |
	componentsToDelete := self halfOfComponents.
	self panel selectComponents: componentsToDelete.
	self panel deleteSelectedComponents.
	
	self panel components do: [:eachComponent |
		self deny: [componentsToDelete includes: eachComponent]
	].
	self panel submorphs do: [:eachSubMorph |
		self deny: [componentsToDelete includes: eachSubMorph]
	].