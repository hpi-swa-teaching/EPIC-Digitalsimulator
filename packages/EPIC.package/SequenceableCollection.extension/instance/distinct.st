*EPIC
distinct
	| newCollection |
	newCollection := self species new.
	self do: [:each | (newCollection includes: each) ifFalse: [newCollection add: each]].
	^ newCollection