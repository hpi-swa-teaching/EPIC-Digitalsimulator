execution
createStackButtonNamed: aString
	| currentStackSize |
	currentStackSize := self currentStackSize.
	^ (PluggableButtonMorphPlus new
		label: '      ', aString;
		action: [self goBackUntil: currentStackSize];
		yourself)
		addMorphBack:
		(PluggableButtonMorphPlus new
		label: 'x';
		action: [self popStackButton];
		yourself)