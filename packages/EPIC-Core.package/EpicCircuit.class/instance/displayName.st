naming
displayName
	^ (self fullyQualifiedName splitBy: '.') last truncateWithElipsisTo: 5