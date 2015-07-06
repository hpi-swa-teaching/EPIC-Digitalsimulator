as yet unclassified
deleteAllNonRequiredPackages

	(self confirm: 'Are you sure you want to
delete ALL packages and classes not 
associated with the EPIC-Digitalsimulator?')
	ifTrue: [
		self allNonRequiredPackages do: [ :eachPackage |
			Transcript 
				show: eachPackage;
				show: '; '.
			SystemOrganization removeSystemCategory: eachPackage]]