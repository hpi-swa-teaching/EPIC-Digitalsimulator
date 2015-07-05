as yet unclassified
checkBundleDeletion: aBundle

	((self bundles includes: aBundle) not and: (self wires includesAllOf: aBundle wires)) ifTrue: [
		self bundles add: aBundle]