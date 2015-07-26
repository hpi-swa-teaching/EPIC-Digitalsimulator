accessing
popStackButton
	self 
		removeMorph: self submorphs last;
		removeOptionalSeperator;
		disableCurrentButton