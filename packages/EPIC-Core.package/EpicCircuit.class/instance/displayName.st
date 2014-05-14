naming
displayName
	^ (self fullyQualifiedName splitBy: '.') last truncate: 5 ellipsis: ' '