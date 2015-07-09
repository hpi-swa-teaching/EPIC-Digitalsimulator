as yet unclassified
deleteAllAndEnterLockdown

	self deleteAllNonRequiredPackages.
	EpicLockDownScript new lockDownAndShowSaveDialog: true