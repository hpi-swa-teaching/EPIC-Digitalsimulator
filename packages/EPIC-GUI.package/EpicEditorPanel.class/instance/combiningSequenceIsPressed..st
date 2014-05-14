keyboard sequences
combiningSequenceIsPressed: anEvent
	^anEvent keyCharacter = $c and: [anEvent anyModifierKeyPressed not]